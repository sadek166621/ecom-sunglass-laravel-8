<?php

namespace App\Http\Controllers;

use App\Color;
use App\FlashSaleItem;
use App\Product;
use App\ProductColor;
use App\ProductSize;
use App\shippingRate;
use Illuminate\Http\Request;
use Cart;
use DB;
use Session;
class CartController extends Controller
{

    public function cartAdd(Request $request){

//        return $request;
        $imageUrl=0;
        if($files=$request->file('prescription')) {
            $image = $request->file('prescription');
            $imageName = rand() . '.' . $image->getClientOriginalExtension();
            $directory = 'admin/prescription/';
            $imageUrl = $directory . $imageName;
            $image->move($directory, $imageName);
        }

        $product = Product::find($request->product_id);
        $color = ProductColor::where('product_id',$request->product_id)->first();
        $size = ProductSize::where('product_id',$request->product_id)->first();
//        return $color;
//        $aa=FlashSaleItem::where('product_id',$request->product_id)->orderBy('id','desc')->get();
$p=0;
$tt=0;

        $aa = DB::table('flash_sale_items')
            ->join('products','flash_sale_items.product_id', '=','products.id')
            ->select('flash_sale_items.id','products.*','products.id','flash_sale_items.product_id','flash_sale_items.flash_sale_item','flash_sale_items.flash_sale_price')
            ->where('products.id',$request->product_id)
            ->orderBy('flash_sale_items.id','desc')
            ->latest()
            ->take(1)
            ->get();
        foreach($aa as $item){
          $p = $item->flash_sale_price;
        }
        if($p>0){
            if($request->lens_price2>0){
                $p = $p+$request->lens_price2;
            }elseif ($request->lens_price>0){
                $p = $p+$request->lens_price;
            }else{
                $p;
            }
        }
//        if ($p>0 && $request->lens_price2>0){
//            $p = $p+$request->lens_price2;
//        }
//        if ($p>0 && $request->lens_price>0){
//            $p = $p+$request->lens_price;
//        }
//        return $p;
        if ($product->discount_product_price>0){
            if ($request->lens_price2>0) {
                $tt = $product->discount_product_price + $request->lens_price2;
            }elseif ($request->lens_price>0) {
                $tt = $product->discount_product_price + $request->lens_price;
            }else{
                $tt = $product->discount_product_price;
            }
        }else{
            if ($request->lens_price2>0) {
                $tt = $product->product_price + $request->lens_price2;
            }elseif ($request->lens_price>0) {
                $tt = $product->product_price + $request->lens_price;
            }else{
                $tt = $product->product_price;
            }
        }


//return $p;
//        return $aa;
//        return $product;

        if ($p>0){
            Cart::add([
                'id' => $product->id,
                'name' => $product->product_name,
                'price'=> $p,
                'qty' => 1,
                'weight'=>500,
                'options' => [
                    'code' => $product->product_code,
                    'size' => $product->product_quantity,
                    'color' => $color->color_id,
                    'image' => $product->main_image,
                    'image2' => $imageUrl,
                    'size_width' => $size->size_id,
                    'lens' => $request->lens,
                    'power' => $request->power,
                    'lens_type' => $request->lens_type,
                    'lens_price' => $request->lens_price,
                    'lens_price2' => $request->lens_price2,
                ]
            ]);
            Session::put('name',$product->product_name);
            Session::put('image',$product->main_image);
            Session::put('description',$product->short_description);
            Session::put('price',$p);
            return back()->with('cartM','1 new item have been added to your cart');
        }else{
            if ($product->product_stock>0 && $product->discount_product_price>0) {
                Cart::add([
                    'id' => $product->id,
                    'name' => $product->product_name,
                    'price'=> $tt,
                    'qty' => 1,
                    'pescription' =>$request->file('pescription'),
                    'weight'=>500,
                    'options' => [
                        'code' => $product->product_code,
                        'size' => $product->product_quantity,
                        'color' => $color->color_id,
                        'image' => $product->main_image,
                        'image2' => $imageUrl,
                        'size_width' => $size->size_id,
                        'lens' => $request->lens,
                        'power' => $request->power,
                        'lens_type' => $request->lens_type,
                        'lens_price' => $request->lens_price,
                        'lens_price2' => $request->lens_price2,
                    ]
                ]);
                Session::put('name',$product->product_name);
                Session::put('image',$product->main_image);
                Session::put('description',$product->short_description);
                Session::put('price',$tt);
                return back()->with('cartM','1 new item have been added to your cart');
            }elseif($product->product_stock>0){
                Cart::add([
                    'id' => $product->id,
                    'name' => $product->product_name,
                    'price'=> $tt,
                    'qty' => 1,
                    'weight'=>500,
                    'options' => [
                        'code' => $product->product_code,
                        'size' => $product->product_quantity,
                        'color' => $color->color_id,
                        'image' => $product->main_image,
                        'image2' => $imageUrl,
                        'size_width' => $size->size_id,
                        'lens' => $request->lens,
                        'power' => $request->power,
                        'lens_type' => $request->lens_type,
                        'lens_price' => $request->lens_price,
                        'lens_price2' => $request->lens_price2,
                    ]
                ]);
                Session::put('name',$product->product_name);
                Session::put('image',$product->main_image);
                Session::put('price',$tt);
                Session::put('description',$product->short_description);
                return back()->with('cartM','1 new item have been added to your cart');
            } else {
                return back()->with('message','Sorry !!. This product not available in stock');
            }
        }

    }
    public  function cartUpdate(Request $request){
//        return $request;
        Cart::update(
            $request->rowId,$request->qty,
//            array(
//                'relative' => false,
//            )
    );
        return redirect('/show-cart');

    }
    public function showCart(){
        Session::forget('sub');
//        $products = Cart::content();
//        return $products;
        return view('frontend.cart.show-cart',[
            'shipping'=>shippingRate::where('publication_status',1)->get()
        ]);
    }
    public  function removeCart($id){
        Cart:: remove($id);
        return back();

    }
}
