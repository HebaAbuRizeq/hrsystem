<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Specialization extends Model
{
  protected $table = 'specializations';
  protected $fillable = ['name_ar','name_en'];
}
