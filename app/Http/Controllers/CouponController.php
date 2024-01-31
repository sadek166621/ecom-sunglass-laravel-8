<?php

namespace App\Http\Controllers;

use App\Coupon;
use App\CouponDisplay;
use App\Subscriber;
use App\SubscribModal;
use Illuminate\Http\Request;
use Session;
use Cart;

class CouponController extends Controller
{
    public function index(){
        return view('admin.coupon.coupon',[
            'coupons'=>Coupon::all(),
        ]);

    }
    public function saveCoupon(Request $request){
      $coupon = new Coupon();
      $coupon->coupon_code =$request->coupon_code;
      $coupon->discount_type =$request->discount_type;
      $coupon->amount =$request->amount;
      $coupon->cart_value =$request->cart_value;
      $coupon->publication_status =$request->publication_status;
      $coupon->save();
      return back();
    }

    public function couponStatus($id){
        $coupon=Coupon::find($id);
        if ($coupon->publication_status == 1 ){
            $coupon->publication_status = 0;
            $coupon->save();
            return back()->with('message','Status Successfully Update');
        }else{
            $coupon->publication_status = 1;
            $coupon->save();
            return back()->with('message','Status Successfully Update');
        }
    }
    public function editCoupon($id){
        return view('admin.coupon.edit-coupon',[
            'coupon'=>Coupon::find($id),
        ]);
    }
    public function updateCoupon(Request $request) {
        $coupon = Coupon::find($request->id);
        $coupon->coupon_code =$request->coupon_code;
        $coupon->discount_type =$request->discount_type;
        $coupon->amount =$request->amount;
        $coupon->cart_value =$request->cart_value;
        $coupon->publication_status =$request->publication_status;
        $coupon->save();
        return redirect('/coupon-code');
    }
    public function deleteCoupon($id){
        $coupon=Coupon::find($id);
        $coupon->delete();
        return back()->with('message','Delete');
    }
    public function applyCoupon(Request $request){
//        $products = Cart::content();
//        $total=0;
//        foreach($products as $product){
//            $total +=$product->subtotal;
//        }
//        return $total;
//        return $request;

        $coupon = Coupon::where('coupon_code',$request->apply_coupon)
                        ->where('publication_status',1)
                        ->first();
        if ($coupon){
            if ($coupon->cart_value<= $request->cart_val){
                Session::put('couponCode', $coupon->coupon_code);
                Session::put('discountType', $coupon->discount_type);
                Session::put('amount', $coupon->amount);
                Session::put('cart_value', $coupon->cart_value);
                Session::put('publicationStatus', $coupon->publication_status);
//                return back()->with('message','WoW you got'.$coupon->discount_type=='Percent'? $coupon->amount  : $coupon->amount.'৳' .' '.'Discount');
                return back()->with('message','WoW !! you got Discount');
            }else{
                return back()->with('message','Not Enough Cart Amount To Get Offer Please Update Cart Amount');
            }
        }
        if (!$coupon){
            return back()->with('message','invalid coupon code');
        }



//        return $coupons;
//        if ($coupons){
//            return back()->with('message','invalid coupon code');
//        }
//        if ($coupons){
//            foreach ($coupons as $coupon){
//                return back()->with('message','ok');
//                Session::put('couponCode', $coupon->coupon_code);
//                Session::put('discountType', $coupon->discount_type);
//                Session::put('amount', $coupon->amount);
//                Session::put('cart_value', $coupon->cart_value);
//                Session::put('publicationStatus', $coupon->publication_status);
//            }
//        }else{
//            return back()->with('message','invalid coupon code');
//        }

//        if (Session::get('cart_value')<=$request->cart_val){
//            return 'ok';
//        }
    }

    public function couponDisplay(){
        return view('admin.coupon.coupon-display',[
            'coupons'=>CouponDisplay::all(),
        ]);
    }
    public function saveCouponDisplay(Request $request){
       $couponDisplay = new CouponDisplay();
       $couponDisplay->text =$request->text;
       $couponDisplay->publication_status =$request->publication_status;
       $couponDisplay->save();
       return back();
    }

    public function couponDisplayStatus($id){
        $coupon=CouponDisplay::find($id);
        if ($coupon->publication_status == 1 ){
            $coupon->publication_status = 0;
            $coupon->save();
            return back()->with('message','Status Successfully Update');
        }else{
            $coupon->publication_status = 1;
            $coupon->save();
            return back()->with('message','Status Successfully Update');
        }
    }
    public function editCouponDisplayStatus($id){
        return view('admin.coupon.edit-coupon-display',[
            'coupon'=>CouponDisplay::find($id),
        ]);
    }
    public function updateCouponDisplay(Request $request) {
        $couponDisplay = CouponDisplay::find($request->id);
        $couponDisplay->text =$request->text;
        $couponDisplay->publication_status =$request->publication_status;
        $couponDisplay->save();
        return redirect('/coupon-display');
    }
    public function deleteCouponDisplayStatus($id){
        $coupon=CouponDisplay::find($id);
        $coupon->delete();
        return back()->with('message','Delete');
    }
    public function subscribeBox(){
        return view('admin.coupon.subscribe-box',[
            'subscribModals'=>SubscribModal::all(),
        ]);
    }
    private function saveImageInfo($request){

//        $this->validate($request, [
//            'image' => 'required|image|mimes:jpeg,PNG,png,jpg,JPG,gif,svg|max:20480'
//        ]);
        $image = $request->file('image');
        $imageName = 'blog'.'-'.rand() . '.' . $image->extension();
        $directory = 'admin/upload-image/subscribe-image/';
        $imageUrl = $directory.$imageName;
        $image->move($directory, $imageName);
        return $imageUrl;
    }
    public function saveSubscribeBox(Request $request){
        $subscribModal = new SubscribModal();
        $subscribModal->heading = $request->heading;
        $subscribModal->text = $request->text;
        $subscribModal->image = $this->saveImageInfo($request);
        $subscribModal->publication_status = $request->publication_status;
        $subscribModal->save();
        return back();
    }
    public function statusSubscribeBox($id){
        $coupon=SubscribModal::find($id);
        if ($coupon->publication_status == 1 ){
            $coupon->publication_status = 0;
            $coupon->save();
            return back()->with('message','Status Successfully Update');
        }else{
            $coupon->publication_status = 1;
            $coupon->save();
            return back()->with('message','Status Successfully Update');
        }
    }

    public function editSubscribeBox($id){
        return view('admin.coupon.edit-subscribe-box',[
            'coupon'=>SubscribModal::find($id),
        ]);
    }
    public function updateSubscribeBox(Request $request) {
        $subscribModal = SubscribModal::find($request->id);
        $subscribModal->heading = $request->heading;
        $subscribModal->text = $request->text;
        if ($request->image) {
            unlink($subscribModal->image);
            $subscribModal->image = $this->saveImageInfo($request);
        }
        $subscribModal->publication_status = $request->publication_status;
        $subscribModal->save();
        return redirect('/subscribe-box');
    }

    public function deleteSubscribeBox($id){
        $coupon=SubscribModal::find($id);
        $coupon->delete();
        return back()->with('message','Delete');
    }

    public function saveSubscriber(Request $request){
        $subscriber = new Subscriber();
        $subscriber->email = $request->email;
        $subscriber->number = $request->number;
        $subscriber->save();
        return back();
    }
    public function subscriberlist(){
        return view('admin.coupon.subscriber-list',[
            'subscribers'=>Subscriber::all()
        ]);
    }
    public function deleteSubscriber($id){
        $subscriber=Subscriber::find($id);
        $subscriber->delete();
        return back()->with('message','Delete');
    }
}
