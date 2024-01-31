<?php

namespace App\Http\Controllers;

use App\Compare;
use Illuminate\Http\Request;
use Session;
use DB;

class CompareController extends Controller
{
    public function saveCompare(Request $request){
//        return $request;
        $customerId=Session::get('customerId');
        if ($customerId) {
            $checkCustomerId = Compare::where('product_id',$request->product_id)
                ->where('customer_id',$customerId)
                ->first();
            if ($checkCustomerId){
                return back()->with('message','This product already add your compare list.');
            }else{
                $wishlist=new Compare();
                $wishlist->customer_id=$customerId;
                $wishlist->product_id=$request->product_id;
                $wishlist->save();
                return back()->with('message','Great !! This product successfully add to your compares list. Thanks for stay with us.');
            }
        }else{
            return redirect('/customer-login')->with('message','We are very sorry because we can not add this product to your compares list. To add product in wish list  need to register the Site.');
        }

    }
    public  function compare(){
        $customerId=Session::get('customerId');
        $products=DB::table('compares')
            ->join('products','compares.product_id','products.id')
            ->join('sub_categories','products.sub_category_id','=','sub_categories.id')
            ->join('categories','products.category_id','=','categories.id')
            ->select('compares.customer_id','compares.id','products.category_id','products.discount_product_amount','categories.category_name','products.sub_category_id','products.slug','products.short_description','sub_categories.sub_category_name','compares.product_id','products.product_name','products.main_image','products.second_image','products.product_price','products.discount_product_price','products.product_stock')
            ->where('compares.customer_id',$customerId)
            ->paginate(10);
        return view('frontend.customer.compare',[
            'products'=>$products
        ]);
    }

    public function removeCompare($id){
        $wishlist = Compare::find($id);
        $wishlist->delete();
        return back()->with('message','compares list Info Delete Successfully');
    }
}
