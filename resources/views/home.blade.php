<?php
$Master = trans('variable.Master');
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

?>
@extends($Master)

@section('content')
<div class="right_col" role="main">
  <!-- top tiles -->
  <div class="row tile_count">
    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
      <span class="count_top"><i class="fa fa-user"></i> {{trans('home.NumberofEmployees')}}</span>
      <div class="count">{{$emp}}</div>
      <span class="count_bottom"><i class="green"></i> .</span>
    </div>
  <!--  <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
      <span class="count_top"><i class="fa fa-institution"></i> {{trans('home.Numberofinstit')}}</span>
      <div class="count">{{$ins}}</div>
      <span class="count_bottom"><i class="green"> </i> .</span>
    </div> -->
    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
      <span class="count_top"><i class="fa fa-user"></i> {{trans('home.NumberofMail')}} </span>
      <div class="count green">{{$male}}</div>
      <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>  {{ number_format(($male/$emp)*100) }} % </i> {{trans('home.MalePercentage')}}</span>
    </div>
    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
      <span class="count_top"><i class="fa fa-user"></i> {{trans('home.NumberofFemail')}}</span>
      <div class="count">{{$female}}</div>
      <span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i> {{ number_format(($female/$emp)*100) }} % </i>{{trans('home.FemalePercentage')}}</span>
    </div>
    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
      <span class="count_top"><i class="fa fa-user"></i>{{trans('home.Numberofadministrator')}} </span>
      <div class="count">{{$administrative}}</div>
      <span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i> {{ number_format((($administrative)/$emp)*100) }} % </i> {{trans('home.adminPercentage')}}</span>
    </div>
    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
      <span class="count_top"><i class="fa fa-user"></i> {{trans('home.Numberoftechnician')}}</span>
      <div class="count">{{$technical+$trainerc+$trainero+$trainer+$teacher}}</div>
      <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i> {{ number_format((($technical+$trainerc+$trainero+$trainer+$teacher)/$emp)*100) }} %</i> {{trans('home.TechPercentage')}}</span>
    </div>
    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
      <span class="count_top"><i class="fa fa-user"></i> {{trans('home.Numberofuser')}}</span>
      <div class="count">{{$user}}</div>
      <span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i> {{ number_format((($user)/$emp)*100) }} %</i> {{trans('home.TechPercentage')}}</span>
    </div>

  </div>



  <div class="col-md-6 col-sm-6 col-xs-12">

    <div class="x_panel">
      <div class="x_title">
        <h2>{{$Title}}<small></small></h2>
        <ul class="nav navbar-right panel_toolbox">
          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
          </li>
          <li><a class="close-link"><i class="fa fa-close"></i></a>
          </li>
        </ul>
        <div class="clearfix"></div>
      </div>
      <div class="x_content">
        <div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>

      </div>
    </div>
  </div>
  <!-- bar charts group -->

  <!-- /bar charts group -->
  <!-- /top tiles -->


    <div class="col-md-6 col-sm-6 col-xs-12">

      <div class="x_panel">
        <div class="x_title">
          <h2>{{$Titlej}} <small></small></h2>
          <ul class="nav navbar-right panel_toolbox">
            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
            </li>
            <li><a class="close-link"><i class="fa fa-close"></i></a>
            </li>
          </ul>
          <div class="clearfix"></div>
        </div>
        <div class="x_content">
          <div id="container1" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
        </div>
      </div>
    </div>
<!--
    <div class="x_panel">
      <div class="x_title">
        <h2>{{$Title}}<small></small></h2>
        <ul class="nav navbar-right panel_toolbox">
          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
          </li>
          <li><a class="close-link"><i class="fa fa-close"></i></a>
          </li>
        </ul>
        <div class="clearfix"></div>
      </div>
      <div class="x_content">
        <div id="container3" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>

      </div>
    </div>
  </div>
-->
</div>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script type="text/javascript">
Highcharts.chart('container', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie',

    },

    title: {
        text: '{{$Title}}',
        style: {
            fontSize: '30px',
            fontFamily: 'bahij,Arial,Droid Sans'
        }

    },
    tooltip: {
        pointFormat: '{series.name}: <b>%{point.percentage:.1f}</b>',
        useHTML:true
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: %{point.percentage:.1f} ',
                useHTML: true,
                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                }
            }
        }
    },
    series: [{

        name: '{{$Qualification}}',
        colorByPoint: true,
        data: [{
            name: '{{$LSecondary}}',
            y: {{$lsecondary}}

        }, {
            name: '{{$Postgraduate}}',
            y: {{$postgraduate}},
            sliced: true,
            selected: true
        }, {
            name: '{{$Secondary}}',
            y: {{$secondary}}
        }, {
            name: '{{$Diploma}}',
            y: {{$diploma}}
        }, {
            name: '{{$Bachelor}}',
            y:{{$ba}}
        }]
    }]
});
</script>
<script type="text/javascript">
Highcharts.chart('container1', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie',

    },
    title: {
        text: '{{$Titlej}}',
        style: {
            fontSize: '30px',
            fontFamily: 'bahij,Arial,Droid Sans'
        }

    },
    tooltip: {
        pointFormat: '{series.name}: <b>%{point.percentage:.1f}</b>',
        useHTML:true
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: %{point.percentage:.1f} ',
                useHTML: true,
                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                }
            }
        }
    },
    series: [{
        name: '{{$Job}}',
        colorByPoint: true,
        data: [{
            name: '{{$Administrative}}',
            y: {{$administrative}}

        }, {
            name: '{{$User}}',
            y: {{$user}},
            sliced: true,
            selected: true
        }, {
            name: '{{$Technical}}',
            y: {{$technical+$trainerc+$trainero+$trainer+$teacher}}
        }]
    }]
});
</script>
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
Highcharts.chart('container3', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Browser market shares in January, 2018'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: %{point.percentage:.1f} ',
                useHTML: true,

                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                },
                connectorColor: 'silver'
            }
        }
    },
    series: [{
        name: 'Share',
        data: [
            { name: '{{$Male}}', y: {{$male}}},
            { name: '{{$Female}}', y: {{$female}}}
        ]
    }]
});
</script>
@endsection
