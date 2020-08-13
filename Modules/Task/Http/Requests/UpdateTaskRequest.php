<?php

namespace Modules\Task\Http\Requests;

use App\Rules\EstimatedHours;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

/**
 * Class UpdateTaskRequest
 *
 * The Validation Rules is Defined for Task.
 *
 * PHP version 7.1.3
 *
 * @category  PM
 * @package   Modules\Task
 * @author    Vipul Patel <vipul@chetsapp.com>
 * @copyright 2019 Chetsapp Group
 * @license   Chetsapp Private Limited
 * @version   Release: @1.0@
 * @link      http://chetsapp.com
 * @since     Class available since Release 1.0
 */
class UpdateTaskRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules(Request $request)
    {
        $rules = [
            'name'  => [
                'required',
                'max:'.config('core.max_length'),
                Rule::unique(config('core.acl.task_table'))->where(
                    function ($query) {
                        return $query->whereNotIn('id', [$this->request->get('id')])
                            ->where('project_id', $this->request->get('project_id'))
                            ->where('deleted_at', null);
                    }
                ),
            ],
            'project_id' => 'required',
            'planned_start_date' => 'nullable|date',
            'planned_end_date' => 'nullable|date|after_or_equal:planned_start_date',
            'task_start_date' => 'nullable|date',
            'task_end_date' => 'nullable|date|after_or_equal:task_start_date',
            'status' => 'required',
            'priority' => 'required',
            'estimated_hours' => ['nullable',new EstimatedHours],
        ];

        return $rules;
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
}
