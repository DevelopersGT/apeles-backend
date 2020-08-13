<?php

namespace Modules\Helper\Repositories;

use Auth;
use Illuminate\Support\Facades\DB;
use Modules\Defect\Models\Defect;
use Modules\Incident\Models\Incident;
use Modules\Projects\Models\Project;
use Modules\Task\Models\Task;

/**
 * Class PmHelperRepository
 *
 * PM Helper functions
 *
 * PHP version 7.1.3
 *
 * @category  Helper
 * @package   Modules\Helper
 * @author    Vipul Patel <vipul@chetsapp.com>
 * @copyright 2019 Chetsapp Group
 * @license   Chetsapp Private Limited
 * @version   Release: @1.0@
 * @link      http://chetsapp.com
 * @since     Class available since Release 1.0
 */
class PmHelperRepository
{
    /**
     * Get data for dashboard.
     *
     * @param Request $request [Request for get dashboard data]
     *
     * @return Response
     */
    public function getDashboardData($request)
    {
        $user = Auth::user();
        $length = $request->get('length');

        if ($user->is_client) {
            $data['total_projects'] = $user->projects()->whereNotIn('status', [4,5])->count();

            $projects = $user->projects()->with([
                'users' => function ($query) {
                    $query->select('id', 'firstname', 'lastname', 'avatar')->where('edit', 1);
                }
            ]);
        } else {
            $data['total_projects'] = $user->projects(true)->whereNotIn('status', [4,5])->count();

            $projects = $user->projects(true)->with([
                'users' => function ($query) {
                    $query->select('id', 'firstname', 'lastname', 'avatar')->where('edit', 1);
                }
            ]);
        }

        $data['pending_tasks'] = Task::where(function ($query) use ($user) {
            $query->where('assign_to', $user->id)->orWhere('created_by', $user->id);
        })->whereNotIn('status', [5,6])->count();
        $data['pending_defects'] = Defect::where(function ($query) use ($user) {
            $query->where('assign_member', $user->id)->orWhere('create_user_id', $user->id);
        })->whereNotIn('status', [2,5])->count();
        $data['pending_incidents'] = Incident::where(function ($query) use ($user) {
            $query->where('assign_to', $user->id)->orWhere('create_user_id', $user->id);
        })->whereNotIn('status', [4,7])->count();

        // Project count by status.
        $data['project_count_by_status'] = $this->_getProjectCount($user);

        // Task count by status.
        if ($user->hasRole('admin') || $user->is_super_admin) {
            $data['task_count_by_status'] = Task::select('status', DB::raw('count(*) as total'))
                ->groupBy('status')
                ->get();
        }else{
            $data['task_count_by_status'] = Task::select('status', DB::raw('count(*) as total'))
                ->where('assign_to', $user->id)
                ->groupBy('status')
                ->get();
        }

        // Task, Defect, Incident count by month.
        $data['count_by_month'] = $this->_getCountByMonths();

        // Projects.
        $data['projects'] = $projects->whereNotIn('status', [4, 5])->orderBy('created_at', 'DESC')
            ->take($length)
            ->get();

        // Tasks.
        $data['tasks'] = Task::with([
            'assignUser' => function ($query) {
                $query->select('id', 'firstname', 'lastname', 'avatar');
            }
        ])
        ->where(function ($query) use ($user) {
            $query->where('assign_to', $user->id)->orWhere('created_by', $user->id);
        })
        ->whereNotIn('status', [5,6])
        ->orderBy('created_at', 'DESC')
        ->take($length)
        ->get();

        // Defects.
        $data['defects'] = Defect::with([
            'assignUser' => function ($query) {
                $query->select('id', 'firstname', 'lastname', 'avatar');
            }
        ])
        ->where(function ($query) use ($user) {
            $query->where('assign_member', $user->id)->orWhere('create_user_id', $user->id);
        })
        ->whereNotIn('status', [2,5])
        ->orderBy('created_at', 'DESC')
        ->take($length)
        ->get();

        // Incidents.
        $data['incidents'] = Incident::with([
            'assignUser' => function ($query) {
                $query->select('id', 'firstname', 'lastname', 'avatar');
            }
        ])
        ->where(function ($query) use ($user) {
            $query->where('assign_to', $user->id)->orWhere('create_user_id', $user->id);
        })
        ->whereNotIn('status', [4,7])
        ->orderBy('created_at', 'DESC')
        ->take($length)
        ->get();
        
        return $data;
    }

    /**
     * Get project count by status.
     *
     * @return json
     */
    public function _getProjectCount($user)
    {
        if ($user->hasRole('admin') || $user->is_super_admin) {
            $result['all'] = Project::whereIn('status', [1,2,3,4,5])->count();
            if ($result['all'] > 0) {
                $result['open'] = Project::where('status', 1)->count();
                $result['in_progress'] = Project::where('status', 2)->count();
                $result['on_hold'] = Project::where('status', 3)->count();
                $result['cancel'] = Project::where('status', 4)->count();
                $result['completed'] = Project::where('status', 5)->count();
            }
        }else{
            $result['all'] = $user->projects()->whereIn('status', [1,2,3,4,5])->count();
            if ($result['all'] > 0) {
                $result['open'] = $user->projects()->where('status', 1)->count();
                $result['in_progress'] = $user->projects()->where('status', 2)->count();
                $result['on_hold'] = $user->projects()->where('status', 3)->count();
                $result['cancel'] = $user->projects()->where('status', 4)->count();
                $result['completed'] = $user->projects()->where('status', 5)->count();
            }
        }
        return $result;
    }

    /**
     * Get task, defect, incident count by month for dashboard chart.
     *
     * @return Response
     */
    public function _getCountByMonths()
    {
        $user = Auth::user();
        $result = [];
        for ($i=1; $i < 13; $i++) {
            $month = date('n', mktime(0, 0, 0, $i, 1));
            $result[$month] = [
                "tasks" => 0,
                "defects" => 0,
                "incidents" => 0
            ];
        }
        
        $tasks = Task::select(
            DB::raw('count(id) as `count`'),
            DB::raw('YEAR(task_start_date) year'),
            DB::raw('MONTH(task_start_date) month')
        );

        $defects = Defect::select(
            DB::raw('count(id) as `count`'),
            DB::raw('YEAR(start_date) year'),
            DB::raw('MONTH(start_date) month')
        );

        $incidents = Incident::select(
            DB::raw('count(id) as `count`'),
            DB::raw('YEAR(start_date) year'),
            DB::raw('MONTH(start_date) month')
        );

        if ($user->hasRole('admin') || $user->is_super_admin) {
            
        }else{
            $tasks->where('assign_to', $user->id);
            $defects->where('assign_member', $user->id);
            $incidents->where('assign_to', $user->id);
        }

        // Tasks
        $tasks = $tasks->whereYear('task_start_date', date('Y'))
            ->groupBy(DB::raw('YEAR(task_start_date)'), DB::raw('MONTH(task_start_date)'))
            ->get();
        foreach ($tasks as $key => $value) {
            $result[$value->month]['tasks'] = $value->count;
        }

        // Defects
        $defects = $defects->whereYear('start_date', date('Y'))
            ->groupBy(DB::raw('YEAR(start_date)'), DB::raw('MONTH(start_date)'))
            ->get();
        foreach ($defects as $key => $value) {
            $result[$value->month]['defects'] = $value->count;
        }

        // Incidents
        $incidents = $incidents->whereYear('start_date', date('Y'))
            ->groupBy(DB::raw('YEAR(start_date)'), DB::raw('MONTH(start_date)'))
            ->get();
        foreach ($incidents as $key => $value) {
            $result[$value->month]['incidents'] = $value->count;
        }

        return $result;
    }
}
