<!-- edit.blade.php -->
<?php
$Name_En=trans('variable.Name_En');
$Name_Ar=trans('variable.Name_Ar');
?>
@extends('cpanel.department.base')
@section('action-content')
<!-- row -->
<div class="row">

  <!-- col-md-12 col-sm-12 col-xs-12 -->
  <div class="col-md-12 col-sm-12 col-xs-12">

    <!-- x_panel -->
    <div class="x_panel">

      <!-- x_title -->
      <div class="x_title">


        <h2>{{trans('department.Edit_Department')}}</h2>

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

        <form method="post" action="{{action('DepartmentController@update', [$department->id])}}" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                  {{csrf_field()}}
                  <input name="_method" type="hidden" value="PATCH">

                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="  {{trans('cpanel.Administration')}}">  {{trans('cpanel.Administration')}}<span class="required" >*</span>
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

          <div class="form-group{{ $errors->has(trans('variable.Name_En')) ? ' has-error' : '' }}">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('variable.Name_En')}}">{{trans('department.Department_English')}} <span class="required" >*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="{{trans('variable.Name_En')}}" name="{{trans('variable.Name_En')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('department.Department_English')}}" value="{{$department->$Name_En}}">
            </div>
          </div>

          <div class="form-group{{ $errors->has(trans('variable.Name_Ar')) ? ' has-error' : '' }}">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('variable.Name_Ar')}}">{{trans('department.Department_Arabic')}}<span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" id="{{trans('variable.Name_Ar')}}" name="{{trans('variable.Name_Ar')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('department.Department_Arabic')}}" value="{{ $department->$Name_Ar }}">
            </div>
          </div>

          <div class="ln_solid"></div>
          <div class="form-group">

            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
              <button onclick="location.href='{{ url('cpanel/department') }}'" class="btn btn-primary" type="button">{{trans('cpanel.Back')}}</button>
              <button type="submit" class="btn btn-success">{{trans('cpanel.Edit')}}</button>
            </div>
          </div>


                      </form>

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

      </div>
      <!-- /x_content -->

    </div>
    <!-- /x_panel -->

  </div>
  <!-- /col-md-12 col-sm-12 col-xs-12 -->


</div>
<!-- /row -->





@endsection
