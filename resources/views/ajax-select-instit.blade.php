

<?php
$Name_En = trans('variable.Name_En');
?>
<option value="">{{trans('institute.Select_Instit')}}</option>
@if(!empty($institute))
  @foreach($institute as $key => $value)
    <option value="{{ $value->id }}"> {{$value->$Name_En}}</option>
  @endforeach
@endif
