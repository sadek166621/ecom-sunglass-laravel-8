@extends('frontend.master')
@section('title')
    HOME
@endsection
@section('banner-title')
    Compare
@endsection
@section('content')
    @include('frontend.include.banner')
    <!--shop  area start-->
    <div class="shop_area shop_reverse">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <!--shop wrapper start-->
                    <!--shop tab product start-->
                    <div class="tab-content">
                        <div class="tab-pane grid_view fade show active" id="large" role="tabpanel">
                            <div class="row">
                                @foreach($products as $product)
                                    <div class="col-lg-3 col-3 col-sm-6">
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a class="primary_img" href="product-details.html"><img src="{{ asset($product->main_image) }}" alt="" style="height: 200px;width: 100%" class="img-fluid"></a>
                                                <a class="secondary_img" href="product-details.html"><img src="{{ asset($product->second_image) }}" alt="" style="height: 200px; width: 260px" class="img-fluid"></a>
                                                <div class="quick_button">
                                                    <a href="#" data-toggle="modal" data-target="#modal_box" data-placement="top" data-original-title="quick view"> quick view</a>
                                                </div>
                                            </div>
                                            <div class="product_content">
                                                <div class="tag_cate">
                                                    <a href="{{ route('menu',['id'=>$product->category_id,'name'=>$product->category_name]) }}">{{$product->category_name}},</a>
                                                    <a href="{{ route('smenu',['id'=>$product->sub_category_id,'catId'=>$product->category_id,'name'=>$product->sub_category_name]) }}">{{ substr($product->sub_category_name,10)>10? substr($product->sub_category_name,0,10).'...': substr($product->sub_category_name,0,10) }}</a>
                                                </div>
                                                <h3><a href="{{ route('product-details',['id'=>$product->id,'slug'=>$product->slug]) }}"> {{ substr($product->product_name,25)>25? substr($product->product_name,0,25).'...': substr($product->product_name,0,25) }}</a></h3>
                                                <h3>
                                                    <span>Price : </span>
                                                    <del class="old_price">৳ {{ $product->discount_product_price }}</del>&nbsp;&nbsp;
                                                    <span class="current_price">৳ {{$product->product_price}}</span>
                                                </h3>
                                                <h3> <span>Discount : </span>
                                                    <span class="current_price">৳ {{ $product->discount_product_amount==null ? '0': $product->discount_product_amount }}</span>
                                                </h3>
                                                <h3>
                                                    <div class="action_links">
                                                        <ul>
                                                            <li class="c-wish3">
                                                                <form action="{{ route('new-wish-list') }}" method="post">
                                                                    @csrf
                                                                    <input type="hidden" name="product_id" value="{{ $product->id }}">
                                                                    <button type="submit" style="border: none;background: none">
                                                                        <a  data-placement="top" title="Add to Wishlist" data-toggle="tooltip"><span class="icon icon-Heart" style="font-size: 15px;position: absolute;left: 15px;top: 11px"></span></a>
                                                                    </button>
                                                                </form>
                                                            </li>
                                                            <li class="add_to_cart c-cart3">
                                                                <form action="{{ route('cart-add') }}" method="post" style="display: inline">
                                                                    @csrf
                                                                    <input type="hidden" name="product_id" value="{{ $product->id }}">
                                                                    <input type="hidden" name="product_stock" value="{{ $product->product_stock }}">
                                                                    <button type="submit" style="border: none;background: none">
                                                                        <a title="add to cart">add to cart</a>
                                                                    </button>
                                                                </form>
                                                            </li>
                                                            <li class="c-com3">
                                                                <form>
                                                                    @csrf
                                                                    <input type="hidden" name="product_id" value="{{ $product->id }}">
                                                                    <button type="submit" style="border: none;background: none">
                                                                        <a title="remove" href="{{ route('compare-remove',['id'=>$product->id]) }}"><i class="ion-ios-trash" style="font-size: 20px;position: absolute;left: 16px; top: -1px"></i></a>
                                                                    </button>
                                                                </form>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </h3>

                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>

                    </div>
                    <!--shop tab product end-->
                    <!--shop toolbar start-->
                    <div class="shop_toolbar t_bottom">

                    </div>
                    <!--shop toolbar end-->
                    <!--shop wrapper end-->
                </div>
            </div>
        </div>
    </div>
    <!--shop  area end-->

    <hr>
@endsection
