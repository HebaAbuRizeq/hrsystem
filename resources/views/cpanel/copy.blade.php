<?php
$Master = trans('variable.Master');
$Name_En = trans('variable.Name_En');
$Address_En = trans('variable.Address_En');
$Address_En = trans('variable.Address_En');
$Gov_Rel =trans('variable.Gov_Rel');
$Lang =trans('variable.Lang');
?>

@extends($Master)

@section('content')
<link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light/all.min.css" />

<style>
table, td, th {
    border: 1px solid #ddd;
    text-align: trans('report.left');
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 15px;
     font-size: 20px;
}
</style>

<div class="right_col" role="main">

  <div class="row">

    <!-- col-md-12 col-sm-12 col-xs-12 -->
    <div class="col-md-8 col-sm-12 col-xs-12">
      <div class="site_title">
      </div>

      <!-- x_panel -->
      <div class="x_panel">

        <!-- x_title -->
        <div class="x_title">

          <h2>{{trans('cpanel.Designdevelopment')}}</h2>

          <!-- panel_toolbox -->
          <ul class="nav navbar-right panel_toolbox">
            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
            </li>
            <li><a class="close-link"><i class="fa fa-close"></i></a>
            </li>
          </ul>
          <!-- /panel_toolbox -->

          <div class="clearfix"></div>

        </div>
        <!-- /x_title -->
        <!-- x_content -->
        <div class="x_content">
          <!--<button id="exportButton" class="btn btn-lg btn-danger clearfix"><span class="fa fa-file-pdf-o"></span> Export to PDF</button>-->

          <table id="example" class="table table-bordered table-responsive table-striped">
              <tbody>

              <tr><td>{{trans('administration.Name')}}</td><td>{{trans('cpanel.vtc')}}</td> </tr>
              <tr><td>{{trans('directorate.Directorate')}}</td><td>{{trans('cpanel.ITC')}}</td></tr>
              <tr><td>{{trans('department.Department')}}</td><td>{{trans('cpanel.Egov')}}</td></tr>
              <tr><td>{{trans('cpanel.Designdevelopment')}}</td><td>{{trans('cpanel.ProgrammerName')}}</td></tr>
              <tr><td>{{trans('cpanel.Phone')}}</td><td> 065858481/113</td></tr>

              <tr><td>{{trans('cpanel.Mobile')}}</td><td>0797113425</td></tr>
              <tr><td>{{trans('cpanel.Email')}}</td><td>haburizeq@vtc.gov.jo</td></tr>
              </tbody>
            </table>

        </div>
        <!-- /x_content -->

      </div>
      <!-- /x_panel -->

    </div>
    <!-- /col-md-12 col-sm-12 col-xs-12 -->
    <div class="col-md-8 col-sm-12 col-xs-12">
      <div class="site_title">
      </div>

      <!-- x_panel -->
      <div class="x_panel">

        <!-- x_title -->
        <div class="x_title">

          <h2>{{trans('cpanel.Teamwork')}}</h2>

          <!-- panel_toolbox -->
          <ul class="nav navbar-right panel_toolbox">
            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
            </li>
            <li><a class="close-link"><i class="fa fa-close"></i></a>
            </li>
          </ul>
          <!-- /panel_toolbox -->

          <div class="clearfix"></div>

        </div>
        <!-- /x_title -->
        <!-- x_content -->
        <div class="x_content">
          <!--<button id="exportButton" class="btn btn-lg btn-danger clearfix"><span class="fa fa-file-pdf-o"></span> Export to PDF</button>-->

          <table id="example" class="table table-bordered table-responsive table-striped">
              <tbody>
                <tr><td>{{trans('cpanel.Programmer')}}</td><td>{{trans('cpanel.ProgrammerName')}}</td></tr>
                <tr><td>{{trans('cpanel.Translator')}}</td><td>{{trans('cpanel.TranslatorName')}} </td></tr>
                <tr><td>{{trans('cpanel.Fevaluation')}}</td><td>{{trans('cpanel.RawanShahin')}}</td></tr>
                <tr><td>{{trans('cpanel.ACdata')}}</td><td>{{trans('cpanel.Fadiaalsahouri')}} </td></tr>
                <tr><td>{{trans('cpanel.Generalsupervision')}}</td><td>{{trans('cpanel.MahmoudKarameh')}}</td></tr>
              </tbody>
            </table>

        </div>
        <!-- /x_content -->

      </div>
      <!-- /x_panel -->

    </div>
  </div>



</div>
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
