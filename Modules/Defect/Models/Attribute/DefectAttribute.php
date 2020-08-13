<?php

namespace Modules\Defect\Models\Attribute;

/**
 * Trait DefectAttribute
 *
 * The Attribute is Defined for Defect.
 *
 * PHP version 7.1.3
 *
 * @category  PM
 * @package   Modules\Defect
 * @author    Vipul Patel <vipul@chetsapp.com>
 * @copyright 2019 Chetsapp Group
 * @license   Chetsapp Private Limited
 * @version   Release: @1.0@
 * @link      http://chetsapp.com
 * @since     Class available since Release 1.0
 */
trait DefectAttribute
{
    /**
     * This mutator automatically set start date format.
     *
     * @param Date $value [Start date]
     *
     * @return Date
     */
    public function setStartDateAttribute($value)
    {
        $this->attributes['start_date'] = ($value == null) ? null : date('Y-m-d', strtotime($value));
    }

    /**
     * This mutator automatically set end date format.
     *
     * @param Date $value [End date]
     *
     * @return Date
     */
    public function setEndDateAttribute($value)
    {
        $this->attributes['end_date'] = ($value == null) ? null : date('Y-m-d', strtotime($value));
    }
}
