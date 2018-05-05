<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDirectoratesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('directorates', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name_ar',255);
            $table->string('name_en',255);
            $table->integer('assistant_id')->unsigned()->nullable();
           $table->foreign('assistant_id')->references('id')->on('assistants');
           $table->integer('administration_id')->unsigned()->nullable();
           $table->foreign('administration_id')->references('id')->on('administrations');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('directorates');
    }
}
