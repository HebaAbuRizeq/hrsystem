<!-- create.blade.php -->
<?php
$Name_En = trans('variable.Name_En');

?>
@extends('cpanel.directorate.base')
@section('action-content')
<!-- row -->
<div class="row">

  <!-- col-md-12 col-sm-12 col-xs-12 -->
  <div class="col-md-12 col-sm-12 col-xs-12">

    <!-- x_panel -->
    <div class="x_panel">

      <!-- x_title -->
      <div class="x_title">

        <h2>{{trans('directorate.Add_New_Directorate')}}</h2>

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

        <form method="POST" action="{{url('cpanel/directorate')}}" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
          {{csrf_field()}}

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

                 <div class="form-group">
                   <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Assistant')}}">{{trans('cpanel.Assistant')}}
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

          <div class="form-group{{ $errors->has(trans('variable.Name_En')) ? ' has-error' : '' }}">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('variable.Name_En')}}">{{trans('directorate.Directorate_English')}} <span class="required" >*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="{{trans('variable.Name_En')}}" name="{{trans('variable.Name_En')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('directorate.Directorate_English')}}" value="{{ old(trans('directorate.Name_En')) }}">
            </div>
          </div>

          <div class="form-group{{ $errors->has(trans('variable.Name_Ar')) ? ' has-error' : '' }}">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('variable.Name_Ar')}}">{{trans('directorate.Directorate_Arabic')}}<span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="{{trans('variable.Name_Ar')}}" name="{{trans('variable.Name_Ar')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('directorate.Directorate_Arabic')}}" value="{{ old(trans('directorate.Name_Ar')) }}">
            </div>
          </div>

          <div class="ln_solid"></div>
          <div class="form-group">
            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
              <button onclick="location.href='{{ url('cpanel/directorate') }}'" class="btn btn-primary" type="button">{{trans('cpanel.Back')}}</button>
              <button class="btn btn-primary" type="reset">{{trans('cpanel.Reset')}}</button>
              <button type="submit" class="btn btn-success">{{trans('cpanel.Submit')}}</button>
            </div>
          </div>

        </form>


      </div>
      <!-- /x_content -->

    </div>
    <!-- /x_panel -->
    {{trans('notes.Note1')}}

  </div>
  <!-- /col-md-12 col-sm-12 col-xs-12 -->

</div>
<!-- /row -->


@endsection
