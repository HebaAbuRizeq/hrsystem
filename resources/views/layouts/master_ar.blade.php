<!DOCTYPE html>
<html lang="ar">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>{{trans('cpanel.vtc')}} </title>


    <link href="//www.fontstatic.com/f=bahij" rel="stylesheet" type="text/css" />
    <!-- Bootstrap -->
    <link href="{{ asset ("bower_components/gentelella-rtl/vendors/bootstrap/dist/css/bootstrap.min.css")}}" rel="stylesheet">
    <link href="{{ asset ("bower_components/gentelella-rtl/vendors/bootstrap-rtl/dist/css/bootstrap-rtl.min.css")}}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{ asset ("bower_components/gentelella-rtl/vendors/font-awesome/css/font-awesome.min.css")}}" rel="stylesheet">
    <!-- NProgress -->
    <link href="{{ asset ("bower_components/gentelella-rtl/vendors/nprogress/nprogress.css")}}" rel="stylesheet">
    <!-- iCheck -->
    <link href="{{ asset ("bower_components/gentelella-rtl/vendors/iCheck/skins/flat/green.css")}}" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="{{ asset ("bower_components/gentelella-rtl/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css")}}" rel="stylesheet">
    <!-- JQVMap -->
    <link href="{{ asset ("bower_components/gentelella-rtl/vendors/jqvmap/dist/jqvmap.min.css")}}" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->

    <link href="{{ asset ("bower_components/gentelella-rtl/vendors/bootstrap-daterangepicker/daterangepicker.css")}}" rel="stylesheet">
    <link href="{{ asset("/bower_components/gentelella/vendors/datepicker/datepicker3.css")}}" rel="stylesheet" type="text/css" />

    <!-- Custom Theme Style -->
    <link href="{{ asset ("bower_components/gentelella-rtl/build/css/custom.min.css")}}" rel="stylesheet">
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
                      <span>{{ Auth::user()->name }}</span>
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
                    <a data-toggle="tooltip" data-placement="top" title="إعدادات">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="تكبير الشاشة">
                        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="إغلق">
                        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="خروج">
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

        <!-- page content -->
        @yield('content')
        <!-- /page content -->

        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            {{trans('cpanel.Copyright')}}&copy; 2018  {{trans('cpanel.All-rights-reserved')}}  <strong>{{trans('cpanel.vtc')}}</a>.</strong>
          </div>
          <div class="pull-left">
          {{trans('cpanel.Designdevelopment')}}  <a href="{{url('/home/copy')}}">
            Heba Abu Rizeq
          <!--  <img src="{{asset("/bower_components/gentelella/production/images/HebaLogo2.png")}}" height="50px" width="" >-->

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
<script src="{{ asset ("bower_components/gentelella/vendors/datepicker/bootstrap-datepicker.js")}}"></script>

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

<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>

@yield('inline_js')

<!-- Flot -->
<script>
    $(document).ready(function () {
        var data1 = [
            [gd(2012, 1, 1), 17],
            [gd(2012, 1, 2), 74],
            [gd(2012, 1, 3), 6],
            [gd(2012, 1, 4), 39],
            [gd(2012, 1, 5), 20],
            [gd(2012, 1, 6), 85],
            [gd(2012, 1, 7), 7]
        ];

        var data2 = [
            [gd(2012, 1, 1), 82],
            [gd(2012, 1, 2), 23],
            [gd(2012, 1, 3), 66],
            [gd(2012, 1, 4), 9],
            [gd(2012, 1, 5), 119],
            [gd(2012, 1, 6), 6],
            [gd(2012, 1, 7), 9]
        ];
        $("#canvas_dahs").length && $.plot($("#canvas_dahs"), [
            data1, data2
        ], {
            series: {
                lines: {
                    show: false,
                    fill: true
                },
                splines: {
                    show: true,
                    tension: 0.4,
                    lineWidth: 1,
                    fill: 0.4
                },
                points: {
                    radius: 0,
                    show: true
                },
                shadowSize: 2
            },
            grid: {
                verticalLines: true,
                hoverable: true,
                clickable: true,
                tickColor: "#d5d5d5",
                borderWidth: 1,
                color: '#fff'
            },
            colors: ["rgba(38, 185, 154, 0.38)", "rgba(3, 88, 106, 0.38)"],
            xaxis: {
                tickColor: "rgba(51, 51, 51, 0.06)",
                mode: "time",
                tickSize: [1, "day"],
                //tickLength: 10,
                axisLabel: "تاریخ",
                axisLabelUseCanvas: true,
                axisLabelFontSizePixels: 12,
                axisLabelFontFamily: 'B Yekan, Tahoma, Arial',
                axisLabelPadding: 10
            },
            yaxis: {
                ticks: 8,
                tickColor: "rgba(51, 51, 51, 0.06)",
            },
            tooltip: false
        });

        function gd(year, month, day) {
            return new Date(year, month - 1, day).getTime();
        }
    });
</script>
<!-- /Flot -->

<!-- JQVMap -->
<script>
    $(document).ready(function () {
        $('#world-map-gdp').vectorMap({
            map: 'world_en',
            backgroundColor: null,
            color: '#ffffff',
            hoverOpacity: 0.7,
            selectedColor: '#666666',
            enableZoom: true,
            showTooltip: true,
            values: sample_data,
            scaleColors: ['#E6F2F0', '#149B7E'],
            normalizeFunction: 'polynomial'
        });
    });
</script>
<!-- /JQVMap -->

<!-- Skycons -->
<script>
    $(document).ready(function () {
        var icons = new Skycons({
                "color": "#73879C"
            }),
            list = [
                "clear-day", "clear-night", "partly-cloudy-day",
                "partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
                "fog"
            ],
            i;

        for (i = list.length; i--;)
            icons.set(list[i], list[i]);

        icons.play();
    });
</script>
<!-- /Skycons -->

<!-- Doughnut Chart -->
<script>
    $(document).ready(function () {
        var options = {
            legend: false,
            responsive: false
        };

        new Chart(document.getElementById("canvas1"), {
            type: 'doughnut',
            tooltipFillColor: "rgba(51, 51, 51, 0.55)",
            data: {
                labels: [
                    "سیمبین",
                    "بلکبری",
                    "دیگر",
                    "اندروید",
                    "IOS"
                ],
                datasets: [{
                    data: [15, 20, 30, 10, 30],
                    backgroundColor: [
                        "#BDC3C7",
                        "#9B59B6",
                        "#E74C3C",
                        "#26B99A",
                        "#3498DB"
                    ],
                    hoverBackgroundColor: [
                        "#CFD4D8",
                        "#B370CF",
                        "#E95E4F",
                        "#36CAAB",
                        "#49A9EA"
                    ]
                }]
            },
            options: options
        });
    });
</script>
<!-- /Doughnut Chart -->

<!-- bootstrap-daterangepicker -->
<script>
    $(document).ready(function () {

        var cb = function (start, end, label) {
            console.log(start.toISOString(), end.toISOString(), label);
            $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        };

        var optionSet1 = {
            startDate: moment().subtract(29, 'days'),
            endDate: moment(),
            minDate: '01/01/2012',
            maxDate: '12/31/2015',
            dateLimit: {
                days: 60
            },
            showDropdowns: true,
            showWeekNumbers: true,
            timePicker: false,
            timePickerIncrement: 1,
            timePicker12Hour: true,
            ranges: {
                'امروز': [moment(), moment()],
                'دیروز': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                '7 روز گذشته': [moment().subtract(6, 'days'), moment()],
                '30 روز گذشته': [moment().subtract(29, 'days'), moment()],
                'این ماه': [moment().startOf('month'), moment().endOf('month')],
                'ماه قبل': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            },
            opens: 'left',
            buttonClasses: ['btn btn-default'],
            applyClass: 'btn-small btn-primary',
            cancelClass: 'btn-small',
            format: 'MM/DD/YYYY',
            separator: ' to ',
            locale: {
                direction: "rtl",
                applyLabel: 'ارسال',
                cancelLabel: 'پاک',
                fromLabel: 'از',
                toLabel: 'به',
                customRangeLabel: 'سفارشی',
                daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                firstDay: 1
            },
        };
        $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));
        $('#reportrange').daterangepicker(optionSet1, cb);
        $('#reportrange').on('show.daterangepicker', function () {
            console.log("show event fired");
        });
        $('#reportrange').on('hide.daterangepicker', function () {
            console.log("hide event fired");
        });
        $('#reportrange').on('apply.daterangepicker', function (ev, picker) {
            console.log("apply event fired, start/end dates are " + picker.startDate.format('MMMM D, YYYY') + " to " + picker.endDate.format('MMMM D, YYYY'));
        });
        $('#reportrange').on('cancel.daterangepicker', function (ev, picker) {
            console.log("cancel event fired");
        });
        $('#options1').click(function () {
            $('#reportrange').data('daterangepicker').setOptions(optionSet1, cb);
        });
        $('#options2').click(function () {
            $('#reportrange').data('daterangepicker').setOptions(optionSet2, cb);
        });
        $('#destroy').click(function () {
            $('#reportrange').data('daterangepicker').remove();
        });
    });
</script>
<!-- /bootstrap-daterangepicker -->

<!-- gauge.js -->
<script>
    var opts = {
        lines: 12,
        angle: 0,
        lineWidth: 0.4,
        pointer: {
            length: 0.75,
            strokeWidth: 0.042,
            color: '#1D212A'
        },
        limitMax: 'false',
        colorStart: '#1ABC9C',
        colorStop: '#1ABC9C',
        strokeColor: '#F0F3F3',
        generateGradient: true
    };
    var target = document.getElementById('foo'),
        gauge = new Gauge(target).setOptions(opts);

    gauge.maxValue = 6000;
    gauge.animationSpeed = 32;
    gauge.set(3200);
    gauge.setTextField(document.getElementById("gauge-text"));
</script>
<!-- /gauge.js -->

</body>
</html>
