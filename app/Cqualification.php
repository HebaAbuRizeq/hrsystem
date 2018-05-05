<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cqualification extends Model
{
  protected $table = 'cqualifications';
  protected $fillable = ['name_ar','name_en'];
}
