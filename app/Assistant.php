<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Assistant extends Model
{
  protected $table = 'assistants';
  protected $fillable = ['name_en', 'name_ar', 'administration_id'];
}
