<?php

namespace App\Http\Controllers;

use App\Customer;
use App\Division;
use App\FreeShipping;
use App\Order;
use App\OrderDetail;
use App\Payment;
use App\Prescription;
use App\ProductPrice;
use App\Shipping;
use App\shippingRate;
use Illuminate\Http\Request;
use Session;
use Cart;

class CheckoutController extends Controller
{
    public function index(){
        return view('frontend.checkout.checkout',[
            'customer'=>Customer::find(Session::get('customerId')),
            'shipping'=>shippingRate::where('publication_status',1)->get(),
            'division'=>Division::where('publication_status',1)->get(),
            'freeShipping'=>FreeShipping::select('free_shipping','id')->get(),
        ]);
    }
    public function saveShipping(Request $request){
//        return count($request->file('prescription'));
//            return $request;
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required',
            'mobile_number' => 'required',
            'address' => 'required',
            'area' => 'required',
            'order_total' => 'required',
        ]);
        if($request->payment_method=='COD'){
            $shipping = new Shipping();
            $shipping->customer_id =$request->customer_id;
            $shipping->name =$request->name;
            $shipping->email =$request->email;
            $shipping->mobile_number =$request->mobile_number;
            $shipping->address =$request->address;
            $shipping->different_name =$request->different_name;
            $shipping->different_email =$request->different_email;
            $shipping->different_mobile_number =$request->different_mobile_number;
            $shipping->different_address =$request->different_address;
            $shipping->save();
            $shippingId= $shipping->id;
            session::put('shippingId',$shippingId);

            $payment = new Payment();
            $payment->payment_method = $request->payment_method;
            $payment->payment_mobile_no = $request->payment_mobile_no;
            $payment->transaction_no = $request->transaction_no;
            $payment->amount = $request->amount;
            $payment->save();
            $paymentId= $payment->id;
            session::put('paymentId',$paymentId);

            $order = new Order();
            $order->customer_id=Session::get('customerId');
            $order->shipping_id=Session::get('shippingId');
            $order->payment_id=Session::get('paymentId');
            $order->order_no=rand(000,999);
            $order_data = Order::orderBy('id','desc')->first();
            if ($order_data == null){
                $firstReg='0';
                $order_no=$firstReg+1;
            }else{
                $order_data = Order::orderBy('id','desc')->first()->order_no;
                $order_no = $order_data+1;
            }
            $order->order_no=$order_no;
            $order->order_total=$request->order_total;
            $order->discount=$request->discount;
            $order->status='0';
            $order->payment_status='0';
            $order->division=$request->division;
            $order->area=$request->area;
            $order->rate=$request->rate;
            $order->save();
            $orderId= $order->id;
            session::put('orderId',$orderId);
            $products = Cart::content();
//        return $products;
            foreach ($products as $product){
                $orderDetail= new OrderDetail();
                $orderDetail->order_id = Session::get('orderId');
                $orderDetail->product_id = $product->id;
//            foreach ($request->product_name as $req2) {
//                $orderDetail->product_name = $req2;
//            }
                $orderDetail->prescription = $product->options->image2;;
                $orderDetail->product_price = $product->price;
                $orderDetail->color_id = $product->options->color;
                $orderDetail->size_id = $product->options->size_width;
                $orderDetail->quantity = $product->qty;
                $orderDetail->lens_type = $product->options->lens_type;
                $orderDetail->save();
            }
            if($files=$request->file('prescription')){
//            foreach($files as $file){
                $image = $request->file('prescription');
                $imageName = rand() . '.' .$image->getClientOriginalExtension();
                $directory = 'admin/prescription/';
                $imageUrl = $directory.$imageName;
                $image->move($directory, $imageName);
                $prescription = new Prescription();
                $prescription->customer_id=Session::get('customerId');
                $prescription->shipping_id=Session::get('shippingId');
                $prescription->order_id = Session::get('orderId');
                $prescription->prescription = $imageUrl;
                $prescription->save();
//            }
            }
            if($files=$request->product_price){
                foreach($files as $file){
                    $price =new ProductPrice();
                    $price->customer_id=Session::get('customerId');
                    $price->shipping_id=Session::get('shippingId');
                    $price->order_id = Session::get('orderId');
                    $price->o_product_price = $file;
                    $price->save();
                }
            }
            Cart::destroy();
            Session::forget('couponCode');
            Session::forget('discountType');
            Session::forget('amount');
            Session::forget('cart_value');
            Session::forget('publicationStatus');
            Session::forget('name');
            Session::forget('image');
            Session::forget('description');
            Session::forget('price');
            return redirect('/')->with('message', 'Thank To Order  Your Order Has Been Received');
        }elseif($request->payment_method=='aamarPay'){
            $shipping = new Shipping();
            $shipping->customer_id =$request->customer_id;
            $shipping->name =$request->name;
            $shipping->email =$request->email;
            $shipping->mobile_number =$request->mobile_number;
            $shipping->address =$request->address;
            $shipping->different_name =$request->different_name;
            $shipping->different_email =$request->different_email;
            $shipping->different_mobile_number =$request->different_mobile_number;
            $shipping->different_address =$request->different_address;
            $shipping->save();
            $shippingId= $shipping->id;
            session::put('shippingId',$shippingId);

            $payment = new Payment();
            $payment->payment_method = $request->payment_method;
            $payment->payment_mobile_no = $request->payment_mobile_no;
            $payment->transaction_no = $request->transaction_no;
            $payment->amount = $request->amount;
            $payment->save();
            $paymentId= $payment->id;
            session::put('paymentId',$paymentId);

            $order = new Order();
            $order->customer_id=Session::get('customerId');
            $order->shipping_id=Session::get('shippingId');
            $order->payment_id=Session::get('paymentId');
            $order->order_no=rand(000,999);
            $order_data = Order::orderBy('id','desc')->first();
            if ($order_data == null){
                $firstReg='0';
                $order_no=$firstReg+1;
            }else{
                $order_data = Order::orderBy('id','desc')->first()->order_no;
                $order_no = $order_data+1;
            }
            $order->order_no=$order_no;
            $order->order_total=$request->order_total;
            $order->discount=$request->discount;
            $order->status='0';
            $order->payment_status='0';
            $order->division=$request->division;
            $order->area=$request->area;
            $order->rate=$request->rate;
            $order->save();
            $orderId= $order->id;
            session::put('orderId',$orderId);
            $products = Cart::content();
//        return $products;
            foreach ($products as $product){
                $orderDetail= new OrderDetail();
                $orderDetail->order_id = Session::get('orderId');
                $orderDetail->product_id = $product->id;
//            foreach ($request->product_name as $req2) {
//                $orderDetail->product_name = $req2;
//            }
                $orderDetail->prescription = $product->options->image2;;
                $orderDetail->product_price = $product->price;
                $orderDetail->color_id = $product->options->color;
                $orderDetail->size_id = $product->options->size_width;
                $orderDetail->quantity = $product->qty;
                $orderDetail->lens_type = $product->options->lens_type;
                $orderDetail->save();
            }
            if($files=$request->file('prescription')){
//            foreach($files as $file){
                $image = $request->file('prescription');
                $imageName = rand() . '.' .$image->getClientOriginalExtension();
                $directory = 'admin/prescription/';
                $imageUrl = $directory.$imageName;
                $image->move($directory, $imageName);
                $prescription = new Prescription();
                $prescription->customer_id=Session::get('customerId');
                $prescription->shipping_id=Session::get('shippingId');
                $prescription->order_id = Session::get('orderId');
                $prescription->prescription = $imageUrl;
                $prescription->save();
//            }
            }
            if($files=$request->product_price){
                foreach($files as $file){
                    $price =new ProductPrice();
                    $price->customer_id=Session::get('customerId');
                    $price->shipping_id=Session::get('shippingId');
                    $price->order_id = Session::get('orderId');
                    $price->o_product_price = $file;
                    $price->save();
                }
            }
            session::put('paymentId',$paymentId);
            Session::put('order_total',$request->order_total);
            Session::put('email',$request->email);
            Session::put('mobile_number',$request->mobile_number);
            Session::put('address',$request->address);
            Session::put('division',$request->division);
            Session::put('area',$request->area);
            Cart::destroy();
            Session::forget('couponCode');
            Session::forget('discountType');
            Session::forget('amount');
            Session::forget('cart_value');
            Session::forget('publicationStatus');
            Session::forget('name');
            Session::forget('image');
            Session::forget('description');
            Session::forget('price');
            return redirect('/payment');
        }
      }
    private function prescription(Request $request){
        if($files=$request->file('prescription')){
//            foreach($files as $file){
                $image = $request->file('prescription');
                $imageName = rand() . '.' .$image->getClientOriginalExtension();
                $directory = 'admin/prescription/';
                $imageUrl = $directory.$imageName;
                $image->move($directory, $imageName);
                return $imageUrl;
//            }

        }

    }

    public function saveOrder(Request $request){
//        return $request;
        $payment = new Payment();
        $payment->payment_method = $request->payment_method;
        $payment->payment_mobile_no = $request->payment_mobile_no;
        $payment->transaction_no = $request->transaction_no;
        $payment->amount = $request->amount;
        $payment->save();
        $paymentId= $payment->id;
        session::put('paymentId',$paymentId);

        $order = new Order();
        $order->customer_id=Session::get('customerId');
        $order->shipping_id=Session::get('shippingId');
        $order->payment_id=Session::get('paymentId');
        $order->order_no=rand(000,999);
        $order_data = Order::orderBy('id','desc')->first();
        if ($order_data == null){
            $firstReg='0';
            $order_no=$firstReg+1;
        }else{
            $order_data = Order::orderBy('id','desc')->first()->order_no;
            $order_no = $order_data+1;
        }
        $order->order_no=$order_no;
        $order->order_total=$request->order_total;
        $order->status='0';
        $order->payment_status='0';
        $order->save();
        $orderId= $order->id;
        session::put('orderId',$orderId);

        $products = Cart::content();
        return $products;
        foreach ($products as $product){
            $orderDetail= new OrderDetail();
            $orderDetail->order_id = Session::get('orderId');
            $orderDetail->product_id = $product->id;
            $orderDetail->color_id = $product->options->color;
            $orderDetail->quantity = $product->qty;
            $orderDetail->save();
        }
        Cart::destroy();
        return redirect('/');
    }
}
