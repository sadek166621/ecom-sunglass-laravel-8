@extends('frontend.master')
@section('title')
    Checkout
@endsection
@section('scripe')

@endsection
@section('banner-title')
    Checkout
@endsection
@section('content')
    @php
        $products = Cart::content();
         $x=0;
         $total=0;
         $total1=0;

    @endphp
    @foreach($products as $product)
        @php
                $total +=$product->subtotal;
                $x++
        @endphp
    @endforeach
{{--    @php--}}
{{--         $va = Session::get('cart_value')>$total;--}}
{{--    @endphp--}}

    @include('frontend.include.banner')
    <!--Checkout page section-->
    <div class="Checkout_section" id="accordion">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="user-actions">
                        @foreach ($errors->all() as $message)
                            {{ $message }}
                        @endforeach
                    </div>
                   <h3> {{session('message')}}</h3>
                   <div class="user-actions">
                    <h3>
                        <i class="fa fa-file-o" aria-hidden="true"></i>
                        You Have coupon code?
                        <a class="Returning" href="#" data-toggle="collapse" data-target="#checkout_coupon" aria-expanded="true" style="color: red;font-size: 16px;font-weight: 700">Click here to enter your code</a>
                    </h3>
                    <div id="checkout_coupon" class="collapse" data-parent="#accordion">
                            <div class="checkout_info">
                                <form action="{{ route('apply-coupon') }}" method="post">
                                    @csrf
                                    <input placeholder="Coupon code" name="apply_coupon" type="text">
                                    <input name="cart_val" value="{{ $total }}" type="hidden">
                                    <button type="submit">Apply coupon</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="checkout_form">
                <form action="{{ route('shipping') }}" method="post" enctype="multipart/form-data">
                    @csrf
                <div class="row">
                    <div class="col-lg-6 col-md-6">

                            <h3>Billing Details</h3>
                            <div class="row">

                                <div class="col-lg-12 mb-20">
                                    <label>Enter Your Name <span>*</span></label>
                                    <input type="text" name="name" value="{{$customer->name}}" required>
                                    <input type="hidden" name="customer_id" value="{{$customer->id}}"/>
                                </div>
                                <div class="col-lg-6 mb-20">
                                    <label>Phone<span>*</span></label>
                                    <input type="text" name="mobile_number" value="{{$customer->mobile_number}}">

                                </div>
                                <div class="col-lg-6 mb-20">
                                    <label> Email Address   <span>*</span></label>
                                    <input type="email" name="email" value="{{$customer->email}}">
                                </div>
                                <div class="col-12">
                                    <div class="order-notes">
                                        <label for="order_note" style="color: red">Please select A Shipping Division <span>*</span></label>
                                        <select name="division" class="form-control"  required>
                                            <option>Please select A Shipping Division</option>
                                            @foreach($division as $item)
                                                <option value="{{ $item->id }}">{{ $item->division }}</option>
                                            @endforeach
                                        </select>
                                        <br>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="order-notes">
                                        <label for="order_note" style="color: red">Please select A Shipping Area <span>*</span></label>
                                        <select name="area" class="form-control area js-example-basic-single" required>
{{--                                            <option>Please select A Shipping Area</option>--}}
{{--                                            @foreach($shipping as $item)--}}
{{--                                                <option value="{{ $item->state }}">{{ $item->state }}</option>--}}
{{--                                            @endforeach--}}
                                        </select>
                                        <br>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="order-notes">
                                        <label for="order_note">Address <span>*</span></label>
                                        <textarea id="" placeholder="" name="address">{{$customer->address}}</textarea>
                                    </div>
                                </div>
                                <div class="col-12 mb-20 mt-3">
                                    <input id="address" type="checkbox" data-target="createp_account" />
                                    <label class="righ_0" for="address" data-toggle="collapse" data-target="#collapsetwo" aria-controls="collapseOne">Ship to a different address?</label>

                                    <div id="collapsetwo" class="collapse one" data-parent="#accordion">
                                        <div class="row">
                                            <div class="col-lg-12 mb-20 mt-3">
                                                <label>Enter Your Name <span>*</span></label>
                                                <input type="text" name="different_name">
                                            </div>

                                            <div class="col-lg-6 mb-20">
                                                <label>Phone<span>*</span></label>
                                                <input type="text" name="different_mobile_number">

                                            </div>
                                            <div class="col-lg-6 mb-20">
                                                <label> Email Address   <span>*</span></label>
                                                <input type="email" name="different_email">
                                            </div>
                                            <div class="col-12">
                                                <div class="order-notes">
                                                    <label for="order_note">Address <span>*</span></label>
                                                    <textarea placeholder="" name="different_address"></textarea>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
{{--                        </form>--}}
                    </div>
                    <div class="col-lg-6 col-md-6">
{{--                        <form action="#">--}}
                            <h3>Your order</h3>
                            <div class="order_table table-responsive">
                                <table>
                                    <thead>
                                    <tr>
                                        <th>Image</th>
                                        <th>Product</th>
                                        <th>Total</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @php
                                        $z=0;
                                    @endphp
                                    @foreach($products as $product)
                                        <tr>
                                            <td>
                                                <img src="{{ asset($product->options->image) }}" alt="" style="width: 80px;height: 80px">
                                            </td>
                                            <td>

                                                {{ $product->name }} <strong>x {{ $product->qty }}</strong>
                                                <input type="hidden" name="product_name[]" value="{{ $product->name }} ">
                                            </td>
                                            <td class="product-price">৳{{ $abc=$product->price }}</td>
                                        </tr>
                                        @php
                                            $z++;
                                        @endphp
                                    @endforeach
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th></th>
                                        <th>Cart Subtotal</th>
                                        <td>
                                            <strong>৳<span>{{$total}}</span> </strong>
                                            @if(Session::get('couponCode'))
                                                @if(Session::get('discountType')=='Percent')
                                                    <?php $total12=$total*Session::get('amount')/100 ?>
                                                    <input class="cart_a" style="border: none;height: 30px;position: relative;top: 14px;width: 150px;padding-left: 60px" type="hidden" value="<?php echo $total=$total-$total*Session::get('amount')/100 ?>"><span style="position: relative;top: -12px;left: 15px;"></span>
                                                    @elseif(Session::get('discountType')=='Fixed')
                                                    <input class="cart_a" style="border: none;height: 30px;position: relative;top: 14px;width: 150px;padding-left: 60px" type="hidden" value="<?php echo $total=$total-Session::get('amount') ?>"><span style="position: relative;top: -12px;left: 15px;"></span>
                                                    @endif
                                                @else
                                                <input class="cart_a" style="border: none;height: 30px;position: relative;top: 14px;width: 150px;padding-left: 60px" type="hidden" value="<?php echo $total ?>"><span style="position: relative;top: -12px;left: 15px;">৳</span>
                                                @endif
                                        </td>
                                    </tr>
                                    @if(Session::get('couponCode'))
                                        <tr>
                                            <th></th>
                                            @if(Session::get('discountType')=='Percent')
                                            <th>Discount {{ Session::get('amount') }} % For This {{Session::get('couponCode')}} Code</th>
                                            @elseif(Session::get('discountType')=='Fixed')
                                                <th>Discount {{ Session::get('amount') }} ৳ For This {{Session::get('couponCode')}} Code</th>
                                            @endif
                                            <td>
                                                @if(Session::get('discountType')=='Percent')
{{--                                                    <strong>৳<span><?php echo $total*Session::get('amount')/100 ?></span> </strong>--}}
                                                    <strong>৳<span><?php echo $total12 ?></span> </strong>
                                                    <input type="hidden" name="discount" value="{{ $total12 }}">
                                                @elseif(Session::get('discountType')=='Fixed')
                                                    <strong>৳<span>{{ Session::get('amount') }}</span> </strong>
                                                    <input type="hidden" name="discount" value="{{ Session::get('amount') }}">
                                                @endif
{{--                                                <strong>৳<span>{{ Session::get('amount') }}</span> </strong>--}}

                                            </td>
                                        </tr>
                                    @endif
                                    <tr>
                                        <td></td>
                                        <th>
                                            <strong>
                                                 Shipping charge
                                            </strong>
                                        </th>
                                        <td>
                                            @if($freeShipping->first()->free_shipping==1)
                                                <p>Free</p>
                                                <input type="hidden" name="rate" value="Free">
                                                @else
                                                <p id="rate"> </p>
                                                @endif

                                        </td>
                                    </tr>
                                    @if($freeShipping->first()->free_shipping==1)
                                        <tr class="order_total">
                                            <th></th>
                                            <th>Order Total</th>
                                            <td><strong>৳<span>{{$total}}</span> </strong></td>
                                            <input type="hidden" name="order_total" value="{{ $total }}" required>
                                        </tr>
                                        @else
                                        <tr class="order_total">
                                            <th></th>
                                            <th>Order Total</th>
                                            <td><strong>৳<span id="abd"></span> </strong></td>
                                            <input type="hidden" name="order_total" id="tt" value="" required>
                                        </tr>
                                        @endif
                                    <tr>
                                        <th colspan="3">
                                            @php
                                                $i=1;
                                            @endphp
                                            @foreach ($errors->all() as $message)
                                            <span style="color: red; font-size: 20px">{{ $i }}.</span>
                                            <span style="color: red;text-align: justify">{{ $message }}</span><br>
                                                @php
                                                    $i++;
                                                @endphp
                                            @endforeach
                                        </th>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <div class="payment_method">
                                <div class="panel-default">
                                    <input id="payment_defult" name="payment_method" value="COD" type="radio" data-target="createp_account" required />
                                    <label for="payment_defult" data-toggle="collapse" data-target="#collapsedefult" aria-controls="collapsedefult">COD</label>
                                </div>
                                <div class="panel-default">
                                    <input id="payment" name="payment_method" value="aamarPay" type="radio" data-target="createp_account" required />
                                    <label for="payment" data-toggle="collapse" data-target="#collapsedefult" aria-controls="collapsedefult">
                                        <img src="{{ asset('frontend') }}/assets/img/aamarpay_logo.png" alt="">
                                    </label>
                                </div>
                                <div class="order_button">
                                    <button  type="submit">Proceed to Order</button>
                                </div>
                            </div>

                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
    <!--Checkout page section end-->
    <hr>

@endsection
