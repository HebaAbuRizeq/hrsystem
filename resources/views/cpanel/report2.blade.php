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

          <h2>{{trans('report.Report')}} : {{trans('report.Title')}}</h2>

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



              <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

              <table id="datatable">
                  <thead>
                      <tr>
                          <th></th>
                          <th>{{trans('report.Male')}}</th>
                          <th>{{trans('report.Female')}}</th>
                      </tr>
                  </thead>
                  <tbody>
                      <tr>
                          <th>{{trans('report.Postgraduate')}}</th>
                          <td>{{$mpgad+$mpgtc+$mpgto+$mpgtr+$mpgte+$mpgus+$mpgtec}}</td>
                          <td>{{$fpgad+$fpgtc+$fpgto+$fpgtr+$fpgte+$fpgus+$fpgtec}}</td>
                      </tr>
                      <tr>
                        <th>{{trans('report.Bachelor')}}</th>
                        <td>{{$mbaad+$mbatc+$mbato+$mbatr+$mbate+$mbaus+$mbatec}}</td>
                        <td>{{$fbaad+$fbatc+$fbato+$fbatr+$fbate+$fbaus+$fbatec}}</td>
                      </tr>
                      <tr>
                          <th>{{trans('report.Diploma')}}</th>
                          <td>{{$mdipad+$mdiptc+$mdipto+$mdiptr+$mdipte+$mdipus+$mdiptec}}</td>
                          <td>{{$fdipad+$fdiptc+$fdipto+$fdiptr+$fdipte+$fdipus+$fdiptec}}</td>
                      </tr>
                      <tr>
                          <th>{{trans('report.Secondary')}}</th>
                          <td>{{$msecad+$msectc+$msecto+$msectr+$msecte+$msecus+$msectec}}</td>
                          <td>{{$fsecad+$fsectc+$fsecto+$fsectr+$fsecte+$fsecus+$fsectec}}</td>
                      </tr>
                      <tr>
                          <th>{{trans('report.LSecondary')}}</th>
                          <td>{{$mlsecad+$mlsectc+$mlsecto+$mlsectr+$mlsecte+$mlsecus+$mlsectec}}</td>
                          <td>{{$flsecad+$flsectc+$flsecto+$flsectr+$flsecte+$flsecus+$flsectec}}</td>

                      </tr>
                  </tbody>
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
        },

    },

    plotOptions: {
        column: {
            stacking: 'normal'
        }
    },

    series: [

      {
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
