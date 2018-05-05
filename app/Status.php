<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
  protected $table = 'statuss';
  protected $fillable = ['name_ar','name_en'];
}
