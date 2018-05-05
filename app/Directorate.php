<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Directorate extends Model
{
  protected $table = 'directorates';
  protected $fillable = ['name_en', 'name_ar', 'assistant_id','administration_id'];
}
