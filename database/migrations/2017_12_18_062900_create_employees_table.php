<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeesTable extends Migration
{

    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
          $table->increments('id');
          $table->integer('emp_no')->unsigned()->unique();
          $table->double('sn', 10, 0)->unsigned()->unique();
          $table->string('username',50)->nullable();
          $table->string('picture', 255);
          $table->string('firstname_ar',50)->nullable();
          $table->string('secondname_ar',50)->nullable();
          $table->string('thirdname_ar',50)->nullable();
          $table->string('lastname_ar',50)->nullable();
          $table->string('firstname_en',50)->nullable();
          $table->string('secondname_en',50)->nullable();
          $table->string('thirdname_en',50)->nullable();
          $table->string('lastname_en',50)->nullable();
          $table->integer('ext')->unsigned()->nullable();
          $table->string('mobile',20)->nullable();
          $table->string('email',20)->nullable();
          $table->date('dateofbirth')->nullable();
          $table->date('dateofhiring')->nullable();
          $table->integer('yearofdegree')->nullable();
          $table->integer('job_id')->unsigned();
          $table->foreign('job_id')->references('id')->on('jobs');
          $table->integer('rjob_id')->unsigned();
          $table->foreign('rjob_id')->references('id')->on('rjobs');
          $table->integer('cjob_id')->unsigned();
          $table->foreign('cjob_id')->references('id')->on('cjobs');
          $table->integer('qualification_id')->unsigned()->nullable();
          $table->foreign('qualification_id')->references('id')->on('qualifications');
          $table->integer('cqualification_id')->unsigned()->nullable();
          $table->foreign('cqualification_id')->references('id')->on('cqualifications');
          $table->integer('specialization_id')->unsigned()->nullable();
          $table->foreign('specialization_id')->references('id')->on('specializations');
          $table->integer('status_id')->unsigned()->nullable();
          $table->foreign('status_id')->references('id')->on('statuss');
          $table->integer('category_id')->unsigned()->nullable();
          $table->foreign('category_id')->references('id')->on('categorys');
          $table->integer('degree_id')->unsigned()->nullable();
          $table->foreign('degree_id')->references('id')->on('degrees');
          $table->integer('recruitmen_id')->unsigned()->nullable();
          $table->foreign('recruitmen_id')->references('id')->on('recruitmens');
          $table->integer('gender_id')->unsigned()->nullable();
          $table->foreign('gender_id')->references('id')->on('genders');
          $table->integer('department_id')->unsigned()->nullable();
          $table->foreign('department_id')->references('id')->on('departments');
          $table->integer('directorate_id')->unsigned()->nullable();
          $table->foreign('directorate_id')->references('id')->on('directorates');
          $table->integer('institute_id')->unsigned()->nullable();
          $table->foreign('institute_id')->references('id')->on('institutes');
          $table->integer('region_id')->unsigned()->nullable();
          $table->foreign('region_id')->references('id')->on('regions');
          $table->integer('assistant_id')->unsigned()->nullable();
          $table->foreign('assistant_id')->references('id')->on('assistants');
          $table->integer('administration_id')->unsigned()->nullable();
          $table->foreign('administration_id')->references('id')->on('administrations');
          $table->timestamps();
        });

    }

    public function down()
    {
        Schema::dropIfExists('employees');
    }
}
