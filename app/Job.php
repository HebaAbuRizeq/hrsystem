<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
  protected $table = 'jobs';
  protected $fillable = ['name_ar','name_en'];
}
