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

          <h2>{{trans('report.Report')}}: {{trans('report.Title1')}} </h2>

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
          <div id="containerj" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
<br><br>
          <table id="exportTable">
                  <thead>
                      <tr>
                        <th>{{trans('report.Job')}}</th>
                        <th colspan="2" style="text-align:center">{{trans('report.Technical')}}</th>
                        <th colspan="2" style="text-align:center">{{trans('report.Administrative')}}</th>
                        <th colspan="2" style="text-align:center">{{trans('report.TrainingCoordinator')}}</th>
                        <th colspan="2" style="text-align:center">{{trans('report.TrainingOfficer')}}</th>
                        <th colspan="2" style="text-align:center">{{trans('report.Trainer')}}</th>
                        <th colspan="2" style="text-align:center">{{trans('report.Teacher')}}</th>
                        <th colspan="2" style="text-align:center">{{trans('report.User')}}</th>
                        <th colspan="2" style="text-align:center">{{trans('report.Total')}}</th>
                      </tr>
                      <tr>
                        <th>{{trans('report.Qualification')}}</th>
                        <td>{{trans('report.Male')}}</td>
                        <td>{{trans('report.Female')}}</td>
                        <td>{{trans('report.Male')}}</td>
                        <td>{{trans('report.Female')}}</td>
                        <td>{{trans('report.Male')}}</td>
                        <td>{{trans('report.Female')}}</td>
                        <td>{{trans('report.Male')}}</td>
                        <td>{{trans('report.Female')}}</td>
                        <td>{{trans('report.Male')}}</td>
                        <td>{{trans('report.Female')}}</td>
                        <td>{{trans('report.Male')}}</td>
                        <td>{{trans('report.Female')}}</td>
                        <td>{{trans('report.Male')}}</td>
                        <td>{{trans('report.Female')}}</td>
                        <th>{{trans('report.Male')}}</th>
                        <th>{{trans('report.Female')}}</th>
                      </tr>
                  </thead>
                  <tbody>

            <tr>
              <th>{{trans('report.Postgraduate')}}</th>
              <td>{{$mpgtec}}</td>
              <td>{{$fpgtec}}</td>
              <td>{{$mpgad}}</td>
              <td>{{$fpgad}}</td>
              <td>{{$mpgtc}}</td>
              <td>{{$fpgtc}}</td>
              <td>{{$mpgto}}</td>
              <td>{{$fpgto}}</td>
              <td>{{$mpgtr}}</td>
              <td>{{$fpgtr}}</td>
              <td>{{$mpgte}}</td>
              <td>{{$fpgte}}</td>
              <td>{{$mpgus}}</td>
              <td>{{$fpgus}}</td>
              <th>{{$mpgad+$mpgtc+$mpgto+$mpgtr+$mpgte+$mpgus+$mpgtec}}</th>
              <th>{{$fpgad+$fpgtc+$fpgto+$fpgtr+$fpgte+$fpgus+$fpgtec}}</th>
            </tr>
            <tr>
                <th>{{trans('report.Bachelor')}}</th>
              <td>{{$mbatec}}</td>
              <td>{{$fbatec}}</td>
              <td>{{$mbaad}}</td>
              <td>{{$fbaad}}</td>
              <td>{{$mbatc}}</td>
              <td>{{$fbatc}}</td>
              <td>{{$mbato}}</td>
              <td>{{$fbato}}</td>
              <td>{{$mbatr}}</td>
              <td>{{$fbatr}}</td>
              <td>{{$mbate}}</td>
              <td>{{$fbate}}</td>
              <td>{{$mbaus}}</td>
              <td>{{$fbaus}}</td>
              <th>{{$mbaad+$mbatc+$mbato+$mbatr+$mbate+$mbaus+$mbatec}}</th>
              <th>{{$fbaad+$fbatc+$fbato+$fbatr+$fbate+$fbaus+$fbatec}}</th>
            </tr>

            <tr>
              <th>{{trans('report.Diploma')}}</th>
              <td>{{$mdiptec}}</td>
              <td>{{$fdiptec}}</td>
              <td>{{$mdipad}}</td>
              <td>{{$fdipad}}</td>
              <td>{{$mdiptc}}</td>
              <td>{{$fdiptc}}</td>
              <td>{{$mdipto}}</td>
              <td>{{$fdipto}}</td>
              <td>{{$mdiptr}}</td>
              <td>{{$fdiptr}}</td>
              <td>{{$mdipte}}</td>
              <td>{{$fdipte}}</td>
              <td>{{$mdipus}}</td>
              <td>{{$fdipus}}</td>
              <th>{{$mdipad+$mdiptc+$mdipto+$mdiptr+$mdipte+$mdipus+$mdiptec}}</th>
              <th>{{$fdipad+$fdiptc+$fdipto+$fdiptr+$fdipte+$fdipus+$fdiptec}}</th>
            </tr>
            <tr>
              <th>{{trans('report.Secondary')}}</th>
              <td>{{$msectec}}</td>
              <td>{{$fsectec}}</td>
              <td>{{$msecad}}</td>
              <td>{{$fsecad}}</td>
              <td>{{$msectc}}</td>
              <td>{{$fsectc}}</td>
              <td>{{$msecto}}</td>
              <td>{{$fsecto}}</td>
              <td>{{$msectr}}</td>
              <td>{{$fsectr}}</td>
              <td>{{$msecte}}</td>
              <td>{{$fsecte}}</td>
              <td>{{$msecus}}</td>
              <td>{{$fsecus}}</td>
              <th>{{$msecad+$msectc+$msecto+$msectr+$msecte+$msecus+$msectec}}</th>
              <th>{{$fsecad+$fsectc+$fsecto+$fsectr+$fsecte+$fsecus+$fsectec}}</th>
            </tr>
            <tr>
              <th>{{trans('report.LSecondary')}}</th>
              <td>{{$mlsectec}}</td>
              <td>{{$flsectec}}</td>
              <td>{{$mlsecad}}</td>
              <td>{{$flsecad}}</td>
              <td>{{$mlsectc}}</td>
              <td>{{$flsectc}}</td>
              <td>{{$mlsecto}}</td>
              <td>{{$flsecto}}</td>
              <td>{{$mlsectr}}</td>
              <td>{{$flsectr}}</td>
              <td>{{$mlsecte}}</td>
              <td>{{$flsecte}}</td>
              <td>{{$mlsecus}}</td>
              <td>{{$flsecus}}</td>
              <th>{{$mlsecad+$mlsectc+$mlsecto+$mlsectr+$mlsecte+$mlsecus+$mlsectec}}</th>
              <th>{{$flsecad+$flsectc+$flsecto+$flsectr+$flsecte+$flsecus+$flsectec}}</th>
            </tr>
              </tbody>
            <tfoot>
            <tr>
              <th>{{trans('report.Total')}}</th>
              <th>{{$mpgtec+$mbatec+$mdiptec+$msectec+$mlsectec}}</th>
              <th>{{$fpgtec+$fbatec+$fdiptec+$fsectec+$flsectec}}</th>
              <th>{{$mpgad+$mbaad+$mdipad+$msecad+$mlsecad}}</th>
              <th>{{$fpgad+$fbaad+$fdipad+$fsecad+$flsecad}}</th>
              <th>{{$mpgtc+$mbatc+$mdiptc+$msectc+$mlsectc}}</th>
              <th>{{$fpgtc+$fbatc+$fdiptc+$fsectc+$flsectc}}</th>
              <th>{{$mpgto+$mbato+$mdipto+$msecto+$mlsecto}}</th>
              <th>{{$fpgto+$fbato+$fdipto+$fsecto+$flsecto}}</th>
              <th>{{$mpgtr+$mbatr+$mdiptr+$msectr+$mlsectr}}</th>
              <th>{{$fpgtr+$fbatr+$fdiptr+$fsectr+$flsectr}}</th>
              <th>{{$mpgte+$mbate+$mdipte+$msecte+$mlsecte}}</th>
              <th>{{$fpgte+$fbate+$fdipte+$fsecte+$flsecte}}</th>
              <th>{{$mpgus+$mbaus+$mdipus+$msecus+$mlsecus}}</th>
              <th>{{$fpgus+$fbaus+$fdipus+$fsecus+$flsecus}}</th>
              <th>{{$mpgtec+$mbatec+$mdiptec+$msectec+$mlsectec+$mpgad+$mpgtc+$mpgto+$mpgtr+$mpgte+$mpgus+$mbaad+$mbatc+$mbato+$mbatr+$mbate+$mbaus+$mdipad+$mdiptc+$mdipto+$mdiptr+$mdipte+$mdipus+$msecad+$msectc+$msecto+$msectr+$msecte+$msecus+$mlsecad+$mlsectc+$mlsecto+$mlsectr+$mlsecte+$mlsecus}}</th>
              <th>{{$fpgtec+$fbatec+$fdiptec+$fsectec+$flsectec+$fpgad+$fpgtc+$fpgto+$fpgtr+$fpgte+$fpgus+$fbaad+$fbatc+$fbato+$fbatr+$fbate+$fbaus+$fdipad+$fdiptc+$fdipto+$fdiptr+$fdipte+$fdipus+$fsecad+$fsectc+$fsecto+$fsectr+$fsecte+$fsecus+$flsecad+$flsectc+$flsecto+$flsectr+$flsecte+$flsecus}}</th>
            </tr>
          </tfoot>

              </table>





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
<script>
document.getElementById('export').addEventListener('click',
  exportPDF);

var specialElementHandlers = {
  // element with id of "bypass" - jQuery style selector
  '.no-export': function(element, renderer) {
    // true = "handled elsewhere, bypass text extraction"
    return true;
  }
};

function exportPDF() {

  var doc = new jsPDF('p', 'pt', 'a4');
  //A4 - 595x842 pts
  //https://www.gnu.org/software/gv/manual/html_node/Paper-Keywords-and-paper-size-in-points.html


  //Html source
  var source = document.getElementById('content').innerHTML;

  var margins = {
    top: 10,
    bottom: 10,
    left: 10,
    width: 595
  };

  doc.fromHTML(
    source, // HTML string or DOM elem ref.
    margins.left,
    margins.top, {
      'width': margins.width,
      'elementHandlers': specialElementHandlers
    },

    function(dispose) {
      // dispose: object with X, Y of the last line add to the PDF
      //          this allow the insertion of new lines after html
      doc.save('Test.pdf');
    }, margins);
}

</script>
<script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
<script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/jszip.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>

<script type="text/javascript">

    jQuery(function ($) {
        $("#exportButton").click(function () {
            // parse the HTML table element having an id=exportTable
            var dataSource = shield.DataSource.create({
                data: "#exportTable",
                schema: {
                    type: "table",
                    fields: {
                        {{trans('report.Job')}}: { type: String },
                        {{trans('report.Administrative')}}: { type: Number },
                        {{trans('report.Qualification')}}: { type: Number },
                        Femalead: { type: Number },
                        Maletc: { type: Number },
                        Femaletc: { type: Number },

                    }
                }
            });

            // when parsing is done, export the data to PDF
            dataSource.read().then(function (data) {
                var pdf = new shield.exp.PDFDocument({
                    author: "PrepBootstrap",
                    created: new Date()
                });

                pdf.addPage("a4", "Landscape");

                pdf.table(
                    50,
                    50,
                    data,
                    [
                        { field: "{{trans('report.Job')}}", title: "{{trans('report.Job')}}", width: 200 },
                        { field: "{{trans('report.Administrative')}}", title: "{{trans('report.Administrative')}}", width: 50 },
                        { field: "{{trans('report.Qualification')}}", title: "{{trans('report.Qualification')}}", width: 50 },
                        { field: "Maletc", title: "Maletc", width: 50 },
                        { field: "Femaletc", title: "Femaletc", width: 200 }
                    ],
                    {
                        margins: {
                            top: 50,
                            left: 50
                        }
                    }
                );

                pdf.saveAs({
                    fileName: "ReportPDF"
                });
            });
        });
    });
</script>

<style>
    #exportButton {
        border-radius: 0;
    }
</style>

<script type="text/javascript">

Highcharts.chart('container', {

    data: {
        table: 'datatable'

    },
    chart: {
        type: 'column'
    },
    title: {
        text: ''
    },
    yAxis: {
        allowDecimals: false,
        title: {
            text: '{{$Male}}/{{$Female}}'
        }
    },
    tooltip: {
        formatter: function () {
            return '<b>' + this.series.name + '</b><br/>' +
                this.point.y + ' ' + this.point.name.toLowerCase();

        }
    }
});
</script>

<script type="text/javascript">

Highcharts.chart('container1', {
    chart: {
        type: 'column'
    },
    title: {
        text: 'Monthly Average Rainfall'
    },
    subtitle: {
        text: 'Source: WorldClimate.com'
    },
    xAxis: {
        categories: [
            'Jan',
            'Feb',
            'Mar',
            'Apr',
            'May',
            'Jun',
            'Jul',
            'Aug',
            'Sep',
            'Oct',
            'Nov',
            'Dec'
        ],
        crosshair: true
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Rainfall (mm)'
        }
    },
    tooltip: {
        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
            '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
        footerFormat: '</table>',
        shared: true,
        useHTML: true
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
        name: 'Tokyo',
        data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]

    }, {
        name: 'New York',
        data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]

    }, {
        name: 'London',
        data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2]

    }, {
        name: 'Berlin',
        data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1]

    }]
});
</script>
<script type="text/javascript">
Highcharts.chart('containerj', {

    chart: {
        type: 'column'
    },

    title: {
        text: ''
    },

    xAxis: {
        categories: [ '{{$Postgraduate}}','{{$Bachelor}}','{{$Diploma}}', '{{$Secondary}}', '{{$LSecondary}}']
    },

    yAxis: {
        allowDecimals: false,
        min: 0,
        title: {
            text: '{{$Male}}/{{$Female}}'
        }
    },

    tooltip: {
        formatter: function () {
            return '<b>' + this.x + '</b><br/>' +
                this.series.name + ': ' + this.y + '<br/>' +
                'Total: ' + this.point.stackTotal;
        }
    },

    plotOptions: {
        column: {
            stacking: 'normal'
        }
    },

    series: [{
        name: '{{$Administrative}}',
        data: [{{$mpgad}}, {{$mbaad}}, {{$mdipad}}, {{$msecad}}, {{$mlsecad}}],
        stack: 'male'
    },{
        name: '{{$Technical}}',
        data: [{{$mpgtec}}, {{$mbatec}}, {{$mdiptec}}, {{$msectec}}, {{$mlsectec}}],
        stack: 'male'
    },{
        name: '{{$TrainingCoordinator}}',
        data: [{{$mpgtc}}, {{$mbatc}}, {{$mdiptc}}, {{$msectc}}, {{$mlsectc}}],
        stack: 'male'
    },{
        name: '{{$TrainingOfficer}}',
        data: [{{$mpgto}}, {{$mbato}}, {{$mdipto}}, {{$msecto}}, {{$mlsecto}}],
        stack: 'male'
    },{
        name: '{{$Trainer}}',
        data: [{{$mpgtr}}, {{$mbatr}}, {{$mdiptr}}, {{$msectr}}, {{$mlsectr}}],
        stack: 'male'
    },{
        name: '{{$Teacher}}',
        data: [{{$mpgte}}, {{$mbate}}, {{$mdipte}}, {{$msecte}}, {{$mlsecte}}],
        stack: 'male'
    }, {
        name: '{{$User}}',
        data: [{{$mpgus}}, {{$mbaus}}, {{$mdipus}}, {{$msecus}}, {{$mlsecus}}],
        stack: 'male'
    },{
        name: '{{$Administrative}}',
        data: [{{$fpgad}}, {{$fbaad}}, {{$fdipad}}, {{$fsecad}}, {{$flsecad}}],
        stack: 'female'
    }, {
      name: '{{$Technical}}',
      data: [{{$fpgtec}}, {{$fbatec}}, {{$fdiptec}}, {{$fsectec}}, {{$flsectec}}],
        stack: 'female'
    }, {
      name: '{{$TrainingCoordinator}}',
      data: [{{$fpgtc}}, {{$fbatc}}, {{$fdiptc}}, {{$fsectc}}, {{$flsectc}}],
        stack: 'female'
    },{
      name: '{{$TrainingOfficer}}',
      data: [{{$fpgto}}, {{$fbato}}, {{$fdipto}}, {{$fsecto}}, {{$flsecto}}],
        stack: 'female'
    },{
        name: '{{$Trainer}}',
        data: [{{$fpgtr}}, {{$fbatr}}, {{$fdiptr}}, {{$fsectr}}, {{$flsectr}}],
        stack: 'female'
    },{
        name: '{{$Teacher}}',
        data: [{{$fpgte}}, {{$fbate}}, {{$fdipte}}, {{$fsecte}}, {{$flsecte}}],
        stack: 'female'
    },{
        name: '{{$User}}',
        data: [{{$fpgus}}, {{$fbaus}}, {{$fdipus}}, {{$fsecus}}, {{$flsecus}}],
        stack: 'female'
    }]
});
</script>
@endsection
