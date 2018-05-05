<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInstitutesTable extends Migration
{

    public function up()
    {
        Schema::create('institutes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name_ar',255);
            $table->string('address_ar',255)->nullable();
            $table->string('phone',20)->nullable();
            $table->string('fax',20)->nullable();
            $table->string('mobile',20)->nullable();
            $table->string('email',50);
            $table->string('name_en',255)->nullable();
            $table->string('address_en',255)->nullable();
            $table->string('neighborhood_ar',255)->nullable();
            $table->string('neighborhood_en',255)->nullable();
            $table->string('street_ar',255)->nullable();
            $table->string('street_en',255)->nullable();
            $table->integer('bulding')->nullable();
            $table->float('lat',10,6)->nullable();
            $table->float('long',10,6)->nullable();
            $table->integer('governate_id')->unsigned();
            $table->foreign('governate_id')->references('id')->on('governates');
            $table->integer('region_id')->unsigned()->nullable();
            $table->foreign('region_id')->references('id')->on('regions');
            $table->integer('directorate_id')->unsigned()->nullable();
            $table->foreign('directorate_id')->references('id')->on('directorates');
            $table->integer('assistant_id')->unsigned()->nullable();
            $table->foreign('assistant_id')->references('id')->on('assistants');
            $table->integer('administration_id')->unsigned()->nullable();
            $table->foreign('administration_id')->references('id')->on('administrations');
            $table->timestamps();
        });

    }


    public function down()
    {
        Schema::dropIfExists('institutes');
    }
}
