<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
  protected $table = 'categorys';
  protected $fillable = ['name_ar','name_en'];
}
