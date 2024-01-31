<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->integer('category_id');
            $table->integer('sub_category_id');
            $table->integer('brand_id');
            $table->integer('supplier_id');
            $table->text('product_name');
            $table->string('slug')->unique();
            $table->string('product_code')->unique();
            $table->float('product_price');
            $table->float('discount_product_amount');
            $table->float('discount_product_price');
            $table->float('product_cost');
            $table->string('product_highlight');
            $table->string('product_stock');
            $table->string('product_made_by');
            $table->text('short_description');
            $table->text('description');
            $table->text('main_image');
            $table->text('second_image');
            $table->tinyInteger('best_selling');
            $table->tinyInteger('trending');
            $table->tinyInteger('new_arrival');
            $table->tinyInteger('featured');
            $table->tinyInteger('Special_Offer');
            $table->tinyInteger('publication_status');
            $table->text('orginal_product_link');
            $table->text('youtube_link');
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
        Schema::dropIfExists('products');
    }
}
