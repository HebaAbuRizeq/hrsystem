<!-- edit.blade.php -->
<?php
$Name_En=trans('variable.Name_En');
$Name_Ar=trans('variable.Name_Ar');
$Neighborhood_En=trans('variable.Neighborhood_En');
$Neighborhood_Ar=trans('variable.Neighborhood_Ar');
$Street_En=trans('variable.Street_En');
$Street_Ar=trans('variable.Street_Ar');
?>

@extends('cpanel.institute.base')
@section('action-content')
<!-- row -->
<div class="row">

  <!-- col-md-12 col-sm-12 col-xs-12 -->
  <div class="col-md-12 col-sm-12 col-xs-12">

    <!-- x_panel -->
    <div class="x_panel">

      <!-- x_title -->
      <div class="x_title">


        <h2>{{trans('institute.Edit_Institute')}}</h2>

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
        <form method="post" action="{{action('InstituteController@update', [$institute->id])}}" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
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
                  <!-- Directorate -->
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
                  <!--/Directorate -->
                  <!-- English Institute -->
                  <div class="form-group{{ $errors->has(trans('variable.Name_En')) ? ' has-error' : '' }}">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('variable.Name_En')}}">{{trans('institute.Institute_English')}} <span class="required" >*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="{{trans('variable.Name_En')}}" name="{{trans('variable.Name_En')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('institute.Institute_English')}}" value="{{$institute->$Name_En}}">
                    </div>
                  </div>
                  <!-- /English Institute -->
                  <!-- Arabic Institute -->
                  <div class="form-group{{ $errors->has(trans('variable.Name_Ar')) ? ' has-error' : '' }}">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('variable.Name_Ar')}}">{{trans('institute.Institute_Arabic')}}<span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="{{trans('variable.Name_Ar')}}" name="{{trans('variable.Name_Ar')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('institute.Institute_Arabic')}}" value="{{$institute->$Name_Ar}}">
                    </div>
                  </div>
                  <!-- /Arabic Institute -->
                  <!-- Phone -->
                  <div class="form-group{{ $errors->has(trans('phone')) ? ' has-error' : '' }}">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="phone">{{trans('cpanel.Phone')}}<span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="name" name="phone" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Phone')}}" value="{{$institute->phone}}">
                    </div>
                  </div>
                  <!-- /Phone -->
                  <!-- Fax -->
                  <div class="form-group{{ $errors->has(trans('fax')) ? ' has-error' : '' }}">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="fax">{{trans('cpanel.Fax')}}<span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="name" name="fax" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Fax')}}" value="{{$institute->fax}}">
                    </div>
                  </div>
                  <!-- /Fax -->
                  <!-- Mobile -->
                  <div class="form-group{{ $errors->has(trans('mobile')) ? ' has-error' : '' }}">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="mobile">{{trans('cpanel.Mobile')}}<span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="name" name="mobile" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Mobile')}}" value="{{$institute->mobile}}">
                    </div>
                  </div>
                  <!-- /Mobile -->
                  <!-- Email -->
                  <div class="form-group{{ $errors->has(trans('email')) ? ' has-error' : '' }}">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">{{trans('cpanel.Email')}}<span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="name" name="email" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Email')}}" value="{{$institute->email}}">
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
                      <input type="text" id="{{trans('variable.Neighborhood_En')}}" name="{{trans('variable.Neighborhood_En')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Neighborhood_English')}}" value="{{$institute->$Neighborhood_En}}">
                    </div>
                  </div>
                  <!-- /English Neighborhood -->
                  <!-- Arabic Neighborhood -->
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Neighborhood_Arabic')}}">{{trans('cpanel.Neighborhood_Arabic')}}
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="{{trans('variable.Neighborhood_Ar')}}" name="{{trans('variable.Neighborhood_Ar')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Neighborhood_Arabic')}}" value="{{$institute->$Neighborhood_Ar}}">
                    </div>
                  </div>
                  <!-- /Arabic Neighborhood -->
                  <!-- Englis Street -->
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Street_English')}}">{{trans('cpanel.Street_English')}}
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="{{trans('variable.Street_En')}}" name="{{trans('variable.Street_En')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Street_English')}}" value="{{$institute->$Street_En}}">
                    </div>
                  </div>
                  <!-- /English Street -->
                  <!-- Arabic Street -->
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="{{trans('cpanel.Street_Arabic')}}">{{trans('cpanel.Street_Arabic')}}
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="{{trans('variable.Street_Ar')}}" name="{{trans('variable.Street_Ar')}}" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Street_Arabic')}}" value="{{$institute->$Street_Ar}}">
                    </div>
                  </div>
                  <!-- /Arabic Street -->
                  <!-- Lat -->
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="lat">{{trans('cpanel.Lat')}}
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="name" name="lat" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Lat')}}" value="{{$institute->lat}}">
                    </div>
                  </div>
                  <!-- /Lat -->
                  <!-- Long -->
                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="long">{{trans('cpanel.Long')}}
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                      <input type="text" id="name" name="long" class="form-control col-md-7 col-xs-12" placeholder="{{trans('cpanel.Long')}}" value="{{$institute->long}}">
                    </div>
                  </div>
                  <!-- /Long -->
                  <!-- ln_solid -->
                  <div class="ln_solid"></div>
                  <!-- /ln_solid -->
                  <!-- Submit Reset Back-->
                  <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                      <button onclick="location.href='{{ url('cpanel/institute') }}'" class="btn btn-primary" type="button">{{trans('cpanel.Back')}}</button>
                      <button type="submit" class="btn btn-success">{{trans('cpanel.Edit')}}</button>
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
      </div>
      <!-- /x_content -->

    </div>
    <!-- /x_panel -->

  </div>
  <!-- /col-md-12 col-sm-12 col-xs-12 -->


</div>
<!-- /row -->





@endsection
