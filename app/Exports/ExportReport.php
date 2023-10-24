<?php

namespace App\Exports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExportReport implements FromCollection, WithHeadings
{
    protected $report;

    function __construct($report)
    {
        $this->report = $report;
    }

    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return new Collection($this->report);
    }

    public function headings(): array
    {
        return [
            'MERCHANT NAME',
            'OUTLET NAME',
            'STAFF',
            'TRANSACTION DATE',
            'TRANSACTION TIME',
            'PAYMENT TYPE',
            'CUSTOMER NAME',
            'TAX',
            'PAY AMOUNT',
            'CHANGE AMOUNT',
            'TOTAL AMOUNT',
        ];
    }
}
