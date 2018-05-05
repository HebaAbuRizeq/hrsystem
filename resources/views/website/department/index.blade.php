<?php
$Name_En = trans('variable.Name_En');
$Lang =trans('variable.Lang');
$Assis_Rel =trans('variable.Assis_Rel');
$Admin_Rel =trans('variable.Admin_Rel');
$Reg_Rel =trans('variable.Reg_Rel');
$Dir_Rel =trans('variable.Dir_Rel');

?>
@extends('cpanel.department.base')
@section('action-content')
<!-- row -->
<div class="row">

  <!-- col-md-12 col-sm-12 col-xs-12 -->
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="site_title">
    <button onclick="location.href='{{ url('cpanel/department/create') }}'" class="btn btn-dark" type="button">{{trans('department.Add_Department')}}</button>
    </div>

    <!-- x_panel -->
    <div class="x_panel">

      <!-- x_title -->
      <div class="x_title">

        <h2>{{trans('department.View')}}</h2>

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

        <table id="example" class="display jambo_table">
                <thead>
                    <tr>
                      <th>{{trans('cpanel.Department')}}</th>
                      <th>{{trans('cpanel.Directorate')}}</th>
                      <th>{{trans('cpanel.Actions')}}</th>
                    </tr>
                </thead>

                <tbody>
                  @foreach($department as $department)
          <tr>
            <td>{{$department->$Name_En}}</td>
            <td>  <a href="{{ !empty($department->$Dir_Rel)? url('cpanel/assistant') : url('cpanel/administration')}}">
            {{ !empty($department->$Dir_Rel)? $department->$Dir_Rel : (!empty($department->$Reg_Rel)? $department->$Reg_Rel:(!empty($department->$Assis_Rel)? $department->$Assis_Rel:$department->$Admin_Rel) ) }}</a></td>

            <td><a href="{{action('DepartmentController@edit', $department->id)}}" data-toggle="tooltip"  title="Edit" ><i alt="Edit">{{trans('cpanel.Edit')}}</i></a> /
                <a href="{{ url('cpanel/department/delete',  $department->id) }}" data-toggle="tooltip"  title="Delete" onclick="return confirm('{{trans('cpanel.Sure')}}')"><i alt="Delete">{{trans('cpanel.Delete')}}</i></a></td>
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
