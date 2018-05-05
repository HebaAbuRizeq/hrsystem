<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Governate extends Model
{
    protected $table = 'governates';
    protected $fillable = ['name_ar','name_en'];
}
