<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Qualification extends Model
{
  protected $table = 'qualifications';
  protected $fillable = ['name_ar','name_en'];
}
