<?php

namespace App\Http\Controllers;

//use App\Wishlist;
use App\WishList;
use Illuminate\Http\Request;
use Session;
use DB;

class WishListController extends Controller
{
    public function saveWishList(Request $request){
//        return $request;
        $customerId=Session::get('customerId');
        if ($customerId) {
            $checkCustomerId = WishList::where('product_id',$request->product_id)
                ->where('customer_id',$customerId)
                ->first();
            if ($checkCustomerId){
                return back()->with('message','This product already add your wish list.');
            }else{
                $wishlist=new WishList();
                $wishlist->customer_id=$customerId;
                $wishlist->product_id=$request->product_id;
                $wishlist->save();
                return back()->with('message','Great !! This product successfully add to your wish list. Thanks for stay with us.');
            }
        }else{
            return back()->with('message','We are very sorry because we can not add this product to your wish list. To add product in wish list  need to register the Site.');
        }

    }
    public  function wishList(){
        Session::forget('sub');
        $customerId=Session::get('customerId');
        $products=DB::table('wish_lists')
            ->join('products','wish_lists.product_id','products.id')
            ->select('wish_lists.customer_id','wish_lists.id','wish_lists.product_id','products.product_name','products.main_image','products.product_price','products.discount_product_price','products.product_stock')
            ->where('wish_lists.customer_id',$customerId)
            ->get();
        return view('frontend.customer.wish-list',[
            'products'=>$products
        ]);
    }

    public function removeWishList($id){
        $wishlist = WishList::find($id);
        $wishlist->delete();
        return back()->with('message','Wish list Info Delete Successfully');
    }
}
