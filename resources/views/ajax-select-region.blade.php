

<?php
$Name_En = trans('variable.Name_En');
?>
<option value="">{{trans('region.Select_Region')}}</option>

@if(!empty($region))
  @foreach($region as $key => $value)
    <option value="{{ $value->id }}"> {{$value->$Name_En}}</option>
  @endforeach
@endif
