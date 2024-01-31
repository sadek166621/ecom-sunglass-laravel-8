<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateShippingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('shippings', function (Blueprint $table) {
            $table->id();
            $table->integer('customer_id');
            $table->string('name');
            $table->string('email')->nullable();
            $table->string('mobile_number');
            $table->text('address');
            $table->text('different_name')->nullable();
            $table->text('different_email')->nullable();
            $table->text('different_mobile_number')->nullable();
            $table->text('different_address')->nullable();
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
        Schema::dropIfExists('shippings');
    }
}
