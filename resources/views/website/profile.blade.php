<?php
$Master = trans('variable.Master');
?>

@extends($Master)
@section('content')
<div class="right_col" role="main">
  <h1>Hello {{ Auth::user()->name }}, comming soon</h1>

</div>


@endsection
