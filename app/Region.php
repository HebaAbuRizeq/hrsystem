<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Region extends Model
{
  protected $table = 'regions';
protected $fillable = ['name_en', 'name_ar','address_en','address_ar', 'phone','fax','mobile','email','neighborhood_ar','neighborhood_en','street_ar','street_en','bulding','lat','long','governate_id','assistant_id'];
}
