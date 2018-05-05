<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRegionsTable extends Migration
{

  /**
   * Run the migrations.
   *
   * @return void
   */
  public function up()
    {
        Schema::create('regions', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name_ar',255);
            $table->string('address_ar',255)->nullable();
            $table->string('phone',20);
            $table->string('fax',20);
            $table->string('mobile',20);
            $table->string('email',50);
            $table->string('name_en',255);
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
            $table->integer('assistant_id')->unsigned();
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
        Schema::dropIfExists('regions');
    }
}
