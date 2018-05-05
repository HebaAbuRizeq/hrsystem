

<?php
$Name_En = trans('variable.Name_En');
?>
<option value="">{{trans('Department.Select_Department')}}</option>
@if(!empty($department) )
  @foreach($department as $key => $value)
    <option value="{{ $value->id }}"> {{$value->$Name_En }}</option>
  @endforeach
@endif
@if(!empty($institute))
  @foreach($institute as $key => $value)
    <option value="{{ $value->id }}"> {{$value->$Name_En}}</option>
  @endforeach
@endif
