<?php
$Name_En = trans('variable.Name_En');
$Lang =trans('variable.Lang');
$Gov_Rel =trans('variable.Gov_Rel');
$Reg_Rel =trans('variable.Reg_Rel');
$Assis_Rel =trans('variable.Assis_Rel');
$Admin_Rel =trans('variable.Admin_Rel');
$Address_En = trans('variable.Address_En');
$Address_Ar = trans('variable.Address_Ar');
$Street_En = trans('variable.Street_En');
$Neighborhood_En = trans('variable.Neighborhood_En');

?>
@extends('cpanel.institute.base')
@section('action-content')
<!-- row -->
<div class="row">

  <!-- col-md-12 col-sm-12 col-xs-12 -->
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="site_title">
    <button onclick="location.href='{{ url('cpanel/institute/create') }}'" class="btn btn-dark" type="button">{{trans('institute.Add_Institute')}}</button>
    </div>

    <!-- x_panel -->
    <div class="x_panel">

      <!-- x_title -->
      <div class="x_title">

        <h2>{{trans('institute.View')}}</h2>

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




                      <th>{{trans('cpanel.View')}}</th>



                      <th>{{trans('cpanel.Institute')}}</th>

                      <th>{{trans('cpanel.Phone')}}</th>
                      <th>{{trans('cpanel.Fax')}}</th>
                      <th>{{trans('cpanel.Mobile')}}</th>
                      <th>{{trans('cpanel.Email')}}</th>
                    <!--  <th>{{trans('cpanel.Address')}}</th>
                      <th>{{trans('governate.Governate')}}</th>
                    <th>{{trans('cpanel.Assistant')}}</th>-->
                      <th>{{trans('cpanel.Actions')}}</th>

                    </tr>
                </thead>
                <tbody>
                  @foreach($institute as $key => $institute)


            <tr>

              <td>

                <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target=".bs-example-modal-lg{{$institute->id}}">

                  <i class="fa fa-folder"></i>
                  {{trans('cpanel.View')}} </button>

                <div class="modal fade bs-example-modal-lg{{$institute->id}}" tabindex="-1" role="dialog" aria-hidden="true">
                  <div class="modal-dialog modal-lg">
                    <div class="modal-content">

                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel">{{$institute->$Name_En}}</h4>
                      </div>
                      <div class="modal-body">
                        <div class="row">
                          <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">
                              <div class="x_title">
                                <h2>{{$institute->$Name_En}}</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                  </li>

                                  <li><a class="close-link"><i class="fa fa-close"></i></a>
                                  </li>
                                </ul>
                                <div class="clearfix"></div>
                              </div>
                              <div class="x_content">

                                <div class="col-md-7 col-sm-7 col-xs-12">

                                    <div style="height: 450px; width:450px;">
                                    {!! Mapper::render($key) !!}
                                    </div>

                                </div>


                                <div class="col-md-5 col-sm-5 col-xs-12" style="border:0px solid #e5e5e5;">
                                    <h1 class="brief"><i>{{$institute->$Name_En}}</i></h1>
                                  </br>
                                      <p><strong> {{trans('region.Region')}}: </strong> {{ $institute->$Reg_Rel }}</p>
                                      <p><strong> {{trans('governate.Governate')}}: </strong> {{ $institute->$Gov_Rel }}</p>
                                      <p><strong>{{trans('cpanel.Neighborhood')}} : </strong>  {{ $institute->$Neighborhood_En }}</p>
                                      <p><strong> {{trans('cpanel.Street')}} :  </strong> {{ $institute->$Street_En }}</p>
                                      <p><strong> {{trans('cpanel.Bulding')}}:  </strong> {{ $institute->bulding }}</p>
                                      <p><strong> {{trans('cpanel.Phone')}} : </strong>{{ $institute->phone }}</p>
                                      <p><strong>{{trans('cpanel.Fax')}} : </strong>{{ $institute->fax }}</p>
                                      <p><strong> {{trans('cpanel.Mobile')}} :</strong> {{ $institute->mobile }}
                                      <p><strong> {{trans('cpanel.Email')}} : </strong>{{ $institute->email }}</p>



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

            <td>{{$institute->$Name_En}}</td>
            <td>{{ $institute->phone }}</td>
            <td>{{ $institute->fax }}</td>
            <td>{{ $institute->mobile }}</td>
            <td>{{ $institute->email }}</td>
        <!--    <td>{{ $institute->$Neighborhood_En }} {{ $institute->$Street_En }} {{ $institute->bulding }}</td>
            <td>{{ $institute->$Gov_Rel }}</td>-->

            <td><a href="{{action('InstituteController@edit', $institute->id)}}" data-toggle="tooltip"  title="Edit" ><i alt="Edit">{{trans('cpanel.Edit')}}</i></a> /
                <a href="{{ url('cpanel/institute/delete',  $institute->id) }}" data-toggle="tooltip"  title="Delete" onclick="return confirm('{{trans('cpanel.Sure')}}')"><i alt="Delete">{{trans('cpanel.Delete')}}</i></a></td>
            </td>

          </tr>


        @endforeach

                </tbody>
            </table>
<div id="googleMap" style="width:100%;height:400px"></div>

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
  foreach($institute as $institute)
  {
    var a = $institute->lat;
    var b = $institute->long;
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
