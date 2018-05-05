<?php
$Name_En = trans('variable.Name_En');
$Address_En = trans('variable.Address_En');
$Address_En = trans('variable.Address_En');
$Gov_Rel =trans('variable.Gov_Rel');
$Lang =trans('variable.Lang');

?>
@extends('cpanel.administration.base')
@section('action-content')
<!-- row -->
<div class="row">

  <!-- col-md-12 col-sm-12 col-xs-12 -->
  <div class="col-md-12 col-sm-12 col-xs-12">

    <!-- x_panel -->
    <div class="x_panel">

      <!-- x_title -->
      <div class="x_title">

        <h2>{{trans('administration.View')}}</h2>

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
  <!-- Table Starts Here -->
          <table id="example" class="table table-bordered table-responsive table-striped">
              <tbody>
              @foreach($administration as $administration)
              <tr><td>{{trans('administration.Name')}}</td><td>{{$administration->$Name_En}} </td> </tr>
              <tr><td>{{trans('cpanel.Address')}}</td><td>{{$administration->$Address_En}}</td></tr>
              <tr><td>{{trans('cpanel.Phone')}}</td><td>{{$administration->phone}}</td></tr>
              <tr><td>{{trans('cpanel.Fax')}}</td><td>{{$administration->fax}}</td></tr>
              <tr><td>{{trans('cpanel.Mobile')}}</td><td>{{$administration->mobile}}</td></tr>
              <tr><td>{{trans('cpanel.Email')}}</td><td>{{$administration->email}}</td></tr>
              <tr><td>{{trans('governate.Governate')}}</td><td>{{$administration->$Gov_Rel}}</td></tr>

                    @endforeach

              </tbody>
            </table>
            <!-- Table Ends Here -->
            <div style="height: 300px;">
                                          {!! Mapper::render() !!}
                                        </div>
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
