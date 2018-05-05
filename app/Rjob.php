<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rjob extends Model
{
  protected $table = 'rjobs';
  protected $fillable = ['name_ar','name_en'];
}
