<?php

namespace Modules\Task\Http\Requests;

use App\Rules\EstimatedHours;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class ConvertTaskRequest extends FormRequest
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
                        return $query->where('project_id', $this->request->get('project_id'))
                            ->where('deleted_at', null);
                    }
                ),
            ],
            'start_date' => 'nullable|date',
            'end_date' => 'nullable|date|after_or_equal:start_date',
            'status' => 'required',
            'estimated_hours' => ['nullable',new EstimatedHours]
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
