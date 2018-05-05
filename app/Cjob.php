<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cjob extends Model
{
  protected $table = 'cjobs';
  protected $fillable = ['name_ar','name_en'];
}
