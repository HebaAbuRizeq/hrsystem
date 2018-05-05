<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGovernatesTable extends Migration
{

    public function up()
    {
        Schema::create('governates', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name_ar',50);
            $table->string('name_en',50);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('governates');
    }
}
