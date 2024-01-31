<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;
use DB;

class StockController extends Controller
{
    public function index() {
        $allPublishedProducts = DB::table('products')
//            ->join('categories', 'products.category_id', '=', 'categories.id')
            ->select('products.id', 'products.product_name','products.product_code','products.product_price', 'products.product_cost','products.product_stock', 'products.publication_status')
            ->orderBy('products.id', 'desc')
            ->get();
        return view('admin.stock.manage-stock', ['allPublishedProducts'=>$allPublishedProducts]);
    }

    public function editStock($id) {
        $productById = Product::find($id);
        return view('admin.stock.edit-stock', [
            'productById' => $productById,
        ]);
    }

    public function updateStock(Request $request) {
        $product = Product::find($request->product_id);
//        $product->product_name = $request->product_name;
//        $product->product_code = $request->product_code;
        $product->product_stock = $request->product_stock;
        $product->save();
        return redirect('/manage-stock')->with('message', 'Stock info update successfully');

    }
}
