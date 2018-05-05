<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAdministrationsTable extends Migration
{

    public function up()
    {
        Schema::create('administrations', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name_ar',255);
            $table->string('address_ar',255);
            $table->string('phone',20);
            $table->string('fax',20);
            $table->string('mobile',20);
            $table->string('email',50);
            $table->float('lat',10,6)->nullable();
            $table->float('long',10,6)->nullable();
            $table->string('name_en',255);
            $table->string('address_en',255);
            $table->integer('governate_id')->unsigned();
            $table->foreign('governate_id')->references('id')->on('governates');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('administrations');
    }
}
