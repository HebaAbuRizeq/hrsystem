<!-- base.blade.php -->
<?php
$Master = trans('variable.Master');
?>
@extends($Master)
@section('content')

      <!-- page content -->
      <div class="right_col" role="main">

          <!--  -->
        <div class="">

          <!-- page-title -->
          <div class="page-title">
            <!-- title_left -->
            <div class="title_left">
              <h2>{{trans('region.Region_Mangement')}}</h2>
            </div>
            <!-- /title_left -->

            <!-- title right -->
            <div class="title_right">

              <div class="col-md-5 col-sm-5 col-xs-12  pull-right ">
                <a href="{{ url('cpanel/region') }}">{{trans('region.Region')}}</a>
              </div>
            </div>

            <!-- /title right -->

          </div>
          <!-- /page-title -->

          <div class="clearfix"></div>

        @yield('action-content')

        </div>
        <!-- / -->

      </div>
      <!-- /page content -->

@endsection
