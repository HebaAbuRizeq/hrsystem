<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
  <div class="menu_section">
    <h3>General</h3>
    <ul class="nav side-menu">
      <li><a href="{{ url('home') }}"><i class="fa fa-home"></i> {{trans('cpanel.Dashboard')}} </a></li>
      <li><a href="{{ url('cpanel/employee') }}"><i class="fa fa-user"></i>{{trans('cpanel.Employee')}}</a></li>
      <li><a href="{{ url('cpanel/administration') }}"><i class="fa fa-laptop"></i> {{trans('cpanel.Administration')}}</a></li>

      <li><a><i class="fa fa-edit"></i> {{trans('cpanel.Administrative_Sequence')}} <span class="fa fa-chevron-down"></span></a>
        <ul class="nav child_menu">
          <li><a href="{{ url('cpanel/assistant') }}">{{trans('cpanel.Assistant')}}</a></li>
          <li><a href="{{ url('cpanel/directorate') }}"> {{trans('cpanel.Directorate')}}</a></li>
          <li><a href="{{ url('cpanel/department') }}">{{trans('cpanel.Department')}}</a></li>
          <li><a href="{{ url('cpanel/region') }}">{{trans('cpanel.Region')}}</a></li>
          <li><a href="{{ url('cpanel/institute') }}"> {{trans('cpanel.Institute')}}</a></li>
        </ul>
      </li>
      <li><a><i class="fa fa-desktop"></i> {{trans('cpanel.System_Codes')}}<span class="fa fa-chevron-down"></span></a>
        <ul class="nav child_menu">
          <li><a href="{{ url('cpanel/governate') }}">{{trans('cpanel.Governate')}}</a></li>
          <li><a href="{{ url('cpanel/job') }}">{{trans('cpanel.Job')}}</a></li>
          <li><a href="{{ url('cpanel/qualification') }}">{{trans('cpanel.Qualification')}}</a></li>
          <li><a href="{{ url('cpanel/specialization') }}">{{trans('cpanel.Specialization')}}</a></li>
          <li><a href="{{ url('cpanel/recruitmen') }}">{{trans('cpanel.Recruitmen')}}</a></li>
          <li><a href="{{ url('cpanel/category') }}">{{trans('cpanel.Category')}}</a></li>
          <li><a href="{{ url('cpanel/degree') }}">{{trans('cpanel.Degree')}}</a></li>
          <li><a href="{{ url('cpanel/status') }}">{{trans('cpanel.Status')}}</a></li>
        </ul>
      </li>
      <li><a href="{{ url('home/report') }}"><i class="fa fa-bar-chart-o"></i> {{trans('cpanel.Report')}} </a></li>
    </ul>
  </div>
  <div class="menu_section">
    <h3></h3>
    <ul class="nav side-menu">

      <li><a href="javascript:void(0)"><i class="fa fa-book"></i> {{trans('cpanel.Documentation')}}</a></li>
    </ul>
  </div>

</div>
