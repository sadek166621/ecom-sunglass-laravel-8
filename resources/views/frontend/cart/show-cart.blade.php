@extends('frontend.master')
@section('title')
    Show cart
@endsection
@section('banner-title')
    Show Cart
@endsection
@section('content')
    @include('frontend.include.banner')

    <!--shopping cart area start -->
    <div class="shopping_cart_area mt-60">
        <div class="container">
            <form action="#">
                <div class="row">
                    <div class="col-12">
                        <div class="table_desc">
                            <div class="cart_page table-responsive">
                                <table>
                                    <thead>
                                    <tr>
                                        <th class="product_remove">Delete</th>
                                        <th class="product_thumb">Image</th>
                                        <th class="product_name">Product</th>
                                        <th class="product-price">Price</th>
                                        <th class="product_quantity">Quantity</th>
                                        <th class="product_total">Total</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @php
                                        $products = Cart::content();
                                         $i=1;
                                         $abc=0;
                                         $total=0;
                                    @endphp
                                    <tr style="display: none">
                                        <td class="product_remove"><a href="#"><i class="fa fa-trash-o"></i></a></td>
                                        <td class="product_thumb"><a href="#"><img src="" alt="img"></a></td>
                                        <td class="product_name"><a href="#">abc</a></td>
                                        <td class="product-price">৳50</td>

                                        {{--                                        <td class="product_quantity"><label>Quantity</label> <input min="1" max="100" value="1" type="number"></td>--}}

                                        <td class="product-quantity" data-title="Quantity">
                                            <div class="quantity">
                                                <form action="{{ route('cart-update') }}" method="post" class="form-inline">
                                                    @csrf
                                                    <div class="form-group" style="position: relative">
                                                        <input class="form-control" type="text" name="qty" value="" style="width: 23%">
                                                        <input type="hidden" name="rowId" value="">
                                                        <input type="submit" class="btn btn-success form-control" value="update" style="position: absolute;left: 78px;width: 32%;top: 1px;">
                                                    </div>
                                                </form>
                                                {{--                                            <input type="button" value="-" class="minus">--}}
                                                {{--                                            <input type="text" name="quantity" value="1" title="Qty" class="qty" size="4">--}}
                                                {{--                                            <input type="button" value="+" class="plus">--}}
                                            </div>
                                        </td>



                                        <td class="product_total">৳50</td>
                                    </tr>
                                    @foreach($products as $product)
                                    <tr>
                                        <td class="product_remove"><a href="{{ route('cart-remove',['id'=>$product->rowId]) }}"><i class="fa fa-trash-o"></i></a></td>
                                        <td class="product_thumb"><a href="#"><img src="{{ asset($product->options->image) }}" alt=""></a></td>
                                        <td class="product_name"><a href="#">{{ $product->name }}</a></td>
                                        <td class="product_name"><a href="#">{{ $product->price }}</a></td>
{{--                                        <td class="product_quantity"><label>Quantity</label> <input min="1" max="100" value="1" type="number"></td>--}}
                                        <td class="product-quantity" data-title="Quantity">
                                            <div class="quantity">
                                                <form action="{{ route('cart-update') }}" method="post" class="form-inline">
                                                    @csrf
                                                    <div class="form-group" style="position: relative">
                                                        <input min="1" max="100" class="form-control" type="number" name="qty" value="{{ $product->qty }}" style="width: 50%">
                                                        <input type="hidden" name="rowId" value="{{ $product->rowId }}">
                                                        <button type="submit"   style="position: absolute;left: 60px;width: 15%;top: 1px; border: none;background: none"><i class="fa fa-refresh" aria-hidden="true" style="position: absolute;left: 80%;top: 10px;"></i></button>

                                                    </div>
                                                </form>
                                                {{--                                            <input type="button" value="-" class="minus">--}}
                                                {{--                                            <input type="text" name="quantity" value="1" title="Qty" class="qty" size="4">--}}
                                                {{--                                            <input type="button" value="+" class="plus">--}}
                                            </div>
                                        </td>
                                        <td class="product_total">৳{{ $product->subtotal }}</td>

                                    </tr>
                                    @php
                                        $i++;
                                        $total +=$product->subtotal;
                                    @endphp
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
                <!--coupon code area start-->
                <div class="coupon_area">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
{{--                            <div class="coupon_code left">--}}
{{--                                <h3>Coupon</h3>--}}
{{--                                <div class="coupon_inner">--}}
{{--                                    <p>Enter your coupon code if you have one.</p>--}}
{{--                                    <input placeholder="Coupon code" type="text">--}}
{{--                                    <button type="submit">Apply coupon</button>--}}
{{--                                </div>--}}
{{--                            </div>--}}
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="coupon_code right">
                                <h3>Cart Totals</h3>
                                <div class="coupon_inner">
                                    <div class="cart_subtotal">
                                        <p>Subtotal</p>
                                        <p class="cart_amount" >৳ <input id="cart_a" style="border: none" type="text" value="<?php echo $total ?>"></p>
                                    </div>
{{--                                    <div class="cart_subtotal ">--}}
{{--                                        --}}
{{--                                    </div>--}}
                                    <div class="cart_subtotal">
                                        <p>Total</p>
                                        <p class="cart_amount" id="abd">৳ <?php echo $total ?></p>
                                    </div>
                                    <div class="checkout_btn">
                                        @if($customerId = Session::get('customerId'))
                                            <a href="{{ route('checkout') }}">Proceed to Checkout</a>
                                        @else
                                            <a href="{{ route('customer-login') }}">Proceed to Checkout</a>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--coupon code area end-->
            </form>
        </div>
    </div>
    <!--shopping cart area end -->
@endsection
