<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFlashSaleItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('flash_sale_items', function (Blueprint $table) {
            $table->id();
            $table->integer('flash_id');
            $table->integer('product_id');
            $table->tinyInteger('flash_sale_item');
            $table->string('flash_sale_price');
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
        Schema::dropIfExists('flash_sale_items');
    }
}
