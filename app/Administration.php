<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Administration extends Model
{
  protected $table = 'administrations';
  protected $fillable = ['name_ar','name_en','address_ar','phone'];

}
