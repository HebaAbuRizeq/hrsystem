

<?php
$Name_En = trans('variable.Name_En');
?>
<option value="">{{trans('directorate.Select_Directorate')}}</option>
@if(!empty($directorate))
  @foreach($directorate as $key => $value)
    <option value="{{ $value->id }}"> {{$value->$Name_En }}</option>
  @endforeach
@endif
