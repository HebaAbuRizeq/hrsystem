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

          <h2>{{trans('report.Report')}} : {{trans('report.Title2')}}</h2>

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
          <?php
          $date = array();
          $count = 0;
          $c1=0;
          $c2=0;
          $c3=0;
          $c4=0;
          $c5=0;
          $c6=0;
          $c7=0;
          $c8=0;
          $c9=0;
          $c10=0;
          ?>
            @foreach($employee as $key => $employee)
            <?php
            $today = date("Y-m-d");
            $diff = date_diff(date_create($employee->dateofbirth), date_create($today));
             $date[$count++] = $diff->format('%y');
             ?>

             @endforeach
             <?php
             for ($i=0;$i<sizeof($date);$i++)
             {

               if ($date[$i] <= 20) {
                   $c1++;
               }
               elseif ($date[$i] >= 21 and $date[$i] <= 25) {
                  $c2++;
               }
               elseif ($date[$i] >= 26 and $date[$i] <= 30) {
                  $c3++;
               }
               elseif ($date[$i] >= 31 and $date[$i] <= 35) {
                  $c4++;
               }
               elseif ($date[$i] >= 36 and $date[$i] <= 40) {
                  $c5++;
               }
               elseif ($date[$i] >= 41 and $date[$i] <= 45) {
                  $c6++;
               }
               elseif ($date[$i] >= 46 and $date[$i] <= 50) {
                  $c7++;
               }
               elseif ($date[$i] >= 51 and $date[$i] <= 55) {
                  $c8++;
               }
               elseif ($date[$i] >= 56 and $date[$i] <= 60) {
                  $c9++;
               }
               else {
                   $c10++;
               }
             }

              ?>


          <div id="container" style="min-width: 300px; height: 400px; margin: 0 auto"></div>



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

Highcharts.chart('container', {
    chart: {
        type: 'column'
    },
    title: {
        text: '{{trans('report.Title2')}}',
        style: {
            fontSize: '33px',
            fontFamily: 'bahij,Arial,Droid Sans'
        }
    },
    subtitle: {
        text: '{{trans('cpanel.vtc')}}',
        style: {
            fontSize: '33px',
            fontFamily: 'bahij,Arial,Droid Sans'
        }
    },
    xAxis: {
        type: 'category',
        labels: {
            rotation: -45,
            style: {
                fontSize: '33px',
                fontFamily: 'bahij,Arial,Droid Sans'
            }
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: '{{trans('cpanel.NumberofEmployees')}}',
            style: {
                fontSize: '28px',
                fontFamily: 'bahij,Arial,Droid Sans'
            }
        }
    },
    legend: {
        enabled: false
    },
    tooltip: {
        pointFormat: ' <b>{point.y:.0f} {{trans('cpanel.NumberofEmployees')}}</b>'
    },
    series: [{
        name: '',
        data: [
          ['16-20', {{$c1}}],
          ['21-25', {{$c2}}],
          ['26-30', {{$c3}}],
          ['31-35', {{$c4}}],
          ['36-40', {{$c5}}],
          ['41-45', {{$c6}}],
          ['46-50', {{$c7}}],
          ['51-55', {{$c8}}],
          ['56-60', {{$c9}}],
          ['61-65', {{$c10}}]
        ],
        dataLabels: {
            enabled: true,
            rotation: -90,
            color: '#FFFFFF',
            align: 'right',
            format: '{point.y:.0f}', // one decimal
            y: 10, // 10 pixels down from the top
            style: {
                fontSize: '18 px',
                fontFamily: 'bahij,Arial,Droid Sans'
            }
        }
    }]
});
</script>





</script>

@endsection
