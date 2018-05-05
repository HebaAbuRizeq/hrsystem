<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
  protected $table = 'departments';
  protected $fillable = ['name_en', 'name_ar', 'directorate_id','region_id','assistant_id','administration_id'];
}
