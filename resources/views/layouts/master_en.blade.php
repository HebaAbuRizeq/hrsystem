<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>{{trans('cpanel.vtc')}} </title>

    <!-- Bootstrap -->
    <link href="{{ asset ("bower_components/gentelella/vendors/bootstrap/dist/css/bootstrap.min.css")}}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{ asset ("bower_components/gentelella/vendors/font-awesome/css/font-awesome.min.css")}}" rel="stylesheet">
    <!-- NProgress -->
    <link href="{{ asset ("bower_components/gentelella/vendors/nprogress/nprogress.css")}}" rel="stylesheet">
    <!-- iCheck -->
    <link href="{{ asset ("bower_components/gentelella/vendors/iCheck/skins/flat/green.css")}}" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="{{ asset ("bower_components/gentelella/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css")}}" rel="stylesheet">
    <!-- JQVMap -->
    <link href="{{ asset ("bower_components/gentelella/vendors/jqvmap/dist/jqvmap.min.css")}}" rel="stylesheet"/>
    <!-- bootstrap- -->
    <link href="{{ asset ("bower_components/gentelella/vendors/bootstrap-daterangepicker/daterangepicker.css")}}" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="{{ asset ("bower_components/gentelella/vendors/google-code-prettify/bin/prettify.min.css")}}" rel="stylesheet">
    <!-- Select2 -->
    <link href="{{ asset ("bower_components/gentelella/vendors/select2/dist/css/select2.min.css")}}" rel="stylesheet">
    <!-- Switchery -->
    <link href="{{ asset ("bower_components/gentelella/vendors/switchery/dist/switchery.min.css")}}" rel="stylesheet">
    <!-- starrr -->
    <link href="{{ asset ("bower_components/gentelella/vendors/starrr/dist/starrr.css")}}" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="{{ asset ("bower_components/gentelella/vendors/bootstrap-daterangepicker/daterangepicker.css")}}" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="{{ asset ("bower_components/gentelella/build/css/custom.min.css")}}" rel="stylesheet">
    <!-- Data Tables Style -->
    <link href="{{ asset ("bower_components/datatables/css/jquery.dataTables.min.css")}}" rel="stylesheet">
    <link href="{{ asset ("bower_components/datatables/css/buttons.dataTables.min.css")}}" rel="stylesheet">
    <script src="{{ asset ("bower_components/gentelella/vendors/jquery/dist/jquery.min.js")}}"></script>

  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="{{ url('home') }}" class="site_title"><i class="fa fa-paw"></i> <span>{{trans('cpanel.ems')}}</span></a>
            </div>
            <br /><br /><br />
            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="{{asset("/bower_components/gentelella/production/images/logo6.png")}}" class="img-thumbnail" alt="User Image">
              </div>
              <div class="profile_info">
                @auth
                <span>{{ Auth::user()->name }}</span>
                @endauth
                <h2>{{trans('cpanel.Web-Developer')}}</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->
            <br />
            <!-- sidebar menu -->
            @include('cpanel.sidebar')
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
            @include('cpanel.header')
        <!-- /top navigation -->

        <!-- page content -->
        @yield('content')
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            {{trans('cpanel.Copyright')}} &copy; 2018  <strong>{{trans('cpanel.vtc')}}</a>.</strong> {{trans('cpanel.All-rights-reserved')}}
          </div>
          <div class="pull-left">
          {{trans('cpanel.Designdevelopment')}}  <a href="{{url('/home/copy')}}">
              Heba Abu Rizeq
            <!--<img src="{{asset("/bower_components/gentelella/production/images/HebaLogo2.png")}}" height="50px" width="" >-->
</a></strong>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="{{ asset ("bower_components/gentelella/vendors/jquery/dist/jquery.min.js")}}"></script>
    <!-- Bootstrap -->
    <script src="{{ asset ("bower_components/gentelella/vendors/bootstrap/dist/js/bootstrap.min.js")}}"></script>
    <!-- FastClick -->
    <script src="{{ asset ("bower_components/gentelella/vendors/fastclick/lib/fastclick.js")}}"></script>
    <!-- NProgress -->
    <script src="{{ asset ("bower_components/gentelella/vendors/nprogress/nprogress.js")}}"></script>
    <!-- Chart.js -->
    <script src="{{ asset ("bower_components/gentelella/vendors/Chart.js/dist/Chart.min.js")}}"></script>
    <!-- gauge.js -->
    <script src="{{ asset ("bower_components/gentelella/vendors/gauge.js/dist/gauge.min.js")}}"></script>
    <!-- bootstrap-progressbar -->
    <script src="{{ asset ("bower_components/gentelella/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js")}}"></script>
    <!-- iCheck -->
    <script src="{{ asset ("bower_components/gentelella/vendors/iCheck/icheck.min.js")}}"></script>
    <!-- Skycons -->
    <script src="{{ asset ("bower_components/gentelella/vendors/skycons/skycons.js")}}"></script>
    <!-- Flot -->
    <script src="{{ asset ("bower_components/gentelella/vendors/Flot/jquery.flot.js")}}"></script>
    <script src="{{ asset ("bower_components/gentelella/vendors/Flot/jquery.flot.pie.js")}}"></script>
    <script src="{{ asset ("bower_components/gentelella/vendors/Flot/jquery.flot.time.js")}}"></script>
    <script src="{{ asset ("bower_components/gentelella/vendors/Flot/jquery.flot.stack.js")}}"></script>
    <script src="{{ asset ("bower_components/gentelella/vendors/Flot/jquery.flot.resize.js")}}"></script>
    <!-- Flot plugins -->
    <script src="{{ asset ("bower_components/gentelella/vendors/flot.orderbars/js/jquery.flot.orderBars.js")}}"></script>
    <script src="{{ asset ("bower_components/gentelella/vendors/flot-spline/js/jquery.flot.spline.min.js")}}"></script>
    <script src="{{ asset ("bower_components/gentelella/vendors/flot.curvedlines/curvedLines.js")}}"></script>
    <!-- DateJS -->
    <script src="{{ asset ("bower_components/gentelella/vendors/DateJS/build/date.js")}}"></script>
    <!-- JQVMap -->
    <script src="{{ asset ("bower_components/gentelella/vendors/jqvmap/dist/jquery.vmap.js")}}"></script>
    <script src="{{ asset ("bower_components/gentelella/vendors/jqvmap/dist/maps/jquery.vmap.world.js")}}"></script>
    <script src="{{ asset ("bower_components/gentelella/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js")}}"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="{{ asset ("bower_components/gentelella/vendors/moment/min/moment.min.js")}}"></script>
    <script src="{{ asset ("bower_components/gentelella/vendors/bootstrap-daterangepicker/daterangepicker.js")}}"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="{{ asset ("bower_components/gentelella/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js")}}"></script>
    <script src="{{ asset ("bower_components/gentelella/vendors/jquery.hotkeys/jquery.hotkeys.js")}}"></script>
    <script src="{{ asset ("bower_components/gentelella/vendors/google-code-prettify/src/prettify.js")}}"></script>
    <!-- jQuery Tags Input -->
    <script src="{{ asset ("bower_components/gentelella/vendors/jquery.tagsinput/src/jquery.tagsinput.js")}}"></script>
    <!-- Switchery -->
    <script src="{{ asset ("bower_components/gentelella/vendors/switchery/dist/switchery.min.js")}}"></script>
    <!-- Select2 -->
    <script src="{{ asset ("bower_components/gentelella/vendors/select2/dist/js/select2.full.min.js")}}"></script>
    <!-- Parsley -->
    <script src="{{ asset ("bower_components/gentelella/vendors/parsleyjs/dist/parsley.min.js")}}"></script>
    <!-- Autosize -->
    <script src="{{ asset ("bower_components/gentelella/vendors/autosize/dist/autosize.min.js")}}"></script>
    <!-- jQuery autocomplete -->
    <script src="{{ asset ("bower_components/gentelella/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js")}}"></script>
    <!-- starrr -->
    <script src="{{ asset ("bower_components/gentelella/vendors/starrr/dist/starrr.js")}}"></script>
    <!-- iCheck -->
    <script src="{{ asset ("bower_components/gentelella/vendors/iCheck/icheck.min.js")}}"></script>
    <!-- morris.js -->
    <script src="{{ asset ("bower_components/gentelella/vendors/raphael/raphael.min.js")}}"></script>
    <script src="{{ asset ("bower_components/gentelella/vendors/morris.js/morris.min.js")}}"></script>
    <!-- Custom Theme Scripts -->
    <script src="{{ asset ("bower_components/gentelella/build/js/custom.min.js")}}"></script>
    <!-- Data Tables Scripts -->
    <script src="{{ asset ("bower_components/datatables/js/jquery.dataTables.min.js")}}"></script>
    <script src="{{ asset ("bower_components/datatables/js/dataTables.buttons.min.js")}}"></script>
    <script src="{{ asset ("bower_components/datatables/js/jszip.min.js")}}"></script>
    <script src="{{ asset ("bower_components/datatables/js/pdfmake.min.js")}}"></script>
    <script src="{{ asset ("bower_components/datatables/js/vfs_fonts.js")}}"></script>
    <script src="{{ asset ("bower_components/datatables/js/buttons.html5.min.js")}}"></script>
    <script src="{{ asset ("bower_components/datatables/js/buttons.colVis.min.js")}}"></script>
    <script src="{{ asset ("bower_components/datatables/js/buttons.print.min.js")}}"></script>

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>


  @yield('inline_js')
  </body>
</html>
