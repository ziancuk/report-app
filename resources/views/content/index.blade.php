@extends('layouts.app')
<title>Report Apps</title>
@section('content')

<script type="text/javascript"> 
    function showNote() {
        $('#textShow').show()
        $('#resumeData').hide()
    }
</script>

<!-- Main content -->
<div class="header bg-gradient-primary pb-6">
    <div class="container-fluid">
        <div class="header-body">
            <div class="row align-items-center py-4">
                <div class="col-lg-6 col-7">
                    <h6 class="h1 text-white d-inline-block mb-0">Report Apps</h6>
                </div>
            </div>
            <!-- Card stats -->
        </div>
    </div>
</div>
<!-- Page content -->
<div class="lds-ring" style="display: none;"></div>
<div class="container-fluid mt--6">
    <div class="row justify-content-center">
        <div class="col-lg">
            <div class="card">
                <!-- Light table -->
                <div class="card-body">
                    <div class="row icon-examples">
                        <div class="col-lg">
                            @if (session('status'))
                            <div class="alert alert-success mt-3">
                                {{ session('status') }}
                            </div>
                            @endif
                            <div class="card-group">
                                <div class="col-lg-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3 class="card-title mb-0">Report Filter</h3>
                                        </div>
                                        <div class="card-body d-flex align-items-center justify-content-center" style="min-height: 50vh;">
                                            <div class="container p-0 align-items-center">
                                                <form id="formSubmit">
                                                    <div class="form-group row">
                                                        <div class="col-sm-6">
                                                            <label for="staticName" class="col-form-label p-0">Start Date</label>
                                                            <input type="date" class="form-control form-control-sm" id="start_date" name="start_date" onchange="showNote()">
                                                        </div>
                                                        <div class=" col-sm-6">
                                                            <label for="staticName" class="col-form-label p-0">End Date</label>
                                                            <input type="date" class="form-control form-control-sm" id="end_date" name="end_date" onchange="showNote()">
                                                        </div>
                                                    </div>
                                                    <div class=" form-group row">
                                                        <div class="col-sm-6">
                                                            <label for="validationTooltip04">Merchant Name</label>
                                                            <input type="text" class="form-control form-control-sm" id="merchant" name="merchant" value="" placeholder="Type here..." onchange="showNote()">
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <label for="validationTooltip04">Payment Status</label>
                                                            <select class="form-control form-control-sm" class="custom-select" name="payment" id="payment" required onchange="showNote()">
                                                                <option value="">All</option>
                                                                <option value="Paid">Paid</option>
                                                                <option value="Not Paid">Not Paid</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm">
                                                            <label for="validationTooltip04">Outlet Name</label>
                                                            <input type="text" class="form-control form-control-sm" id="outlet" name="outlet" value="" placeholder="Type here..." onchange="showNote()">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <div class="col-sm mt-auto">
                                                            <button type="button" id="submitReport" class="btn btn-primary col-lg" name="button" value="submit">Submit</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <h3 class="card-title mb-0">Report Resume</h3>
                                        </div>
                                        <div class="card-body d-flex align-items-center justify-content-center" style="min-height: 50vh;">
                                            <div class="container">
                                                <div class="row">
                                                    <div class="col-lg d-flex align-items-center justify-content-center">
                                                        <h2 id="textShow">Submit For Show Report Data</h2>
                                                    </div>
                                                    <div class="col-lg-12" id="resumeData" style="display: none;">
                                                        <ul class="list-group list-group-flush">
                                                            <li class="list-group-item font-weight-bold" id="totalPaid"></li>
                                                            <li class="list-group-item font-weight-bold" id="totalNotPaid"></li>
                                                            <li class="list-group-item font-weight-bold" id="totalData"></li>
                                                            <li class="list-group-item font-weight-bold"></li>
                                                        </ul>
                                                        <div class="form-group row text-center">
                                                            <div class="col-lg-12 text-center">
                                                                <button type="buton" id="buttonExport" class="btn btn-success col-lg" name="button" value="csv">Download CSV</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row icon-examples">
                <div class="col-lg">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                            <table id="dataTable" class="table table-striped table-bordered" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>Merchant Name</th>
                                        <th>Outlet Name</th>
                                        <th>Transaction Time</th>
                                        <th>Staff</th>
                                        <th>Pay Amount</th>
                                        <th>Payment Type</th>
                                        <th>Customer Name</th>
                                        <th>Tax</th>
                                        <th>Change Amount</th>
                                        <th>Total Amount</th>
                                        <th>Payment Status</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/fixedheader/3.4.0/js/dataTables.fixedHeader.min.js"></script>
<script>
    $(document).ready(function() {

        let empty = false
        var dataTable = $('#dataTable').DataTable({
            fixedHeader: true,
            columns: [
                { data: 'merchant_name' },
                { data: 'outlet_name' },
                { data: 'transaction_time' },
                { data: 'staff' },
                { data: 'pay_amount' },
                { data: 'payment_type' },
                { data: 'customer_name' },
                { data: 'tax' },
                { data: 'change_amount' },
                { data: 'total_amount' },
                { data: 'payment_status' },
            ]
        });
        
        $('#submitReport').click(function() {
            $('.lds-ring').show();
            var formData = $('#formSubmit').serialize();
            $.ajax({
                type: 'GET',
                data: formData,
                url: '/report',
                success: function(response) {
                    if(response.data.totalPaid == 0) {
                      empty = true
                    } else {
                        empty = false
                    }
                    showResume(response.data)
                    dataTable.clear().rows.add(response.data.report).draw();
                    $('.lds-ring').hide();
                },
                error: function(error) {
                    $('.lds-ring').hide();
                    console.log('Error:', error);
                }
            });
        });

        $('#buttonExport').click(function() {

            if($('#payment').val() == 'Not Paid') {
                Swal.fire({
                    title: 'Oopss!',
                    text: "Payment Status 'Not Paid' Unable to export to CSV",
                    icon: 'warning',
                    confirmButtonText: 'Ok'
                });
                return false
            }
            if(empty == true) {
                Swal.fire({
                    title: 'Oopss!',
                    text: "No data exported on 'Paid' Transaction",
                    icon: 'warning',
                    confirmButtonText: 'Ok'
                });
                return false   
            }
            $('.lds-ring').show();
            var formData = $('#formSubmit').serialize();
            $.ajax({
                type: 'GET',
                data: formData,
                url: '/export',
                xhrFields: {
                    responseType: "blob",
                },
                success: function(response) {
                    var blob = new Blob([response]);
                    var link = document.createElement('a');
                    link.href = window.URL.createObjectURL(blob);
                    link.download = 'exported_data.csv';
                    document.body.appendChild(link);
                    link.click();
                    document.body.removeChild(link);
                    $('.lds-ring').hide();
                },
                error: function(error) {
                    $('.lds-ring').hide();
                    console.log('Error:', error);
                }
            });
        });
        function showResume(result) {
            $('#textShow').hide()
            $('#resumeData').show()
            $('#totalData').text(`Total Data : ${result.total}`)
            $('#totalPaid').text(`Paid Transaction : ${result.totalPaid}`)
            $('#totalNotPaid').text(`Not Paid Transaction : ${result.totalNotPaid}`)
            
        }
    });

</script>

@endsection