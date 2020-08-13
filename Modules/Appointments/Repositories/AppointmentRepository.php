<?php

namespace Modules\Appointments\Repositories;

use Auth;
use DB;
use Modules\Appointments\Models\Appointment;
use Modules\Helper\Helpers\EmailsHelper;
use Modules\Provider\Models\Provider;
use Modules\User\Models\User\User;

/**
 * Class AppointmentRepository
 *
 * Appointment CRUD functionality.
 *
 * Appointment create, update, delete and view.
 *
 * PHP version 7.1.3
 *
 * @category  CRM
 * @package   Modules\Appointments
 * @author    Vipul Patel <vipul@chetsapp.com>
 * @copyright 2019 Chetsapp Group
 * @license   Chetsapp Private Limited
 * @version   Release: @1.0@
 * @link      http://chetsapp.com
 * @since     Class available since Release 1.0
 */
class AppointmentRepository
{
    protected $emailRepo;

    /**
     * Instantiate a new repository instance.
     *
     * @param EmailsHelper     $emailRepo  [Object]
     *
     * @return void
     */
    public function __construct(EmailsHelper $emailRepo) {
        $this->emailRepo = $emailRepo;
    }

    /**
     * Display a listing of the resource.
     *
     * @return object
     */
    public function findAll($request)
    {
        $user = Auth::user();
        $status = $request->input("status");
        $selectd_date = $request->input("date");
        $month = date("m",strtotime($selectd_date));
        $year = date("Y",strtotime($selectd_date));

        $appointment = Appointment::whereMonth('start_date_time', $month)->whereYear('start_date_time', $year);
        if($status != 0){
            $appointment->where("status",$status);
        }
        if ($user->is_client) {
            $appointment->where(function ($query) use ($user) {
                $query->where('user_id', $user->id)->orWhere('client_id', $user->id);
            });
        } elseif ( !$user->hasRole('admin') || !$user->is_super_admin ) {
            $appointment->where('user_id', $user->id);
        }

        $appointment = $appointment->get();

        $statusCount = $this->getAppointmentCount($month, $year);

        return array(
            "statusCount"     => $statusCount,
            "data"            => $appointment
        );
    }

    /**
     * Get all appointment status wise count.
     *
     * @return json
     */
    public function getAppointmentCount($month, $year)
    {
        $user = Auth::user();
        $appointment = Appointment::select('status', DB::raw('count(*) as total'))
            ->whereMonth('start_date_time', $month)
            ->whereYear('start_date_time', $year);

        if ($user->is_client) {
            $appointment->where(function ($query) use ($user) {
                $query->where('user_id', $user->id)->orWhere('client_id', $user->id);
            });
        } elseif ( !$user->hasRole('admin') || !$user->is_super_admin ) {
            $appointment->where('user_id', $user->id);
        }

        $appointment = $appointment->groupBy('status')->get();

        for ($i=0; $i < 5 ; $i++) { 
            $result[$i] = 0;
        }
        foreach ($appointment as $key => $value) {
            $result[$value->status] = $value->total;
            $result[0] = $result[0] + $value->total;
        }

        return $result;
    }

    /**
     * Display a listing of the resource.
     *
     * @param Request $request [Request for get appointments]
     *
     * @return Object
     */
    public function getAllAppointments($request)
    {
        $user = Auth::user();
        $appointment_table = config('core.acl.appointment_table');
        $providers_table = config('core.acl.providers_table');

        $columns = array(
            0 => $appointment_table.'.id',
            1 => $appointment_table.'.title',
            2 => $providers_table.'.firstname',
            3 => $appointment_table.'.start_date_time',
            4 => $appointment_table.'.end_date_time',
            5 => $appointment_table.'.location',
            6 => $appointment_table.'.status'
        );

        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');

        $appointment =  Appointment::select(
            $appointment_table.'.*',
            $providers_table.'.firstname as provider_firstname',
            $providers_table.'.lastname as provider_lastname'
        )
        ->join($providers_table, $providers_table.'.id','=',$appointment_table.'.provider_id');

        if ($user->is_client) {
            $appointment->where(function ($query) use ($user) {
                $query->where($appointment_table.'.user_id', $user->id)
                    ->orWhere($appointment_table.'.client_id', $user->id);
            });
        } elseif ( !$user->hasRole('admin') || !$user->is_super_admin ) {
            $appointment->where($appointment_table.'.user_id', $user->id);
        }

        $status = $request->get('status');
        if ($status) {
            $appointment->where($appointment_table.'.status', $status);
        }

        $totalData = $appointment->count();
        $totalFiltered = $totalData;

        // --
        // Search
        if (!empty($request->input('search.value'))) {
            $search = $request->input('search.value');
            $appointment = $appointment->where(
                function ($query) use ($search, $appointment_table) {
                    $query->where($appointment_table.'.generated_id', 'LIKE', "%{$search}%")
                        ->orWhere($appointment_table.'.title', 'LIKE', "%{$search}%")
                        ->orWhere($appointment_table.'.start_date_time', 'LIKE', "%{$search}%")
                        ->orWhere($appointment_table.'.end_date_time', 'LIKE', "%{$search}%")
                        ->orWhere($appointment_table.'.location', 'LIKE', "%{$search}%")
                        ->orWhere($appointment_table.'.status', 'LIKE', "%{$search}%")
                        ->orWhere(
                            DB::raw('concat($providers_table.firstname," ",$providers_table.lastname)'),
                            'LIKE',
                            "%{$search}%"
                        );
                }
            );

            $totalFiltered = $appointment->count();
        }

        $data = $appointment->offset($start)
            ->limit($limit)
            ->orderBy($order, $dir)
            ->get();

        $statusCount = $this->_getAppointmentCountForList();

        return array(
            "draw"            => intval($request->input('draw')),
            "recordsTotal"    => intval($totalData),
            "recordsFiltered" => intval($totalFiltered),
            "statusCount"     => $statusCount,
            "data"            => $data
        );
    }

    /**
     * Get all appointment status wise count for list.
     *
     * @return json
     */
    private function _getAppointmentCountForList()
    {
        $user = Auth::user();
        $appointment = Appointment::select('status', DB::raw('count(*) as total'));

        if ($user->is_client) {
            $appointment->where(function ($query) use ($user) {
                $query->where('user_id', $user->id)->orWhere('client_id', $user->id);
            });
        } elseif ( !$user->hasRole('admin') || !$user->is_super_admin ) {
            $appointment->where('user_id', $user->id);
        }

        $appointment = $appointment->groupBy('status')->get();

        for ($i=0; $i < 5 ; $i++) { 
            $result[$i] = 0;
        }
        foreach ($appointment as $key => $value) {
            $result[$value->status] = $value->total;
            $result[0] = $result[0] + $value->total;
        }

        return $result;
    }

    /**
     * Display the specified resource in storage.
     *
     * @param Int $id [Row id]
     *
     * @return Object
     */
    public function findById($id)
    {
        return Appointment::with([
            'clients' => function ($query) {
                $query->select('id', 'firstname', 'lastname', 'avatar');
            },
            'requesters' => function ($query) {
                $query->select('id', 'firstname', 'lastname');
            },
            'providers' => function ($query) {
                $query->select('id', 'firstname', 'lastname');
            }
        ])->findOrFail($id);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request [Params for create appointment]
     *
     * @return boolean
     */
    public function create($request)
    {
        $user = Auth::user();
        $input = $request->all();
        $appointment = new Appointment;
        $selectd_date = date("Y-m-d",strtotime($input["start_date_time"]));
        $booked_appointments = Appointment::where("provider_id",$input["provider_id"])
            ->whereDate('start_date_time', '=', $selectd_date)
            ->whereNotIn('status', [4])
            ->get();

        $result = $this->_validate_date($input,$booked_appointments);
        if($result['is_booked']){
            return $result;
        }
        $input['user_id'] = $user->id;
        $input['generated_id'] = $this->_getGeneratedId();
        $appointment->fill($input);
        if ($appointment->save()) {
            // --
            // Add activities
            createUserActivity(
                Appointment::MODULE_NAME,
                $appointment->id,
                $request->method(),
                $appointment->email,
                $request->ip()
            );
            // --
            $mailUser = [];
            array_push($mailUser, User::select('id', 'firstname', 'lastname', 'email')->find($user->id));
            array_push($mailUser, Provider::select('id', 'firstname', 'lastname', 'email')->find($input['provider_id']));
            if ($input['client_id']) {
                array_push($mailUser, User::select('id', 'firstname', 'lastname', 'email')->find($input['client_id']));
            }
            $this->emailRepo->sendAppointmentEmail($mailUser, $appointment);
            return true;
        } else {
            return false;
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request [Params for update appointment]
     * @param int     $id      [Row id]
     *
     * @return object
     */
    public function update($request, $id)
    {
        $input = $request->all();
        $selectd_date = date("Y-m-d",strtotime($input["start_date_time"]));
        $booked_appointments = Appointment::where("provider_id",$input["provider_id"])
            ->whereDate('start_date_time', '=', $selectd_date)
            ->whereNotIn('status', [4])
            ->whereNotIn('id', [$id])
            ->get();

        $result = $this->_validate_date($input,$booked_appointments);
        if($result['is_booked']){
            return $result;
        }

        $appointment = Appointment::find($id);
        $appointment->fill($input);
        if ($appointment->save()) {
            // --
            // Add activities
            createUserActivity(
                Appointment::MODULE_NAME,
                $appointment->id,
                $request->method(),
                $appointment->email,
                $request->ip()
            );
            // --
            $mailUser = [];
            array_push($mailUser, User::select('id', 'firstname', 'lastname', 'email')->find($appointment->user_id));
            array_push($mailUser, Provider::select('id', 'firstname', 'lastname', 'email')->find($input['provider_id']));
            if ($input['client_id']) {
                array_push($mailUser, User::select('id', 'firstname', 'lastname', 'email')->find($input['client_id']));
            }
            $this->emailRepo->sendAppointmentEmail($mailUser, $appointment);
            return true;
        } else {
            return false;
        }
    }

    private function _validate_date($input,$booked_appointments){
        foreach ($booked_appointments as $key => $value) {

            $selected_start_time = date("H:i",strtotime($input["start_date_time"]));
            $selected_end_time = date("H:i",strtotime($input["end_date_time"]));
            $chkStartTime = strtotime($selected_start_time);
            $chkEndTime = strtotime($selected_end_time);

            $start_time = date("H:i",strtotime($value->start_date_time));
            $end_time = date("H:i",strtotime($value->end_date_time));
            $startTime = strtotime($start_time);
            $endTime   = strtotime($end_time);

            if($chkStartTime > $startTime && $chkEndTime < $endTime)
            {   #-> Check time is in between start and end time
                return ["is_booked" => true, "message" => "Time is in between start and end time"];
            }elseif(($chkStartTime > $startTime && $chkStartTime < $endTime) || ($chkEndTime > $startTime && $chkEndTime < $endTime))
            {   #-> Check start or end time is in between start and end time
                return ["is_booked" => true, "message" => "Check start or end Time is in between start and end time"];
            }elseif($chkStartTime==$startTime || $chkEndTime==$endTime)
            {   #-> Check start or end time is at the border of start and end time
                return ["is_booked" => true, "message" => "Check start or end Time is at the border of start and end time"];
            }elseif($startTime > $chkStartTime && $endTime < $chkEndTime)
            {   #-> start and end time is in between  the check start and end time.
                return ["is_booked" => true, "message" => "Start and end Time is overlapping  Check start and end time"];
            }
        }
        return ["is_booked" => false];   
    }

    /**
     * Changed appointment status.
     *
     * @param Request $request [Request for change appointment status]
     * @param Int     $id      [Row id]
     *
     * @return Object
     */
    public function changeStatus($request, $id)
    {
        $input['status'] = $request->get('status');
        $appointment = Appointment::findOrFail($id);
        if ($appointment) {
            $appointment->fill($input)->save();
            // --
            // Add activity
            createUserActivity(
                Appointment::MODULE_NAME,
                $appointment->id,
                $request->method(),
                $appointment->title,
                $request->ip(),
                $appointment->id,
                true
            );
        }
        return true;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Request $request [Params for delete appointment]
     * @param int     $id      [Row id]
     *
     * @return boolean
     */
    public function delete($request, $id)
    {
        $appointment = Appointment::find($id);

        if ($appointment) {
            $appointment->delete();
            // --
            // Add activities
            createUserActivity(
                Appointment::MODULE_NAME,
                $appointment->id,
                $request->method(),
                $appointment->email,
                $request->ip()
            );
            return true;
        } else {
            return false;
        }
    }

    /**
     * Get all slot for given provider and start date.
     *
     * @return Response
     */
    public function getAllBookedTimeSlot($id, $date)
    {
        $selectd_date = date("Y-m-d",strtotime($date));
        return Appointment::where("provider_id", $id)
            ->whereDate('start_date_time', '=', $selectd_date)
            ->get();
    }

    /**
     * Retrive generated id.
     *
     * @return String
     */
    private function _getGeneratedId()
    {
        return 'A'.str_pad(nextAutoID(config('core.acl.appointment_table')), 5, "0", STR_PAD_LEFT);
    }
}
