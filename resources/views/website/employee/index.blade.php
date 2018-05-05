<?php
$firstname_ar = trans('variable.firstname_ar');
$secondname_ar = trans('variable.secondname_ar');
$thirdname_ar = trans('variable.thirdname_ar');
$lastname_ar = trans('variable.lastname_ar');
$firstname_en = trans('variable.firstname_en');
$secondname_en = trans('variable.secondname_en');
$thirdname_en = trans('variable.thirdname_en');
$lastname_en = trans('variable.lastname_en');
$job_name = trans('variable.job_name');

$Name_En = trans('variable.Name_En');
$Lang =trans('variable.Lang');
$Gov_Rel =trans('variable.Gov_Rel');
$Assis_Rel =trans('variable.Assis_Rel');
$Admin_Rel =trans('variable.Admin_Rel');
$Instit_Rel =trans('variable.Instit_Rel');
$region_Rel =trans('variable.region_Rel');
$Dept_Rel =trans('variable.Dept_Rel');
$Dir_Rel =trans('variable.Dir_Rel');
$Address_En = trans('variable.Address_En');
$Address_Ar = trans('variable.Address_Ar');
$Street_En = trans('variable.Street_En');
$Neighborhood_En = trans('variable.Neighborhood_En');
$Rjob_Rel =trans('variable.Rjob_Rel');
$Cjob_Rel =trans('variable.Cjob_Rel');
$Qual_Rel =trans('variable.Qual_Rel');
$Special_Rel =trans('variable.Special_Rel');
$Cqual_Rel =trans('variable.Cqual_Rel');
$Status_Rel =trans('variable.Status_Rel');
$Cat_Rel =trans('variable.Cat_Rel');
$Deg_Rel =trans('variable.Deg_Rel');
$Rec_Rel =trans('variable.Rec_Rel');
$Gender_Rel =trans('variable.Gender_Rel');

?>
@extends('cpanel.employee.base')
@section('action-content')
<!-- row -->
<div class="row">

  <!-- col-md-12 col-sm-12 col-xs-12 -->
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="site_title">
    <button onclick="location.href='{{ url('cpanel/employee/create') }}'" class="btn btn-dark" type="button">{{trans('employee.Add_Employee')}}</button>
    </div>

    <!-- x_panel -->
    <div class="x_panel">

      <!-- x_title -->
      <div class="x_title">

        <h2>{{trans('employee.View')}}</h2>

        <!-- panel_toolbox -->
        <ul class="nav navbar-right panel_toolbox">
          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
          </li>
            <!-- dropdown
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>

            <ul class="dropdown-menu" role="menu">
              <li><a href="#">Settings 1</a>
              </li>
              <li><a href="#">Settings 2</a>
              </li>
            </ul>

          </li>
          dropdown -->
          <li><a class="close-link"><i class="fa fa-close"></i></a>
          </li>
        </ul>
        <!-- /panel_toolbox -->

        <div class="clearfix"></div>

      </div>
      <!-- /x_title -->
      @if ($errors->any())
          <div class="alert alert-danger">
              <ul>
                  @foreach ($errors->all() as $error)
                      <li>{{ $error }}</li>
                  @endforeach
              </ul>
          </div><br />
          @endif
          @if (\Session::has('success'))
          <div class="alert alert-success">
              <p>{{ \Session::get('success') }}</p>
          </div><br />
          @endif
      <!-- x_content -->
      <div class="x_content">
        <table id="example" class="display">
                <thead>
                    <tr>
                      <th>{{trans('cpanel.View')}}</th>
                      <th>{{trans('employee.Photo')}}</th>
                      <th>{{trans('employee.emp_no')}}</th>
                      <th>{{trans('employee.Full_Name')}}</th>
                      <th >{{trans('employee.Gender')}}</th>
                      <th>{{trans('employee.Job')}}</th>
                      <th>{{trans('cpanel.Phone')}}</th>
                      <th>{{trans('employee.Ext')}}</th>
                      <th>{{trans('cpanel.Mobile')}}</th>
                      <th>{{trans('cpanel.Email')}}</th>
                      <th >{{trans('employee.Category')}} / {{trans('employee.Degree')}}</th>
                      <th >{{trans('employee.Qualification')}}</th>
                      <th >{{trans('employee.Specialization')}}</th>
                      <th >{{trans('employee.Status')}}</th>
                      <th >{{trans('employee.Recruitmen')}}</th>
                      <th>{{trans('employee.dateofhiring')}}</th>
                      <th >{{trans('assistant.Assistant')}}</th>
                      <th>{{trans('cpanel.Actions')}}</th>
                    </tr>
                </thead>
                <tbody>
                  @foreach($employee as $key => $employee)
            <tr>
              <td>
                <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target=".bs-example-modal-lg{{$employee->id}}">
                  <i class="fa fa-folder"></i>
                  {{trans('cpanel.View')}} </button>
                <div class="modal fade bs-example-modal-lg{{$employee->id}}" tabindex="-1" role="dialog" aria-hidden="true">
                  <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel">{{trans('cpanel.vtc')}}</h4>

                      </div>
                      <div class="modal-body">
                        <div class="row">
                          <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                              <div class="x_title">
                                <h2>{{trans('employee.Emp_info_card')}}</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                  </li>
                                  <li><a class="close-link"><i class="fa fa-close"></i></a>
                                  </li>
                                </ul>
                                <div class="clearfix"></div>
                              </div>
                              <div class="x_content">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <br>
                                      <img src="{{asset("/bower_components/gentelella/production/photo/$employee->picture.jpg")}}" width="380px" height="450 0px"/>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12" style="border:2px solid #e5e5e5;">
                                  <h1 class="brief"><i>{{ $employee->$firstname_en }} {{ $employee->$secondname_en }} {{ $employee->$thirdname_en }} {{ $employee->$lastname_en }}</i></h1>
                                  <p><strong>{{trans('assistant.Assistant')}}:</strong>
                                    {{$employee->department_id != null ? $employee->$Dept_Rel : ($employee->directorate_id != null ? $employee->$Dir_Rel : ($employee->institute_id != null  ? $employee->$Instit_Rel  :
                                    ($employee->region_id != null  ? $employee->$region_Rel  :($employee->assistant_id != null  ? $employee->$Assis_Rel  :$employee->$Admin_Rel)))) }}                                  </p>
                                  <p><strong> {{trans('employee.emp_no')}}: </strong>{{ $employee->emp_no }}</p>
                                  <p><strong>{{trans('employee.Job')}}:</strong> {{ $employee->$job_name }}</p>
                                  <p><strong>{{trans('cpanel.Phone')}}: </strong> {{$employee->institute_id != null  ? $employee->institute_phone  : $employee->administration_phone }}</p>
                                  <p><strong>{{trans('employee.Ext')}} : </strong> {{ $employee->ext }}</p>
                                  <p><strong> {{trans('cpanel.Mobile')}} :  </strong> {{ $employee->mobile }}</p>
                                  <p><strong>{{trans('cpanel.Email')}}:  </strong> {{ $employee->email }}</p>
                                  <p><strong>{{trans('employee.Category')}} / {{trans('employee.Degree')}}: </strong>{{ $employee->$Cat_Rel }} / {{ $employee->$Deg_Rel }}</p>
                                  <p><strong>{{trans('employee.Qualification')}} :</strong>{{ $employee->$Qual_Rel }}</p>
                                  <p><strong>{{trans('employee.Specialization')}} : </strong>{{ $employee->$Special_Rel }}</p>
                                  <p><strong>{{trans('employee.Status')}} : </strong>{{ $employee->$Status_Rel }}</p>
                                  <p><strong>{{trans('employee.Recruitmen')}} : </strong>{{ $employee->$Rec_Rel }}</p>
                                  <p><strong>{{trans('employee.dateofhiring')}} : </strong>{{ $employee->dateofhiring }}</p>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">{{trans('cpanel.Close')}}</button>
                      </div>

                    </div>
                  </div>
                </div>
                <!-- modals -->
                <!-- Large modal -->
              </td>

            <td><img src="{{asset("/bower_components/gentelella/production/photo/$employee->picture.jpg")}}" width="50px" height="50px"/></td>
            <td>{{ $employee->emp_no }}</td>
            <td>{{ $employee->$firstname_en }} {{ $employee->$secondname_en }} {{ $employee->$thirdname_en }} {{ $employee->$lastname_en }}</td>
            <td>{{ $employee->$Gender_Rel }}</td>
            <td>{{ $employee->$job_name }}</td>
            <td>{{$employee->institute_id != null  ? $employee->institute_phone  : ($employee->region_id != null  ? $employee->region_phone  :$employee->administration_phone) }}  </td>
            <td>{{ $employee->ext }}</td>
            <td>{{ $employee->mobile }}</td>
            <td>{{ $employee->email }}</td>
            <td>{{ $employee->$Cat_Rel }} / {{ $employee->$Deg_Rel }}</td>
            <td>{{ $employee->$Qual_Rel }}</td>
            <td>{{ $employee->$Special_Rel }}</td>
            <td>{{ $employee->$Status_Rel }}</td>
            <td>{{ $employee->$Rec_Rel }}</td>
            <td>{{ $employee->dateofhiring }}</td>
            <td>
              {{$employee->department_id != null ? $employee->$Dept_Rel : ($employee->directorate_id != null ? $employee->$Dir_Rel : ($employee->institute_id != null  ? $employee->$Instit_Rel  :
              ($employee->region_id != null  ? $employee->$region_Rel  :($employee->assistant_id != null  ? $employee->$Assis_Rel  :$employee->$Admin_Rel)))) }}
            </td>
            <td><a href="{{action('EmployeeController@edit', $employee->id)}}" data-toggle="tooltip"  title="Edit" ><i alt="Edit">{{trans('cpanel.Edit')}}</i></a> /
                <a href="{{ url('cpanel/employee/delete',  $employee->id) }}" data-toggle="tooltip"  title="Delete" onclick="return confirm('{{trans('cpanel.Sure')}}')"><i alt="Delete">{{trans('cpanel.Delete')}}</i></a></td>
            </td>
          </tr>
        @endforeach
                </tbody>
            </table>

      </div>
      <!-- /x_content -->

    </div>
    <!-- /x_panel -->

  </div>
  <!-- /col-md-12 col-sm-12 col-xs-12 -->

</div>
<!-- /row -->
@endsection
@section('inline_js')
<script>
function myMap() {
var mapProp= {
  foreach($employee as $employee)
  {
    var a = $employee->lat;
    var b = $employee->long;
    center:new google.maps.LatLng(a,b),

  }
    zoom:5,
};
var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"></script>
<script src="//maps.googleapis.com/maps/api/js?key=AIzaSyCrre9OdSzXtnD1k8tqJD4dZ0p9zVM32HU" async="" defer="defer" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable( {

      "language": {
          "url": "{{ asset ("bower_components/datatables/json/$Lang.json")}}"
      },
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'print',
                text: '{{trans('cpanel.Print')}}',
                exportOptions: {
                    columns: [ 0, ':visible' ]
                }
            },
            {
                extend: 'copyHtml5',
                text: '{{trans('cpanel.Copy')}}',
                exportOptions: {
                    columns: [ 0, ':visible' ]
                }
            },
            {
                extend: 'excelHtml5',
                text: '{{trans('cpanel.Excel')}}',
                exportOptions: {
                    columns: ':visible'
                }
            },
            {
                extend:  'colvis',
                text: '{{trans('cpanel.ColumnVisibility')}}',

            },


        ]

    } );
} );

</script>
@endsection
