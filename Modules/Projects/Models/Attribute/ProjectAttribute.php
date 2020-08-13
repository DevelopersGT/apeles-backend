<?php
namespace Modules\Projects\Models\Attribute;

use Illuminate\Support\Facades\Auth;

/**
 * Trait ProjectAttribute
 *
 * The Attribute is Defined for Project.
 *
 * PHP version 7.1.3
 *
 * @category  PM
 * @package   Modules\Projects
 * @author    Vipul Patel <vipul@chetsapp.com>
 * @copyright 2019 Chetsapp Group
 * @license   Chetsapp Private Limited
 * @version   Release: @1.0@
 * @link      http://chetsapp.com
 * @since     Class available since Release 1.0
 */
trait ProjectAttribute
{
    /**
     * This mutator automatically convert the first character of each word to uppercase. 
     *
     * @param String $value [Department name]
     *
     * @return String
     */
    public function setProjectNameAttribute($value)
    {
        $this->attributes['project_name'] = trim(ucwords($value));
    }

    /**
     * This mutator automatically set start date format.
     *
     * @param String $value [Start date]
     *
     * @return String
     */
    public function setStartDateAttribute($value)
    {
        $this->attributes['start_date'] = date('Y-m-d', strtotime($value));
    }

    /**
     * This mutator automatically set end date format.
     *
     * @param String $value [End date]
     *
     * @return String
     */
    public function setEndDateAttribute($value)
    {
        $this->attributes['end_date'] = date('Y-m-d', strtotime($value));
    }
}
