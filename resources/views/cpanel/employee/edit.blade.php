<!-- edit.blade.php -->
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


        <h2>{{trans('employee.Edit_Employee')}}</h2>

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
        <form method="post" action="{{action('EmployeeController@update', [$employee->id])}}" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                  {{csrf_field()}}
                  <input name="_method" type="hidden" value="PATCH">

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
                  <div class="row">
                    <label class="control-label col-md-3 col-sm-6 col-xs-6" for="{{trans('cpanel.Directorate')}}">{{trans('cpanel.Directorate')}} </label>
                    <div class="col-md-3 col-sm-6 col-xs-6">
                      <select class="form-control" name="directorate_id">
                        <option value="" disabled="true" selected="true">{{trans('cpanel.Directorate')}}</option>
                        @foreach($directorate as $directorate)
                         @if(empty($directorate -> assistant_id))
                              <option value="{{$directorate->id}}">{{$directorate->$Name_En}}</option>
                                @endif
                          @endforeach
                      </select>
                    </div>

                    <label class="control-label col-md-1 col-sm-3 col-xs-3" for="{{trans('cpanel.Region')}}">{{trans('cpanel.Region')}}
                    </label>
                    <div class="col-md-3 col-sm-3 col-xs-6">
                      <select class="form-control" name="region_id">
                        <option value="" disabled="true" selected="true">{{trans('cpanel.Region')}}</option>
                        @foreach($region as $region)
                         @if(empty($region -> assistant_id))
                              <option value="{{$region->id}}">{{$region->$Name_En}}</option>
                                @endif
                          @endforeach
                      </select>
                    </div>

                </div>
                </div>
                  <!-- /Directorate/Region-->
                <!-- Department/Institute-->
                <div class="row">
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Directorate')}}">{{trans('cpanel.Department')}}
                    </label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                      <select class="form-control" name="department_id">
                        <option value="" disabled="true" selected="true">{{trans('cpanel.Department')}}</option>
                        @foreach($department as $department)
                         @if(empty($department -> directorate_id))
                              <option value="{{$department->id}}">{{$department->$Name_En}}</option>
                                @endif
                          @endforeach
                      </select>
                    </div>

                    <label class="control-label col-md-1 col-sm-3 col-xs-3" for="{{trans('cpanel.Institute')}}">{{trans('cpanel.Institute')}}
                    </label>
                    <div class="col-md-3 col-sm-3 col-xs-6">
                      <select class="form-control" name="institute_id">
                        <option value="" disabled="true" selected="true">{{trans('cpanel.Institute')}}</option>
                        @foreach($institute as $institute)
                         @if(empty($institute -> region_id))
                              <option value="{{$institute->id}}">{{$institute->$Name_En}}</option>
                                @endif
                          @endforeach
                      </select>
                    </div>
                  </div>
                </div>
                  <!-- /Department/Institute-->
                  <!-- ID Number,Functional Number,User Name -->
                  <div class="row">
                    <label class="col-md-2 margin-left-40"></label>
                    <label class="col-md-1 " style="width:2%;"><span class="required">*</span></label>
                  <div class="col-md-3 col-sm-12 col-xs-12 form-group{{ $errors->has('sn') ? ' has-error' : '' }} ">
                    <input type="text"  name="sn" class="form-control" placeholder="{{trans('employee.sn')}}" value="{{ $employee->sn }}">


                  </div>
                  <label class="col-md-2 required" style="width:2%;"><span class="required">*</span></label>
                  <div class="col-md-3 col-sm-12 col-xs-12 form-group{{ $errors->has('emp_no') ? ' has-error' : '' }}">
                    <input type="text"  name="emp_no" class="form-control" placeholder="{{trans('employee.emp_no')}}" value="{{ $employee->emp_no }}">
                  </div>
                  <label class="col-md-2 required" style="width:2%;"><span class="required">*</span></label>
                  <div class="col-md-3 col-sm-12 col-xs-12 form-group{{ $errors->has('username') ? ' has-error' : '' }}">
                    <input type="text"  name="username" class="form-control" placeholder="{{trans('employee.username')}}" value="{{ $employee->username }}">
                  </div>
                </div>
                <!-- /ID Number,Functional Number,User Name -->
                <!-- Mobile,Ext,Email  -->
                <div class="row">
                  <label class="col-md-2 margin-left-40"></label>
                  <label class="col-md-1 " style="width:2%;"><span class="required">*</span></label>


                <div class="col-md-3 col-sm-12 col-xs-12 form-group{{ $errors->has('mobile') ? ' has-error' : '' }}">
                  <input type="text"  name="mobile" class="form-control" placeholder="{{trans('cpanel.Mobile')}}" value="{{ $employee->mobile }}">
                </div>
                <label class="col-md-2 required" style="width:2%;"></label>
                <div class="col-md-3 col-sm-12 col-xs-12 form-group{{ $errors->has('ext') ? ' has-error' : '' }}">
                  <input type="text" name="ext" class="form-control" placeholder="{{trans('employee.Ext')}}" value="{{ $employee->ext }}">
                </div>

                <label class="col-md-2 required" style="width:2%;"></label>
                <div class=" col-md-3 col-sm-12 col-xs-12 form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                  <input type="text" name="email" class="form-control" placeholder="{{trans('cpanel.Email')}}" value="{{ $employee->email }}">

                </div>
                </div>
                <!-- /Mobile,Ext,Email  -->
                  <!-- Full name Arabic -->
                  <div class="row">
                    <label class="col-md-2 margin-left-40"></label>
                    <label class="col-md-1 " style="width:2%;"><span class="required">*</span></label>
                  <div class="col-md-2 col-sm-12 col-xs-12 form-group{{ $errors->has('firstname_ar') ? ' has-error' : '' }} ">
                    <input type="text" name="firstname_ar" class="form-control" placeholder="{{trans('employee.firstname_ar')}}" value="{{$employee->firstname_ar }}">

                  </div>
                  <label class="col-md-2 required" style="width:2%;"><span class="required">*</span></label>
                  <div class="col-md-2 col-sm-12 col-xs-12 form-group{{ $errors->has('secondname_ar') ? ' has-error' : '' }}">
                    <input type="text" name="secondname_ar" class="form-control" placeholder="{{trans('employee.secondname_ar')}}" value="{{$employee->secondname_ar }}">

                  </div>
                  <label class="col-md-2 required" style="width:2%;"><span class="required">*</span></label>
                  <div class="col-md-2 col-sm-12 col-xs-12 form-group{{ $errors->has('thirdname_ar') ? ' has-error' : '' }}">
                    <input type="text" name="thirdname_ar" class="form-control" placeholder="{{trans('employee.thirdname_ar')}}" value="{{$employee->thirdname_ar }}">

                  </div>
                  <label class="col-md-2 required" style="width:2%;"><span class="required">*</span></label>
                  <div class="col-md-2 col-sm-12 col-xs-12 form-group{{ $errors->has('lastname_ar') ? ' has-error' : '' }}">
                    <input type="text" name="lastname_ar" class="form-control" placeholder="{{trans('employee.lastname_ar')}}" value="{{ $employee->lastname_ar }}">

                  </div>
                </div>
                <!-- /Full name Arabic -->
                <!-- Full name English -->
                <div class="row">
                  <label class="col-md-2 margin-left-40"></label>
                  <label class="col-md-1 " style="width:2%;"><span class="required"></span></label>
                <div class="col-md-2 col-sm-12 col-xs-12 form-group{{ $errors->has('firstname_en') ? ' has-error' : '' }} ">
                  <input type="text" name="firstname_en" placeholder="{{trans('employee.firstname_en')}}" value="{{ $employee->firstname_en }}" class="form-control">
                </div>
                <label class="col-md-2 required" style="width:2%;"><span class="required"></span></label>
                <div class="col-md-2 col-sm-12 col-xs-12 form-group{{ $errors->has('secondname_en') ? ' has-error' : '' }}">
                  <input type="text"  name="secondname_en" placeholder="{{trans('employee.secondname_en')}}" value="{{ $employee->secondname_en }}" class="form-control">
                </div>
                <label class="col-md-2 required" style="width:2%;"><span class="required"></span></label>
                <div class="col-md-2 col-sm-12 col-xs-12 form-group{{ $errors->has('thirdname_en') ? ' has-error' : '' }}">
                  <input type="text" name="thirdname_en"  placeholder="{{trans('employee.thirdname_en')}}" value="{{ $employee->thirdname_en }}" class="form-control">
                </div>
                <label class="col-md-2 required" style="width:2%;"><span class="required"></span></label>
                <div class="col-md-2 col-sm-12 col-xs-12 form-group{{ $errors->has('lastname_en') ? ' has-error' : '' }}">
                  <input type="text" name="lastname_en" placeholder="{{trans('employee.lastname_en')}}" value="{{ $employee->lastname_en }}" class="form-control">
                </div>
                </div>
                <!-- /Full name English -->
                <!-- Job Recruitmen -->
                <div class="row">
                <label class="col-md-2 margin-left-40"></label>
                <label class="col-md-1 " style="width:2%;"></label>
                <div class="col-md-2 col-sm-12 col-xs-12 form-group ">
                <select class="form-control" name="job_id">
                <option value="" selected="selected">{{trans('employee.Job')}} </option>
                @foreach ($job as $job)
                    <option value="{{$job->id}}">{{$job->$Name_En}}</option>
                @endforeach
                </select>
                </div>
                <label class="col-md-2 required" style="width:2%;"></label>
                <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                <select class="form-control" name="rjob_id">
                <option value="" selected="selected">{{trans('employee.Rjob')}} </option>
                @foreach ($rjob as $rjob)
                    <option value="{{$rjob->id}}">{{$rjob->$Name_En}}</option>
                @endforeach
                </select>
                  </div>
                <label class="col-md-2 required" style="width:2%;"></label>
                <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                <select class="form-control" name="cjob_id">
                <option value="" selected="selected">{{trans('employee.Cjob')}} </option>
                @foreach ($cjob as $cjob)
                    <option value="{{$cjob->id}}">{{$cjob->$Name_En}}</option>
                @endforeach
                </select>
                </div>

                <label class="col-md-2 required" style="width:2%;"></label>
                <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                <select class="form-control" name="recruitmen_id">
                <option value="" selected="selected">{{trans('employee.Recruitmen')}} </option>
                @foreach ($recruitmen as $recruitmen)
                    <option value="{{$recruitmen->id}}">{{$recruitmen->$Name_En}}</option>
                @endforeach
                </select>     </div>
                </div>
                <!-- /Job Recruitmen -->
                <!-- Recruitmen,Category,Degree,yearofdegree -->
                <div class="row">
                <label class="col-md-2 margin-left-40"></label>
                <label class="col-md-1 " style="width:2%;"></label>
                <div class="col-md-2 col-sm-12 col-xs-12 form-group ">
                <select class="form-control" name="status_id">
                  <option value="" selected="selected">{{trans('employee.Status')}} </option>
                  @foreach ($status as $status)
                      <option value="{{$status->id}}">{{$status->$Name_En}}</option>
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
                <div class="col-md-2 col-sm-12 col-xs-12 form-group{{ $errors->has('yearofdegree') ? ' has-error' : '' }}">
                <input type="text" name="yearofdegree" placeholder="{{trans('employee.yearofdegree')}}" value="{{$employee->yearofdegree}}" class="form-control">
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
                <select class="form-control" name="cqualification_id">
                <option value="" selected="selected">{{trans('employee.Cqualification')}} </option>
                @foreach ($cqualification as $cqualification)
                    <option value="{{$cqualification->id}}">{{$cqualification->$Name_En}}</option>
                @endforeach
                </select>
                </div>
                <label class="col-md-2 required" style="width:2%;"></label>
                <div class="col-md-2 col-sm-12 col-xs-12 form-group">
                <select class="form-control" name="gender_id" >
                <option value="" selected="selected" >{{trans('employee.Gender')}} </option>
                @foreach ($gender as $gender)
                    <option value="{{$gender->id}}" >{{$gender->$Name_En}}</option>
                @endforeach
                </select>     </div>
                </div>
                <!-- /Qualification,Specialization,Status,Gender -->
                <!-- Date -->

                <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Assistant')}}">  {{trans('employee.dateofbirth')}}</label>

                <div class="col-md-2 col-sm-12 col-xs-12 form-group{{ $errors->has('dateofbirth') ? ' has-error' : '' }}">

                          <input type="date" name="dateofbirth" id="dateofbirth" placeholder="dateofbirth" value="{{$employee->dateofbirth }}" class="form-control">

                                      </div>

                              </div>

                <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Assistant')}}">  {{trans('employee.dateofhiring')}}</label>

                                                          <div class="col-md-2 col-sm-12 col-xs-12 form-group{{ $errors->has('dateofhiring') ? ' has-error' : '' }}">
                                                              <input type="date" name="dateofhiring" id="dateofhiring" placeholder="dateofbirth" value="{{$employee->dateofhiring }}" class="form-control">


                                                      </div>
                                                  </div>

                <!-- /Date-->
                <!-- Photo-->
                <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Directorate')}}">{{trans('employee.Photo')}}
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                <input type="file" id="picture" name="picture">
                </div>
                </div>
                <!-- /Photo-->



                  <!-- ln_solid -->
                  <div class="ln_solid"></div>
                  <!-- /ln_solid -->
                  <!-- Submit Reset Back-->
                  <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                      <button onclick="location.href='{{ url('cpanel/employee') }}'" class="btn btn-primary" type="button">{{trans('cpanel.Back')}}</button>
                      <button type="submit" class="btn btn-success">{{trans('cpanel.Edit')}}</button>
                    </div>
                  </div>
                  <!-- /Submit Reset Back-->
                      </form>
                      <!-- /Form -->

      </div>
      <!-- /x_content -->

    </div>
    <!-- /x_panel -->

  </div>
  <!-- /col-md-12 col-sm-12 col-xs-12 -->


</div>
<!-- /row -->





@endsection
