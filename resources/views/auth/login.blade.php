@extends('layouts.applogin')

@section('content')
<div class="limiter">
  <div class="container-login100">
    <div class="wrap-login100">
      <form class="login100-form validate-form" method="POST" action="{{ route('login')}}">
              {{ csrf_field() }}

        <span class="login100-form-title p-b-48">
        <!--  <img src="{{asset("/bower_components/gentelella/production/images/logopng.png")}}"  alt="User Image">-->
        </span>
        <span class="login100-form-title p-b-26">
          {{trans('cpanel.vtc')}}
        </span>

        <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
          <input class="input100" type="email" name="email">
          <span class="focus-input100" data-placeholder="{{trans('login.E-Mail_Address')}}"></span>
        </div>

        <div class="wrap-input100 validate-input" data-validate="Enter password">
          <span class="btn-show-pass">
            <i class="zmdi zmdi-eye"></i>
          </span>
          <input class="input100" type="password" name="password">
          <span class="focus-input100" data-placeholder="{{trans('login.Password')}}"></span>
        </div>

        <div class="container-login100-form-btn">
          <div class="wrap-login100-form-btn">
            <div class="login100-form-bgbtn"></div>
            <button type="submit" class="login100-form-btn">
            {{trans('login.Login')}}
            </button>
          </div>
          <div>
                  <ul class="nav navbar-nav">
                    <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          {{ Config::get('languages')[App::getLocale()] }}
          </a>
          <ul class="dropdown-menu">
          @foreach (Config::get('languages') as $lang => $language)
          @if ($lang != App::getLocale())
              <li>
                  <a href="{{ route('lang.switch', $lang) }}">{{$language}}</a>
              </li>
          @endif
          @endforeach
          </ul>
          </li>
            </ul>
          </div>
        </div>

  <!-- LANGUAGE BAR-->


  <!-- END LANGUAGE BAR-->

        <div class="text-center p-t-115">
          <span class="txt1">

        {{trans('cpanel.All-rights-reserved')}} © 2018. {{trans('cpanel.oom')}}
        <br>
{{trans('cpanel.Designdevelopment')}}: {{trans('cpanel.vtc')}}

        </div>
      </form>
    </div>
  </div>
</div>


<div id="dropDownSelect1"></div>

@endsection
