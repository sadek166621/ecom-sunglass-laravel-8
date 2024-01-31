<?php

namespace App\Http\Controllers;

use App\Payment;
use Illuminate\Http\Request;
use Session;
class paymentController extends Controller
{
    public function index(Request $request){
        $url = 'https://sandbox.aamarpay.com/request.php'; // live url https://secure.aamarpay.com/request.php
        $fields = array(
            'store_id' => 'aamarpaytest', //store id will be aamarpay,  contact integration@aamarpay.com for test/live id
            'amount' => Session::get('order_total'), //transaction amount
            'payment_type' => 'VISA', //no need to change
            'currency' => 'BDT',  //currenct will be USD/BDT
            'tran_id' => rand(1111111,9999999), //transaction id must be unique from your end
            'cus_name' => Session::get('customerName'),  //customer name
            'cus_email' => Session::get('email'), //customer email address
            'cus_add1' => Session::get('address'),  //customer address
            'cus_add2' => ' ', //customer address
            'cus_city' => Session::get('area'),  //customer city
            'cus_state' => Session::get('division'),  //state
            'cus_postcode' => '1206', //postcode or zipcode
            'cus_country' => 'Bangladesh',  //country
            'cus_phone' => Session::get('mobile_number'), //customer phone number
            'cus_fax' => 'Not¬Applicable',  //fax
            'ship_name' => 'ship name', //ship name
            'ship_add1' => 'House B-121, Road 21',  //ship address
            'ship_add2' => 'Mohakhali',
            'ship_city' => 'Dhaka',
            'ship_state' => 'Dhaka',
            'ship_postcode' => '1212',
            'ship_country' => 'Bangladesh',
            'desc' => 'payment description',
            'success_url' => route('success'), //your success route
            'fail_url' => route('fail'), //your fail route
            'cancel_url' => 'http://localhost/sunglasshutBD/public/', //your cancel url
            'opt_a' => 'Reshad',  //optional paramter
            'opt_b' => 'Akil',
            'opt_c' => 'Liza',
            'opt_d' => Session::get('paymentId'),
            'signature_key' => 'dbb74894e82415a2f7ff0ec3a97e4183'); //signature key will provided aamarpay, contact integration@aamarpay.com for test/live signature key

        $fields_string = http_build_query($fields);

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_VERBOSE, true);
        curl_setopt($ch, CURLOPT_URL, $url);

        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields_string);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $url_forward = str_replace('"', '', stripslashes(curl_exec($ch)));
        curl_close($ch);

        $this->redirect_to_merchant($url_forward);
    }

    function redirect_to_merchant($url) {

        ?>
        <html xmlns="http://www.w3.org/1999/xhtml">
        <head><script type="text/javascript">
                function closethisasap() { document.forms["redirectpost"].submit(); }
            </script></head>
        <body onLoad="closethisasap();">

        <form name="redirectpost" method="post" action="<?php echo 'https://sandbox.aamarpay.com/'.$url; ?>"></form>
        <!-- for live url https://secure.aamarpay.com -->
        </body>
        </html>
        <?php
        exit;
    }

    public function success(Request $request){
//        return $request;
        $payment=Payment::where('id',$request->opt_d)->first();
        $payment->payment_method=$request->card_type;
        $payment->payment_mobile_no=$request->card_number;
        $payment->transaction_no=$request->bank_txn;
        $payment->amount=$request->amount;
        $payment->save();
        return redirect('/')->with('message', 'Thank To Order  Your Order Has Been Received');
    }

    public function fail(Request $request){
         return redirect('/');
    }

}
