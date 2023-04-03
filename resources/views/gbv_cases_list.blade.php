@extends('layout.app')

@section('content')
  
  <div class="card">
              <div class="card-header">
                <h3 class="card-title">GBV Cases Reported</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Initials</th>
                    <th>Date of birth</th>
                    <th>Gender</th>
                    {{-- <th>Address</th> --}}
                    <th>Age Group</th>
                    <th>UIC</th>
                    <th>Case Details</th>
                    <th>Date Case Happened</th>
                    <th>Date Case Reported</th>
                    <th>Duty Station</th>
                    <th>Service</th>
                    <th>Remarks</th>
                    <th>Was Case Referred</th>
                    <th>Place Case Referred</th>
                    <th>Case Reported By</th>
                    {{-- <th>Status</th> --}}
                    <th>Case Recieved By</th>
                    <th>Date Case Recieved</th>
                  </tr>
                  </thead>
                  <tbody>
                    @foreach ($cases as $case)
                      <tr>
                        <td>{{ $case->initials }}</td>
                        <td>{{ $case->date_of_birth }}</td>
                        <td>{{ $case->gender }}</td>
                        {{--<td>{{ $case->address }}</td>--}}
                        <td>{{ $case->age_group }}</td>
                        <td>{{ $case->uic }}</td>
                        <td>{{ $case->case_details }}</td>
                        <td>{{ $case->date_case_happened }}</td>
                        <td>{{ $case->date_case_reported }}</td>
                        <td>{{ $case->duty_station_id }}</td>
                        <td>{{ $case->service }}</td>
                        <td>{{ $case->remarks }}</td>
                        <td>{{ $case->is_referred }}</td>
                        <td>{{ $case->referred_to }}</td>
                        <td>{{ $case->reported_by }}</td>
                        {{-- <td>{{ $case->status }}</td> --}}
                        <td>{{ $case->recieved_by }}</td>
                      <td>{{ $case->date_case_recieved }}</td>
                      </tr>
                    @endforeach
                  </tbody>
                  {{-- 
                    <tfoot>
                    <tr>
                      <th>Initials</th>
                      <th>Date of birth</th>
                      <th>Gender</th>
                      <th>Address</th>
                      <th>Age Group</th>
                      <th>UIC</th>
                      <th>Case</th>
                      <th>Duty Station</th>
                      <th>Service</th>
                      <th>Remarks</th>
                      <th>Was Case Referred</th>
                      <th>Place Case Referred</th>
                      <th>Case Reported By</th>
                      <th>Status</th>
                      <th>Case Recieved By</th>
                      <th>Date Case Recieved</th>
                    </tr>
                    </tfoot> 
                  --}}
                </table>
              </div>
              <!-- /.card-body -->
            </div>

@endsection
