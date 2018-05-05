<div class="top_nav">
  <div class="nav_menu">
    <nav>
      <div class="nav toggle">
        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
      </div>
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
      <ul class="nav navbar-nav navbar-right">
        <li class="">
          <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
            <img src="{{asset("/bower_components/admin-lte/dist/img/logo.png")}}g" alt="">{{ Auth::user()->name }}
            <span class=" fa fa-angle-down"></span>
          </a>
          <ul class="dropdown-menu dropdown-usermenu pull-right">
            <li><a href="{{url('/home/profile')}}"> {{trans('cpanel.Profile')}}</a></li>
            <li>
              <a href="{{ route('logout') }}" onclick="event.preventDefault();
                     document.getElementById('logout-form').submit();"><i class="fa fa-sign-out pull-right"></i> {{trans('cpanel.Sign-out')}}</a>
                     <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                         {{ csrf_field() }}
                     </form>
                   </li>
          </ul>
        </li>

      
      </ul>
    </nav>
  </div>
</div>
