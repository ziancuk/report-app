<?php

namespace App\Http\Controllers;

use App\Exports\ExportReport;
use App\Models\Report;
use App\ReportHelper;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use Carbon\Carbon;

class ReportController extends Controller
{
    public function index() {
        return view('content.index');
    }

    public function report(Request $request) {
        $report = Report::with('business', 'user');
        if ($request->start_date && $request->end_date) {
            $report->whereBetween('transaction_time', [$request->start_date  . ' 00:00:00', $request->end_date . ' 23:59:59']); 
        }
        if ($request->merchant) {
            $report->whereHas('business', function ($query) use ($request) {
                $query->where('merchant_name', 'like', '%' . $request->merchant . '%');
            });
        }
        if ($request->payment) {
            $report->where('payment_status', $request->payment);
        }
        if ($request->outlet) {
            $report->whereHas('business', function ($query) use ($request) {
                $query->where('outlet_name', 'like', '%' . $request->outlet . '%');
            });
        }

        $total = $report->count();
        $report = $report->get();
        $totalPaid = $report->where('payment_status', 'Paid')->count();
        $totalNotPaid = $report->where('payment_status', 'Not Paid')->count();
        $data = [];

        foreach($report as $res) {
            $carbonDate = Carbon::parse($res->transaction_time);
            $formattedDate = $carbonDate->format('d-m-Y H:i:s');

            array_push($data, [
            'merchant_name' => $res->business->merchant_name,
            'outlet_name' => $res->business->outlet_name,
            'staff' => $res->user->name,
            'transaction_time' => $formattedDate,
            'payment_type' => $res->payment_type,
            'customer_name' => $res->customer_name,
            'tax' => $res->tax,
            'pay_amount' => $res->pay_amount,
            'change_amount' => $res->change_amount,
            'total_amount' => $res->total_amount,
            'payment_status' => $res->payment_status,
            'created_at' => $res->created_at,
            'updated_at' => $res->updated_at
            ]);
        }
        $result['report'] = $data;
        $result['total'] = $total;
        $result['totalPaid'] = $totalPaid;
        $result['totalNotPaid'] = $totalNotPaid;
        return ReportHelper::DataResponse('success', $result);
    }

    public function export(Request $request) {
        $report = Report::with('business', 'user');
        if ($request->start_date && $request->end_date) {
            $report->whereBetween('transaction_time', [$request->start_date  . ' 00:00:00', $request->end_date . ' 23:59:59']); 
        }
        if ($request->merchant) {
            $report->whereHas('business', function ($query) use ($request) {
                $query->where('merchant_name', 'like', '%' . $request->merchant . '%');
            });
        }
        if ($request->outlet) {
            $report->whereHas('business', function ($query) use ($request) {
                $query->where('outlet_name', 'like', '%' . $request->outlet . '%');
            });
        }

        $report->where('payment_status', 'paid');
        $report = $report->get();
        $data = [];

        foreach($report as $res) {
            $carbonDate = Carbon::parse($res->transaction_time);
            $datePart = $carbonDate->format('d/m/Y');
            $timePart = $carbonDate->format('H:i:s');

            array_push($data, [
            'merchant_name' => $res->business->merchant_name,
            'outlet_name' => $res->business->outlet_name,
            'staff' => $res->user->name,
            'transaction_date' => $datePart,
            'transaction_time' => $timePart,
            'payment_type' => $res->payment_type,
            'customer_name' => $res->customer_name,
            'tax' => $res->tax,
            'pay_amount' => $res->pay_amount,
            'change_amount' => $res->change_amount,
            'total_amount' => $res->total_amount,
            ]);
        }
        return Excel::download(new ExportReport($data), 'report-transaction.xlsx');
    }
}
