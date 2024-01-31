<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGalleriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('galleries', function (Blueprint $table) {
            $table->id();
            $table->text('image');
            $table->string('first_header');
            $table->string('last_header');
            $table->string('third_header');
            $table->string('url');
            $table->tinyInteger('section_1')->nullable();
            $table->tinyInteger('section_2')->nullable();
            $table->tinyInteger('section_3')->nullable();
            $table->tinyInteger('section_4')->nullable();
            $table->tinyInteger('section_5')->nullable();
            $table->tinyInteger('section_6')->nullable();
            $table->integer('publication_status');
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
        Schema::dropIfExists('galleries');
    }
}
