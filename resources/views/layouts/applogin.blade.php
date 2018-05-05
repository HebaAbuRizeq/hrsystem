<?php
$app= trans('variable.app');
$main= trans('variable.main');
?>
<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ trans('cpanel.vtc') }}</title>
    <link href="//www.fontstatic.com/f=bahij" rel="stylesheet" type="text/css" />

    <!-- Styles -->
    <link href="{{ asset($app)}}" rel="stylesheet">

    <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="{{ asset('/bower_components/Login_v2/images/icons/favicon.ico') }}"/>
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{ asset('/bower_components/Login_v2/vendor/bootstrap/css/bootstrap.min.css') }}">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{ asset('/bower_components/Login_v2/fonts/font-awesome-4.7.0/css/font-awesome.min.css') }}">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{ asset('/bower_components/Login_v2/fonts/iconic/css/material-design-iconic-font.min.css') }}">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{ asset('/bower_components/Login_v2/vendor/animate/animate.css') }}">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{ asset('/bower_components/Login_v2/vendor/css-hamburgers/hamburgers.min.css') }}">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{ asset('/bower_components/Login_v2/vendor/animsition/css/animsition.min.css') }}">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{ asset('/bower_components/Login_v2/vendor/select2/select2.min.css') }}">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{ asset('/bower_components/Login_v2/vendor/daterangepicker/daterangepicker.css') }}">
  <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="{{ asset('/bower_components/Login_v2/css/util.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset($main) }}">
  <!--===============================================================================================-->
  <link href="{{ asset('css/app.css')}}" rel="stylesheet">

</head>
<body >
    <div id="app">

        @yield('content')
    </div>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
    <!--===============================================================================================-->
    	<script src="{{ asset('/bower_components/Login_v2/vendor/jquery/jquery-3.2.1.min.js') }}"></script>
    <!--===============================================================================================-->
    	<script src="{{ asset('/bower_components/Login_v2/vendor/animsition/js/animsition.min.js') }}"></script>
    <!--===============================================================================================-->
    	<script src="{{ asset('/bower_components/Login_v2/vendor/bootstrap/js/popper.js') }}"></script>
    	<script src="{{ asset('/bower_components/Login_v2/vendor/bootstrap/js/bootstrap.min.js') }}"></script>
    <!--===============================================================================================-->
    	<script src="{{ asset('/bower_components/Login_v2/vendor/select2/select2.min.js') }}"></script>
    <!--===============================================================================================-->
    	<script src="{{ asset('/bower_components/Login_v2/vendor/daterangepicker/moment.min.js') }}"></script>
    	<script src="{{ asset('/bower_components/Login_v2/vendor/daterangepicker/daterangepicker.js') }}"></script>
    <!--===============================================================================================-->
    	<script src="{{ asset('/bower_components/Login_v2/vendor/countdowntime/countdowntime.js') }}"></script>
    <!--===============================================================================================-->
    	<script src="{{ asset('/bower_components/Login_v2/js/main.js') }}"></script>

</body>
</html>
