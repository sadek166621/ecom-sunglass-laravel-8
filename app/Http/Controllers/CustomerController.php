<?php

namespace App\Http\Controllers;

use App\Customer;
use App\Division;
use App\FreeShipping;
use App\Order;
use App\Payment;
use App\Shipping;
use Illuminate\Http\Request;
use PDF;
use Session;
use DB;


class CustomerController extends Controller
{
    public function index(){
        return view('frontend.customer.register');
    }

    public function saveCustomer(Request $request){
//        $this->validate($request, array(
//            'first_name'=>'required|max:20|min:5|regex:/^[\pL\s\-]+$/u',
//            'last_name'=>'required|max:20|min:5|regex:/^[\pL\s\-]+$/u',
//            'email_address'=>'required|email|unique:customers,email_address',
//            'password'=>'required|max:10|min:6',
//            'mobile_number'=>'required|size:11|regex:/(01)[0-9]{9}/',
//        ));


        $customer = new Customer();
        $customer->name = $request->name;
        $customer->email = $request->email;
        $customer->mobile_number = $request->mobile_number;
        $customer->password = bcrypt($request->password);
        $customer->save();
        Session::put('customerId', $customer->id);
        Session::put('customerName', $request->name);
        return redirect('/');
    }
    private function uploadCustomerImage($request){
        if($customerImage = $request->file('customer_image')) {
            $customerImageName=rand() . '.' . $customerImage->getClientOriginalExtension();
            $directory = 'image/customer-image/';
            $imageUrl = $directory.$customerImageName;
            $customerImage->move($directory,$customerImageName);
            return $imageUrl;
        }
    }
    public function updateCustomer(Request $request){
//        $this->validate($request, array(
//            'first_name'=>'required|max:20|min:5|regex:/^[\pL\s\-]+$/u',
//            'last_name'=>'required|max:20|min:5|regex:/^[\pL\s\-]+$/u',
//            'email_address'=>'required|email|unique:customers,email_address',
//            'password'=>'required|max:10|min:6',
//            'mobile_number'=>'required|size:11|regex:/(01)[0-9]{9}/',
//        ));
        $customer =Customer::find($request->customer_id);
        $customer->name = $request->name;
        $customer->email = $request->email;
        $customer->mobile_number = $request->mobile_number;
        if ($request->password){
            $customer->password = bcrypt($request->password);
        }
        if($request->file('customer_image'))  {
            $customer->customer_image = $this->uploadCustomerImage($request);
        }
        $customer->address =$request->address;
        $customer->save();
        Session::put('customerId', $customer->id);
        Session::put('customerName', $request->name);
        return redirect('/');
    }

    public function customerLogin(){
        return view('frontend.customer.login');
    }

    public function customerLoginCheck(Request $request) {
        $this->validate($request,array(
            'username'=>'required',
            'password'=>'required'
        ));

        $customerInfo = Customer::where('email', $request->username)
            ->orWhere('mobile_number', $request->username)
            ->first();
        if($customerInfo) {
            $existingPassword = $customerInfo->password;
            if (password_verify($request->password, $existingPassword)) {
                Session::put('customerId', $customerInfo->id);
                Session::put('customerName', $customerInfo->name);

                return redirect('/');
            } else {
                return back()->with('message', 'Please use valid password');
            }
        } else {
            return back()->with('message', 'Please use valid email address');
        }
    }
    public function customerLogout(){
        Session::forget('customerId');
        Session::forget('customerName');
        return redirect('/');
    }

    public  function customerDashboard(){
        Session::forget('sub');
        return view('frontend.customer.dashboard',[
            $customerId=Session::get('customerId'),
            'orders'=> Order::where('orders.customer_id',$customerId)->orderBy('id','desc')->get(),
            'customer'=>Customer::find(Session::get('customerId')),
            'products'=>DB::table('wish_lists')
                ->join('products','wish_lists.product_id','products.id')
                ->select('wish_lists.*','products.*')
                ->where('wish_lists.customer_id',$customerId)
                ->get()
        ]);
    }

    public function orderList(){
        return view('frontend.customer.order-list',[
            $customerId=Session::get('customerId'),
            'orders'=> Order::where('orders.customer_id',$customerId)->get(),
        ]);
    }
    public function viewOrderInvoice($id) {
//        return $id;
        $orderInfo = Order::find($id);
        $orderPaymentInfo = Payment::find($orderInfo->payment_id);
        $billingInfo = Customer::find($orderInfo->customer_id);
        $shippingInfo = Shipping::find($orderInfo->shipping_id);
        $division = Division::find($orderInfo->division);
        $orderProductsInfo = DB::table('order_details')
            ->join('products', 'order_details.product_id', '=', 'products.id')
            ->join('sizes', 'order_details.size_id', '=', 'sizes.id')
            ->join('colors', 'order_details.color_id', '=', 'colors.id')
            ->select('products.*', 'order_details.order_id','order_details.product_id','order_details.quantity','order_details.prescription','order_details.product_price','sizes.size_name','colors.color_name')
            ->where('order_id', $id)
            ->get();

        $pdf = PDF::loadView('frontend.customer.view-order-invoice', [
            'orderInfo'=>$orderInfo,
            'orderProductsInfo' =>$orderProductsInfo,
            'billingInfo' => $billingInfo,
            'shippingInfo' => $shippingInfo,
            'orderPaymentInfo' => $orderPaymentInfo,
            'division' => $division,
            'freeShipping'=>FreeShipping::select('free_shipping')->get(),
        ]);
        return $pdf->stream('invoice.pdf');
    }
    public function adminViewOrderInvoice($id) {
//        return $id;
        $orderInfo = Order::find($id);
        $orderPaymentInfo = Payment::find($orderInfo->payment_id);
        $billingInfo = Customer::find($orderInfo->customer_id);
        $shippingInfo = Shipping::find($orderInfo->shipping_id);
        $division = Division::find($orderInfo->division);
        $orderProductsInfo = DB::table('order_details')
            ->join('products', 'order_details.product_id', '=', 'products.id')
            ->join('sizes', 'order_details.size_id', '=', 'sizes.id')
            ->join('colors', 'order_details.color_id', '=', 'colors.id')
            ->select('products.*', 'order_details.order_id','order_details.product_id','order_details.quantity','order_details.prescription','order_details.product_price','sizes.size_name','colors.color_name')
            ->where('order_id', $id)
            ->get();

        $pdf = PDF::loadView('admin.order.view-order-invoice', [
            'orderInfo'=>$orderInfo,
            'orderProductsInfo' =>$orderProductsInfo,
            'billingInfo' => $billingInfo,
            'shippingInfo' => $shippingInfo,
            'orderPaymentInfo' => $orderPaymentInfo,
            'division' => $division,
            'freeShipping'=>FreeShipping::select('free_shipping')->get(),
        ]);
        return $pdf->stream('invoice.pdf');
    }
    public function customerProfile(){
        return view('frontend.customer.profile',[
            'customer'=>Customer::find(Session::get('customerId'))
        ]);
    }

}
