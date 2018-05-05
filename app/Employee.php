<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
  protected $table = 'employees';
  protected $fillable = ['emp_no', 'sn','username','picture','firstname_ar','secondname_ar',
  'thirdname_ar','lastname_ar','firstname_en','secondname_en','thirdname_en','lastname_en',
  'ext','mobile','email','dateofbirth','dateofhiring','yearofdegree',
  'job_id','rjob_id','cjob_id','qualification_id','cqualification_id','status_id','category_id',
  'degree_id','recruitmen_id','gender_id','department_id','directorate_id','specialization_id','institute_id',
  'region_id','assistant_id','administration_id'];



}
