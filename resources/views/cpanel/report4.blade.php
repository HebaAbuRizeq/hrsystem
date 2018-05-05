<?php
$Master = trans('variable.Master');
$Lang =trans('variable.Lang');
$Administrative = trans('report.Administrative');
$TrainingCoordinator = trans('report.TrainingCoordinator');
$TrainingOfficer= trans('report.TrainingOfficer');
$Trainer = trans('report.Trainer');
$Teacher= trans('report.Teacher');
$User = trans('report.User');
$Technical = trans('report.Technical');
$Bachelor = trans('report.Bachelor');
$LSecondary = trans('report.LSecondary');
$Secondary = trans('report.Secondary');
$Diploma = trans('report.Diploma');
$Postgraduate = trans('report.Postgraduate');
$Qualification= trans('report.Qualification');
$Job = trans('report.Job');
$Title = trans('report.Title');
$Titlej = trans('report.Titlej');
$Male= trans('report.Male');
$Female= trans('report.Female');
$Title4 = trans('report.Title4');
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
}
</style>

<div class="right_col" role="main">

  <div class="row">

    <!-- col-md-12 col-sm-12 col-xs-12 -->
    <div class="col-md-12 col-sm-12 col-xs-12">
      <div class="site_title">
      </div>

      <!-- x_panel -->
      <div class="x_panel">

        <!-- x_title -->
        <div class="x_title">

          <h2>{{trans('report.Report')}} : {{trans('report.Title4')}}</h2>

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



          <div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>



        </div>
        <!-- /x_content -->

      </div>
      <!-- /x_panel -->

    </div>
    <!-- /col-md-12 col-sm-12 col-xs-12 -->

  </div>



</div>
@endsection
@section('inline_js')
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script type="text/javascript">


// Radialize the colors
Highcharts.setOptions({
    colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
        return {
            radialGradient: {
                cx: 0.5,
                cy: 0.3,
                r: 0.7
            },
            stops: [
                [0, color],
                [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
            ]
        };
    })
});

// Build the chart
Highcharts.chart('container', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: '{{$Title4}}',
        style: {
            fontSize: '28px',
            fontFamily: 'bahij,Arial,Droid Sans'
        }
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: '',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                useHTML: true,

                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                },
                connectorColor: 'silver'
            }
        }
    },
    series: [{
        name: 'Gender',
        data: [
            { name: '{{$Male}}', y: {{$male}} },
            { name: '{{$Female}}', y: {{$female}},color: '#FF69B4',}

        ]
    }]
});
</script>

@endsection
