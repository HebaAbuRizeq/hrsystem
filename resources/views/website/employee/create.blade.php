<!-- create.blade.php -->
<?php
$firstname_ar = trans('variable.firstname_ar');
$secondname_ar = trans('variable.secondname_ar');
$thirdname_ar = trans('variable.thirdname_ar');
$lastname_ar = trans('variable.lastname_ar');
$firstname_en = trans('variable.firstname_en');
$secondname_en = trans('variable.secondname_en');
$thirdname_en = trans('variable.thirdname_en');
$lastname_en = trans('variable.lastname_en');
$Name_En = trans('variable.Name_En');

?>
@extends('cpanel.employee.base')
@section('action-content')
<!-- row -->
<div class="row">

  <!-- col-md-12 col-sm-12 col-xs-12 -->
  <div class="col-md-12 col-sm-12 col-xs-12">

    <!-- x_panel -->
    <div class="x_panel">

      <!-- x_title -->
      <div class="x_title">

        <h2>{{trans('employee.Add_New_Employee')}}</h2>

        <!-- panel_toolbox -->
        <ul class="nav navbar-right panel_toolbox">
          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
          </li>
            <!-- dropdown
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>

            <ul class="dropdown-menu" role="menu">
              <li><a href="#">Settings 1</a>
              </li>
              <li><a href="#">Settings 2</a>
              </li>
            </ul>

          </li>
          dropdown -->
          <li><a class="close-link"><i class="fa fa-close"></i></a>
          </li>
        </ul>
        <!-- /panel_toolbox -->

        <div class="clearfix"></div>

      </div>
      <!-- /x_title -->

      @if ($errors->any())
          <div class="alert alert-danger">
              <ul>
                  @foreach ($errors->all() as $error)
                      <li>{{ $error }}</li>
                  @endforeach
              </ul>
          </div><br />
          @endif
          @if (\Session::has('success'))
          <div class="alert alert-success">
              <p>{{ \Session::get('success') }}</p>
          </div><br />
          @endif
      <!-- x_content -->
      <div class="x_content">
        <!-- Form -->
        <form method="POST" action="{{url('cpanel/employee')}}" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
          {{csrf_field()}}
          <!-- Administration -->
          <div class="form-group">
                   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Administration')}}">  {{trans('cpanel.Administration')}}
                   </label>
                   <div class="col-md-6 col-sm-6 col-xs-12">
                     <select class="form-control" name="administration_id">
                         @foreach ($administration as $administration)
                             <option value="{{$administration->id}}">{{$administration->$Name_En}}</option>
                         @endforeach
                     </select>
                   </div>
                 </div>
          <!-- /Administration -->
          <!-- Assistant -->
          <div class="form-group">
                   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Assistant')}}">  {{trans('cpanel.Assistant')}}
                   </label>
                   <div class="col-md-6 col-sm-6 col-xs-12">
                     <select class="form-control" name="assistant_id">
                       <option value="">{{trans('assistant.Select_Assistant')}}</option>
                       @foreach ($assistant as $assistant)
                             <option value="{{$assistant->id}}">{{$assistant->$Name_En}}</option>
                         @endforeach
                     </select>
                   </div>
                 </div>
          <!-- /Assistant -->
          <!-- Directorate/Region-->
          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Directorate')}}">{{trans('cpanel.Directorate')}}
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select class="form-control" name="directorate_id">
                <option value="" disabled="true" selected="true">{{trans('cpanel.Directorate')}}</option>
                @foreach($directorate as $directorate)
                 @if(empty($directorate -> assistant_id))
                      <option value="{{$directorate->id}}">{{$directorate->$Name_En}}</option>
                        @endif
                  @endforeach
              </select>
            </div>
          </div>
          <!-- /Directorate/Region-->
          <!-- Department/Institute-->
          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Directorate')}}">{{trans('cpanel.Directorate')}}
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select class="form-control" name="department_id">
                <option value="" disabled="true" selected="true">{{trans('cpanel.Department')}}</option>
                @foreach($department as $department)
                 @if(empty($department -> directorate_id))
                      <option value="{{$department->id}}">{{$department->$Name_En}}</option>
                        @endif
                  @endforeach
              </select>
            </div>
          </div>
          <!-- /Department/Institute-->
          <!-- ID Number,Functional Number,User Name -->
          <div class="row">
            <label class="col-md-2 margin-left-40"></label>
            <label class="col-md-1 " style="width:2%;"><span class="required">*</span></label>
          <div class="col-md-3 col-sm-12 col-xs-12 form-group ">
            <input type="text" placeholder="{{trans('employee.sn')}}" class="form-control">
          </div>
          <label class="col-md-2 required" style="width:2%;"><span class="required">*</span></label>
          <div class="col-md-3 col-sm-12 col-xs-12 form-group">
            <input type="text" placeholder=".{{trans('employee.emp_no')}}" class="form-control">
          </div>
          <label class="col-md-2 required" style="width:2%;"><span class="required">*</span></label>
          <div class="col-md-3 col-sm-12 col-xs-12 form-group">
            <input type="text" placeholder="{{trans('employee.username')}}" class="form-control">
          </div>
        </div>
        <!-- /ID Number,Functional Number,User Name -->
        <!-- Mobile,Ext,Email  -->
        <div class="row">
          <label class="col-md-2 margin-left-40"></label>
          <label class="col-md-1 " style="width:2%;"><span class="required">*</span></label>
        <div class="col-md-3 col-sm-12 col-xs-12 form-group ">
          <input type="text" placeholder="{{trans('employee.mobile')}}" class="form-control">
        </div>
        <label class="col-md-2 required" style="width:2%;"><span class="required">*</span></label>
        <div class="col-md-3 col-sm-12 col-xs-12 form-group">
          <input type="text" placeholder=".{{trans('employee.Ext')}}" class="form-control">
        </div>
        <label class="col-md-2 required" style="width:2%;"><span class="required">*</span></label>
        <div class="col-md-3 col-sm-12 col-xs-12 form-group">
          <input type="text" placeholder="{{trans('cpanel.Email')}}" class="form-control">
        </div>
      </div>
      <!-- /Mobile,Ext,Email  -->
      <!-- Job  -->
      <div class="row">
        <label class="col-md-2 margin-left-40"></label>
        <label class="col-md-1 " style="width:2%;"><span class="required">*</span></label>
      <div class="col-md-3 col-sm-12 col-xs-12 form-group ">
        <select class="form-control" name="job_id">
          <option value="" selected="selected">{{trans('employee.Job')}} </option>
          @foreach ($job as $job)
              <option value="{{$job->id}}">{{$job->$Name_En}}</option>
          @endforeach
        </select>
         </div>
      <label class="col-md-2 required" style="width:2%;"><span class="required">*</span></label>
      <div class="col-md-3 col-sm-12 col-xs-12 form-group">
        <select class="form-control" name="rjob_id">
          <option value="" selected="selected">{{trans('employee.Rjob')}} </option>
          @foreach ($rjob as $rjob)
              <option value="{{$rjob->id}}">{{$rjob->$Name_En}}</option>
          @endforeach
        </select>
         </div>
      <label class="col-md-2 required" style="width:2%;"><span class="required">*</span></label>
      <div class="col-md-3 col-sm-12 col-xs-12 form-group">
        <select class="form-control" name="cjob_id">
          <option value="" selected="selected">{{trans('employee.Cjob')}} </option>
          @foreach ($cjob as $cjob)
              <option value="{{$cjob->id}}">{{$cjob->$Name_En}}</option>
          @endforeach
        </select>
            </div>
    </div>
    <!-- /Job  -->
          <!-- Full name Arabic -->
          <div class="row">
            <label class="col-md-2 margin-left-40"></label>
            <label class="col-md-1 " style="width:2%;"><span class="required">*</span></label>
          <div class="col-md-2 col-sm-12 col-xs-12 form-group ">
            <input type="text" placeholder="{{trans('employee.firstname_ar')}}" class="form-control">
          </div>
          <label class="col-md-2 required" style="width:2%;"><span class="required">*</span></label>
          <div class="col-md-2 col-sm-12 col-xs-12 form-group">
            <input type="text" placeholder=".{{trans('employee.secondname_ar')}}" class="form-control">
          </div>
          <label class="col-md-2 required" style="width:2%;"><span class="required">*</span></label>
          <div class="col-md-2 col-sm-12 col-xs-12 form-group">
            <input type="text" placeholder="{{trans('employee.thirdname_ar')}}" class="form-control">
          </div>
          <label class="col-md-2 required" style="width:2%;"><span class="required">*</span></label>
          <div class="col-md-2 col-sm-12 col-xs-12 form-group">
            <input type="text" placeholder="{{trans('employee.lastname_ar')}}" class="form-control">
          </div>
        </div>
        <!-- /Full name Arabic -->
        <!-- Full name English -->
        <div class="row">
          <label class="col-md-2 margin-left-40"></label>
          <label class="col-md-1 " style="width:2%;"><span class="required"></span></label>
        <div class="col-md-2 col-sm-12 col-xs-12 form-group ">
          <input type="text" placeholder="{{trans('employee.firstname_en')}}" class="form-control">
        </div>
        <label class="col-md-2 required" style="width:2%;"><span class="required"></span></label>
        <div class="col-md-2 col-sm-12 col-xs-12 form-group">
          <input type="text" placeholder="{{trans('employee.secondname_en')}}" class="form-control">
        </div>
        <label class="col-md-2 required" style="width:2%;"><span class="required"></span></label>
        <div class="col-md-2 col-sm-12 col-xs-12 form-group">
          <input type="text" placeholder="{{trans('employee.thirdname_en')}}" class="form-control">
        </div>
        <label class="col-md-2 required" style="width:2%;"><span class="required"></span></label>
        <div class="col-md-2 col-sm-12 col-xs-12 form-group">
          <input type="text" placeholder="{{trans('employee.lastname_en')}}" class="form-control">
        </div>
      </div>
      <!-- /Full name English -->
      <!-- Recruitmen,Category,Degree,yearofdegree -->
      <div class="row">
        <label class="col-md-2 margin-left-40"></label>
        <label class="col-md-1 " style="width:2%;"></label>
      <div class="col-md-2 col-sm-12 col-xs-12 form-group ">
        <select class="form-control" name="recruitmen_id">
          <option value="" selected="selected">{{trans('employee.Recruitmen')}} </option>
          @foreach ($recruitmen as $recruitmen)
              <option value="{{$recruitmen->id}}">{{$recruitmen->$Name_En}}</option>
          @endforeach
        </select>
      </div>
      <label class="col-md-2 required" style="width:2%;"></label>
      <div class="col-md-2 col-sm-12 col-xs-12 form-group">
        <select class="form-control" name="category_id">
          <option value="" selected="selected">{{trans('employee.Category')}} </option>
          @foreach ($category as $category)
              <option value="{{$category->id}}">{{$category->$Name_En}}</option>
          @endforeach
        </select>
            </div>
      <label class="col-md-2 required" style="width:2%;"></label>
      <div class="col-md-2 col-sm-12 col-xs-12 form-group">
        <select class="form-control" name="degree_id">
          <option value="" selected="selected">{{trans('employee.Degree')}} </option>
          @foreach ($degree as $degree)
              <option value="{{$degree->id}}">{{$degree->$Name_En}}</option>
          @endforeach
        </select>
        </div>
      <label class="col-md-2 required" style="width:2%;"></label>
      <div class="col-md-2 col-sm-12 col-xs-12 form-group">
        <input type="text" placeholder="{{trans('employee.yearofdegree')}}" class="form-control">
       </div>
    </div>
    <!-- /Recruitmen,Category,Degree,yearofdegree -->
    <!-- Qualification,Specialization,Status,Gender -->
    <div class="row">
      <label class="col-md-2 margin-left-40"></label>
      <label class="col-md-1 " style="width:2%;"></label>
    <div class="col-md-2 col-sm-12 col-xs-12 form-group ">
      <select class="form-control" name="qualification_id">
        <option value="" selected="selected">{{trans('employee.Qualification')}} </option>
        @foreach ($qualification as $qualification)
            <option value="{{$qualification->id}}">{{$qualification->$Name_En}}</option>
        @endforeach
      </select>
    </div>
    <label class="col-md-2" style="width:2%;"></label>
    <div class="col-md-2 col-sm-12 col-xs-12 form-group">
      <select class="form-control" name="specialization_id">
        <option value="" selected="selected">{{trans('employee.Specialization')}} </option>
        @foreach ($specialization as $specialization)
            <option value="{{$specialization->id}}">{{$specialization->$Name_En}}</option>
        @endforeach
      </select>
          </div>
    <label class="col-md-2 required" style="width:2%;"></label>
    <div class="col-md-2 col-sm-12 col-xs-12 form-group">
      <select class="form-control" name="status_id">
        <option value="" selected="selected">{{trans('employee.Status')}} </option>
        @foreach ($status as $status)
            <option value="{{$status->id}}">{{$status->$Name_En}}</option>
        @endforeach
      </select>
      </div>
    <label class="col-md-2 required" style="width:2%;"></label>
    <div class="col-md-2 col-sm-12 col-xs-12 form-group">
      <select class="form-control" name="gender_id">
        <option value="" selected="selected">{{trans('employee.Gender')}} </option>
        @foreach ($gender as $gender)
            <option value="{{$gender->id}}">{{$gender->$Name_En}}</option>
        @endforeach
      </select>     </div>
  </div>
  <!-- /Qualification,Specialization,Status,Gender -->
  <!-- Date -->
    <div class="form-group">
             <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Assistant')}}">  {{trans('employee.dateofbirth')}}
             </label>
             <div class="col-md-3 col-sm-6 col-xs-12">
                  <div class="daterangepicker dropdown-menu ltr single opensright show-calendar picker_4 xdisplay"><div class="calendar left single" style="display: block;"><div class="daterangepicker_input"><input class="input-mini form-control active" type="text" name="daterangepicker_start" value="" style="display: none;"><i class="fa fa-calendar glyphicon glyphicon-calendar" style="display: none;"></i><div class="calendar-time" style="display: none;"><div></div><i class="fa fa-clock-o glyphicon glyphicon-time"></i></div></div><div class="calendar-table"><table class="table-condensed"><thead><tr><th class="prev available"><i class="fa fa-chevron-left glyphicon glyphicon-chevron-left"></i></th><th colspan="5" class="month">Oct 2016</th><th class="next available"><i class="fa fa-chevron-right glyphicon glyphicon-chevron-right"></i></th></tr><tr><th>Su</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th></tr></thead><tbody><tr><td class="weekend off available" data-title="r0c0">25</td><td class="off available" data-title="r0c1">26</td><td class="off available" data-title="r0c2">27</td><td class="off available" data-title="r0c3">28</td><td class="off available" data-title="r0c4">29</td><td class="off available" data-title="r0c5">30</td><td class="weekend available" data-title="r0c6">1</td></tr><tr><td class="weekend available" data-title="r1c0">2</td><td class="available" data-title="r1c1">3</td><td class="available" data-title="r1c2">4</td><td class="available" data-title="r1c3">5</td><td class="available" data-title="r1c4">6</td><td class="available" data-title="r1c5">7</td><td class="weekend available" data-title="r1c6">8</td></tr><tr><td class="weekend available" data-title="r2c0">9</td><td class="available" data-title="r2c1">10</td><td class="available" data-title="r2c2">11</td><td class="available" data-title="r2c3">12</td><td class="available" data-title="r2c4">13</td><td class="available" data-title="r2c5">14</td><td class="weekend available" data-title="r2c6">15</td></tr><tr><td class="weekend available" data-title="r3c0">16</td><td class="available" data-title="r3c1">17</td><td class="today active start-date active end-date available" data-title="r3c2">18</td><td class="available" data-title="r3c3">19</td><td class="available" data-title="r3c4">20</td><td class="available" data-title="r3c5">21</td><td class="weekend available" data-title="r3c6">22</td></tr><tr><td class="weekend available" data-title="r4c0">23</td><td class="available" data-title="r4c1">24</td><td class="available" data-title="r4c2">25</td><td class="available" data-title="r4c3">26</td><td class="available" data-title="r4c4">27</td><td class="available" data-title="r4c5">28</td><td class="weekend available" data-title="r4c6">29</td></tr><tr><td class="weekend available" data-title="r5c0">30</td><td class="available" data-title="r5c1">31</td><td class="off available" data-title="r5c2">1</td><td class="off available" data-title="r5c3">2</td><td class="off available" data-title="r5c4">3</td><td class="off available" data-title="r5c5">4</td><td class="weekend off available" data-title="r5c6">5</td></tr></tbody></table></div></div><div class="calendar right" style="display: none;"><div class="daterangepicker_input"><input class="input-mini form-control" type="text" name="daterangepicker_end" value="" style="display: none;"><i class="fa fa-calendar glyphicon glyphicon-calendar" style="display: none;"></i><div class="calendar-time" style="display: none;"><div></div><i class="fa fa-clock-o glyphicon glyphicon-time"></i></div></div><div class="calendar-table"><table class="table-condensed"><thead><tr><th></th><th colspan="5" class="month">Nov 2016</th><th class="next available"><i class="fa fa-chevron-right glyphicon glyphicon-chevron-right"></i></th></tr><tr><th>Su</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th></tr></thead><tbody><tr><td class="weekend off available" data-title="r0c0">30</td><td class="off available" data-title="r0c1">31</td><td class="available" data-title="r0c2">1</td><td class="available" data-title="r0c3">2</td><td class="available" data-title="r0c4">3</td><td class="available" data-title="r0c5">4</td><td class="weekend available" data-title="r0c6">5</td></tr><tr><td class="weekend available" data-title="r1c0">6</td><td class="available" data-title="r1c1">7</td><td class="available" data-title="r1c2">8</td><td class="available" data-title="r1c3">9</td><td class="available" data-title="r1c4">10</td><td class="available" data-title="r1c5">11</td><td class="weekend available" data-title="r1c6">12</td></tr><tr><td class="weekend available" data-title="r2c0">13</td><td class="available" data-title="r2c1">14</td><td class="available" data-title="r2c2">15</td><td class="available" data-title="r2c3">16</td><td class="available" data-title="r2c4">17</td><td class="available" data-title="r2c5">18</td><td class="weekend available" data-title="r2c6">19</td></tr><tr><td class="weekend available" data-title="r3c0">20</td><td class="available" data-title="r3c1">21</td><td class="available" data-title="r3c2">22</td><td class="available" data-title="r3c3">23</td><td class="available" data-title="r3c4">24</td><td class="available" data-title="r3c5">25</td><td class="weekend available" data-title="r3c6">26</td></tr><tr><td class="weekend available" data-title="r4c0">27</td><td class="available" data-title="r4c1">28</td><td class="available" data-title="r4c2">29</td><td class="available" data-title="r4c3">30</td><td class="off available" data-title="r4c4">1</td><td class="off available" data-title="r4c5">2</td><td class="weekend off available" data-title="r4c6">3</td></tr><tr><td class="weekend off available" data-title="r5c0">4</td><td class="off available" data-title="r5c1">5</td><td class="off available" data-title="r5c2">6</td><td class="off available" data-title="r5c3">7</td><td class="off available" data-title="r5c4">8</td><td class="off available" data-title="r5c5">9</td><td class="weekend off available" data-title="r5c6">10</td></tr></tbody></table></div></div><div class="ranges" style="display: none;"><div class="range_inputs"><button class="applyBtn btn btn-sm btn-success" type="button">Apply</button> <button class="cancelBtn btn btn-sm btn-default" type="button">Cancel</button></div></div></div>
                 <fieldset>
                   <div class="control-group">
                     <div class="controls">
                       <div class="col-md-11 xdisplay_inputx form-group has-feedback">
                         <input type="text" class="form-control has-feedback-left" id="single_cal4" placeholder="First Name" aria-describedby="inputSuccess2Status4">
                         <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
                         <span id="inputSuccess2Status4" class="sr-only">(success)</span>
                       </div>
                     </div>
                   </div>
                 </fieldset>
             </div>
           </div>
           <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Assistant')}}">  {{trans('employee.dateofhiring')}}
                    </label>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                         <div class="daterangepicker dropdown-menu ltr single opensright show-calendar picker_4 xdisplay"><div class="calendar left single" style="display: block;"><div class="daterangepicker_input"><input class="input-mini form-control active" type="text" name="daterangepicker_start" value="" style="display: none;"><i class="fa fa-calendar glyphicon glyphicon-calendar" style="display: none;"></i><div class="calendar-time" style="display: none;"><div></div><i class="fa fa-clock-o glyphicon glyphicon-time"></i></div></div><div class="calendar-table"><table class="table-condensed"><thead><tr><th class="prev available"><i class="fa fa-chevron-left glyphicon glyphicon-chevron-left"></i></th><th colspan="5" class="month">Oct 2016</th><th class="next available"><i class="fa fa-chevron-right glyphicon glyphicon-chevron-right"></i></th></tr><tr><th>Su</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th></tr></thead><tbody><tr><td class="weekend off available" data-title="r0c0">25</td><td class="off available" data-title="r0c1">26</td><td class="off available" data-title="r0c2">27</td><td class="off available" data-title="r0c3">28</td><td class="off available" data-title="r0c4">29</td><td class="off available" data-title="r0c5">30</td><td class="weekend available" data-title="r0c6">1</td></tr><tr><td class="weekend available" data-title="r1c0">2</td><td class="available" data-title="r1c1">3</td><td class="available" data-title="r1c2">4</td><td class="available" data-title="r1c3">5</td><td class="available" data-title="r1c4">6</td><td class="available" data-title="r1c5">7</td><td class="weekend available" data-title="r1c6">8</td></tr><tr><td class="weekend available" data-title="r2c0">9</td><td class="available" data-title="r2c1">10</td><td class="available" data-title="r2c2">11</td><td class="available" data-title="r2c3">12</td><td class="available" data-title="r2c4">13</td><td class="available" data-title="r2c5">14</td><td class="weekend available" data-title="r2c6">15</td></tr><tr><td class="weekend available" data-title="r3c0">16</td><td class="available" data-title="r3c1">17</td><td class="today active start-date active end-date available" data-title="r3c2">18</td><td class="available" data-title="r3c3">19</td><td class="available" data-title="r3c4">20</td><td class="available" data-title="r3c5">21</td><td class="weekend available" data-title="r3c6">22</td></tr><tr><td class="weekend available" data-title="r4c0">23</td><td class="available" data-title="r4c1">24</td><td class="available" data-title="r4c2">25</td><td class="available" data-title="r4c3">26</td><td class="available" data-title="r4c4">27</td><td class="available" data-title="r4c5">28</td><td class="weekend available" data-title="r4c6">29</td></tr><tr><td class="weekend available" data-title="r5c0">30</td><td class="available" data-title="r5c1">31</td><td class="off available" data-title="r5c2">1</td><td class="off available" data-title="r5c3">2</td><td class="off available" data-title="r5c4">3</td><td class="off available" data-title="r5c5">4</td><td class="weekend off available" data-title="r5c6">5</td></tr></tbody></table></div></div><div class="calendar right" style="display: none;"><div class="daterangepicker_input"><input class="input-mini form-control" type="text" name="daterangepicker_end" value="" style="display: none;"><i class="fa fa-calendar glyphicon glyphicon-calendar" style="display: none;"></i><div class="calendar-time" style="display: none;"><div></div><i class="fa fa-clock-o glyphicon glyphicon-time"></i></div></div><div class="calendar-table"><table class="table-condensed"><thead><tr><th></th><th colspan="5" class="month">Nov 2016</th><th class="next available"><i class="fa fa-chevron-right glyphicon glyphicon-chevron-right"></i></th></tr><tr><th>Su</th><th>Mo</th><th>Tu</th><th>We</th><th>Th</th><th>Fr</th><th>Sa</th></tr></thead><tbody><tr><td class="weekend off available" data-title="r0c0">30</td><td class="off available" data-title="r0c1">31</td><td class="available" data-title="r0c2">1</td><td class="available" data-title="r0c3">2</td><td class="available" data-title="r0c4">3</td><td class="available" data-title="r0c5">4</td><td class="weekend available" data-title="r0c6">5</td></tr><tr><td class="weekend available" data-title="r1c0">6</td><td class="available" data-title="r1c1">7</td><td class="available" data-title="r1c2">8</td><td class="available" data-title="r1c3">9</td><td class="available" data-title="r1c4">10</td><td class="available" data-title="r1c5">11</td><td class="weekend available" data-title="r1c6">12</td></tr><tr><td class="weekend available" data-title="r2c0">13</td><td class="available" data-title="r2c1">14</td><td class="available" data-title="r2c2">15</td><td class="available" data-title="r2c3">16</td><td class="available" data-title="r2c4">17</td><td class="available" data-title="r2c5">18</td><td class="weekend available" data-title="r2c6">19</td></tr><tr><td class="weekend available" data-title="r3c0">20</td><td class="available" data-title="r3c1">21</td><td class="available" data-title="r3c2">22</td><td class="available" data-title="r3c3">23</td><td class="available" data-title="r3c4">24</td><td class="available" data-title="r3c5">25</td><td class="weekend available" data-title="r3c6">26</td></tr><tr><td class="weekend available" data-title="r4c0">27</td><td class="available" data-title="r4c1">28</td><td class="available" data-title="r4c2">29</td><td class="available" data-title="r4c3">30</td><td class="off available" data-title="r4c4">1</td><td class="off available" data-title="r4c5">2</td><td class="weekend off available" data-title="r4c6">3</td></tr><tr><td class="weekend off available" data-title="r5c0">4</td><td class="off available" data-title="r5c1">5</td><td class="off available" data-title="r5c2">6</td><td class="off available" data-title="r5c3">7</td><td class="off available" data-title="r5c4">8</td><td class="off available" data-title="r5c5">9</td><td class="weekend off available" data-title="r5c6">10</td></tr></tbody></table></div></div><div class="ranges" style="display: none;"><div class="range_inputs"><button class="applyBtn btn btn-sm btn-success" type="button">Apply</button> <button class="cancelBtn btn btn-sm btn-default" type="button">Cancel</button></div></div></div>
                        <fieldset>
                          <div class="control-group">
                            <div class="controls">
                              <div class="col-md-11 xdisplay_inputx form-group has-feedback">
                                <input type="text" class="form-control has-feedback-left" id="single_cal3" placeholder="First Name" aria-describedby="inputSuccess2Status3">
                                <span class="fa fa-calendar-o form-control-feedback left" aria-hidden="true"></span>
                                <span id="inputSuccess2Status3" class="sr-only">(success)</span>
                              </div>
                            </div>
                          </div>
                        </fieldset>
                    </div>
                  </div>
<!-- /Date-->
<!-- Directorate/Region-->
<div class="form-group">
  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Directorate')}}">{{trans('employee.Photo')}}
  </label>
  <div class="col-md-6 col-sm-6 col-xs-12">
        <input type="file" id="picture" name="picture" required >
  </div>
</div>
<!-- /Directorate/Region-->
          <!-- English Employee -->
          <div class="form-group{{ $errors->has(trans('variable.Name_En')) ? ' has-error' : '' }}">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('variable.Name_En')}}">{{trans('employee.Employee_English')}} <span class="required" >*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
    <input type="text" maxlen="255" id="name" name="{{trans('variable.Name_En')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('employee.Employee_English')}}" value="{{ old(trans('employee.Name_En')) }}" />

            </div>
          </div>
          <!-- /English Employee -->
          <!-- Arabic Employee -->
          <div class="form-group{{ $errors->has(trans('variable.Name_Ar')) ? ' has-error' : '' }}">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('variable.Name_Ar')}}">{{trans('employee.Employee_Arabic')}}<span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="{{trans('variable.Name_Ar')}}" name="{{trans('variable.Name_Ar')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('employee.Employee_Arabic')}}" value="{{ old(trans('employee.Name_Ar')) }}">
            </div>
          </div>
          <!-- /Arabic Employee -->
          <!-- Phone -->
          <div class="form-group{{ $errors->has(trans('phone')) ? ' has-error' : '' }}">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="phone">{{trans('cpanel.Phone')}}<span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="name" name="phone" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Phone')}}" value="{{ old(trans('cpanel.Phone')) }}">
            </div>
          </div>
          <!-- /Phone -->
          <!-- Fax -->
          <div class="form-group{{ $errors->has(trans('fax')) ? ' has-error' : '' }}">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="fax">{{trans('cpanel.Fax')}}<span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="name" name="fax" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Fax')}}" value="{{ old('fax') }}" />

            </div>
          </div>
          <!-- /Fax -->
          <!-- Mobile -->
          <div class="form-group{{ $errors->has(trans('mobile')) ? ' has-error' : '' }}">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="mobile">{{trans('cpanel.Mobile')}}<span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="name" name="mobile" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Mobile')}}" value="{{ old(trans('cpanel.Mobile')) }}">
            </div>
          </div>
          <!-- /Mobile -->
          <!-- Email -->
          <div class="form-group{{ $errors->has(trans('email')) ? ' has-error' : '' }}">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">{{trans('cpanel.Email')}}<span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="name" name="email" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Email')}}" value="{{ old(trans('cpanel.Email')) }}">
            </div>
          </div>
          <!-- /Email -->
          <!-- Governate -->
          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Governate')}}">{{trans('cpanel.Governate')}}
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select class="form-control" name="governate_id">
                @foreach ($governate as $governate)
                    <option value="{{$governate->id}}">{{$governate->$Name_En}}</option>
                @endforeach
              </select>
            </div>
          </div>
          <!-- /Governate -->
          <!-- English Neighborhood -->
          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Neighborhood_English')}}">{{trans('cpanel.Neighborhood_English')}}
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="{{trans('variable.Neighborhood_En')}}" name="{{trans('variable.Neighborhood_En')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Neighborhood_English')}}" value="{{ old(trans('cpanel.Neighborhood_English')) }}">
            </div>
          </div>
          <!-- /English Neighborhood -->
          <!-- Arabic Neighborhood -->
          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Neighborhood_Arabic')}}">{{trans('cpanel.Neighborhood_Arabic')}}
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="{{trans('variable.Neighborhood_Ar')}}" name="{{trans('variable.Neighborhood_Ar')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Neighborhood_Arabic')}}" value="{{ old(trans('cpanel.Neighborhood_Arabic')) }}">
            </div>
          </div>
          <!-- /Arabic Neighborhood -->
          <!-- Englis Street -->
          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Street_English')}}">{{trans('cpanel.Street_English')}}
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="{{trans('variable.Street_En')}}" name="{{trans('variable.Street_En')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Street_English')}}" value="{{ old(trans('cpanel.Street_English')) }}">
            </div>
          </div>
          <!-- /English Street -->
          <!-- Arabic Street -->
          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Street_Arabic')}}">{{trans('cpanel.Street_Arabic')}}
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="{{trans('variable.Street_Ar')}}" name="{{trans('variable.Street_Ar')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Street_Arabic')}}" value="{{ old(trans('cpanel.Street_Arabic')) }}">
            </div>
          </div>
          <!-- /Arabic Street -->
          <!-- Lat -->
          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="lat">{{trans('cpanel.Lat')}}
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="name" name="lat" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Lat')}}" value="{{ old(trans('cpanel.Lat')) }}">
            </div>
          </div>
          <!-- /Lat -->
          <!-- Long -->
          <div class="form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="long">{{trans('cpanel.Long')}}
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="name" name="long" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Long')}}" value="{{ old(trans('cpanel.Long')) }}">
            </div>
          </div>
          <!-- /Long -->
          <!-- ln_solid -->
          <div class="ln_solid"></div>
          <!-- /ln_solid -->
          <!-- Submit Reset Back-->
          <div class="form-group">
            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
              <button onclick="location.href='{{ url('cpanel/employee') }}'" class="btn btn-primary" type="button">{{trans('cpanel.Back')}}</button>
              <button class="btn btn-primary" type="reset">{{trans('cpanel.Reset')}}</button>
              <button type="submit" class="btn btn-success">{{trans('cpanel.Submit')}}</button>
            </div>
          </div>
          <!-- /Submit Reset Back-->
        </form>
        <!-- /Form -->
        <script type="text/javascript">
      $("select[name='assistant_id']").change(function(){
      var assistant_id = $(this).val();
      var token = $("input[name='_token']").val();
      $.ajax({
      url: "<?php echo route('select-ajax') ?>",
      method: 'POST',
      data: {assistant_id:assistant_id, _token:token},
      success: function(data) {
      $("select[name='directorate_id'").html('');
      $("select[name='directorate_id'").html(data.options);
      }
      });
      });
      </script>
        <script type="text/javascript">
      $("select[name='directorate_id']").change(function(){
      var directorate_id = $(this).val();
      var token = $("input[name='_token']").val();
      $.ajax({
      url: "<?php echo route('select-ajax-dept') ?>",
      method: 'POST',
      data: {directorate_id:directorate_id, _token:token},
      success: function(data) {
      $("select[name='department_id'").html('');
      $("select[name='department_id'").html(data.options);
      }
      });
      });
      </script>
      </div>
      <!-- /x_content -->

    </div>
    <!-- /x_panel -->

  </div>
  <!-- /col-md-12 col-sm-12 col-xs-12 -->

</div>
<!-- /row -->


@endsection
