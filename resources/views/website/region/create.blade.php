<!-- create.blade.php -->
<?php
$Name_En = trans('variable.Name_En');

?>
@extends('cpanel.region.base')
@section('action-content')
<!-- row -->
<div class="row">

  <!-- col-md-12 col-sm-12 col-xs-12 -->
  <div class="col-md-12 col-sm-12 col-xs-12">

    <!-- x_panel -->
    <div class="x_panel">

      <!-- x_title -->
      <div class="x_title">

        <h2>{{trans('region.Add_New_Region')}}</h2>

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
        <form method="POST" action="{{url('cpanel/region')}}" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
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
                       @foreach ($assistant as $assistant)
                             <option value="{{$assistant->id}}">{{$assistant->$Name_En}}</option>
                         @endforeach
                     </select>
                   </div>
                 </div>
          <!-- /Assistant -->
          <!-- English Region -->
          <div class="form-group{{ $errors->has(trans('variable.Name_En')) ? ' has-error' : '' }}">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('variable.Name_En')}}">{{trans('region.Region_English')}} <span class="required" >*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="{{trans('variable.Name_En')}}" name="{{trans('variable.Name_En')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('region.Region_English')}}" value="{{ old(trans('region.Name_En')) }}">
            </div>
          </div>
          <!-- /English Region -->
          <!-- Arabic Region -->
          <div class="form-group{{ $errors->has(trans('variable.Name_Ar')) ? ' has-error' : '' }}">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('variable.Name_Ar')}}">{{trans('region.Region_Arabic')}}<span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="{{trans('variable.Name_Ar')}}" name="{{trans('variable.Name_Ar')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('region.Region_Arabic')}}" value="{{ old(trans('region.Name_Ar')) }}">
            </div>
          </div>
          <!-- /Arabic Region -->
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
              <input type="text" id="name" name="fax" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Fax')}}" value="{{ old(trans('cpanel.Fax')) }}">
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
              <button onclick="location.href='{{ url('cpanel/region') }}'" class="btn btn-primary" type="button">{{trans('cpanel.Back')}}</button>
              <button class="btn btn-primary" type="reset">{{trans('cpanel.Reset')}}</button>
              <button type="submit" class="btn btn-success">{{trans('cpanel.Submit')}}</button>
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
