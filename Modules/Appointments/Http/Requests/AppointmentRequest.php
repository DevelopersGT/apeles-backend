<?php

namespace Modules\Appointments\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

/**
 * Class AppointmentRequest
 *
 * Appointment create and and update validation rules.
 *
 * PHP version 7.1.3
 *
 * @category  CRM
 * @package   Modules\Appointment
 * @author    Vipul Patel <vipul@chetsapp.com>
 * @copyright 2019 Chetsapp Group
 * @license   Chetsapp Private Limited
 * @version   Release: @1.0@
 * @link      http://chetsapp.com
 * @since     Class available since Release 1.0
 */
class AppointmentRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        switch ($this->method()) {
        case 'POST':
            return [
                'title' => 'required|max:100',
                'provider_id' => 'required',
                'attendees' => 'required|max:100',
                'start_date_time' => 'required',
                'end_date_time' => 'required',
            ];
        case 'PUT':
        case 'PATCH':
            return [
                'title' => 'required|max:100',
                'provider_id' => 'required',
                'attendees' => 'required|max:100',
                'start_date_time' => 'required',
                'end_date_time' => 'required',
            ];
        default:
            break;
        }
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
