@extends('frontend.master')
@section('title')
    HOME
@endsection
@section('content')
    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="{{route('/')}}">home</a></li>
                            <li>Camera & Video </li>
                            <li>shop</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->

    <!--shop  area start-->
    <div class="shop_area shop_reverse mt-50 mb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-12">
                    <!--sidebar widget start-->
                    <aside class="sidebar_widget">
                        <div class="shop_sidebar_banner mb-50">
                            <a href="#"><img src="{{ asset('frontend') }}/assets/img/bg/banner16.jpg" alt=""></a>
                        </div>
                        <div class="widget_list widget_categories">
{{--                            <h2>{{ $category->category_name}}</h2>--}}
                            <ul>
{{--                                @foreach($subCategories as $subCategory)--}}
{{--                                    <li>--}}
{{--                                        <a href="{{ route('smenu',['id'=>$subCategory->id,'catId'=>$category->id,'name'=>$category->category_name])}}">{{ $subCategory->sub_category_name  }}</a>--}}
{{--                                    </li>--}}
{{--                                @endforeach--}}


                            </ul>
                        </div>
                        <div class="widget_list ">
                            <h2>Filter by price</h2>
                            <?php // $url = Request::$request->url();?>
                            {{--                            @if(Request::is($url))--}}
                            @foreach($products2 as $product)
                            <form action="{{ route('price-filter') }}" method="post" enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="id" value="{{ $product->category_id }}" />
                                <input type="hidden" name="name" value="{{ $product->category_name }}" />
                                <input type="text" name="price_min" value="{{ $price_min }}" />
                                <input type="text" name="price_max" value="{{ $price_max }}" />
                                {{--                                <div id="slider-range"></div>--}}
                                <button type="submit">Filter</button>
                            </form>
                            @endforeach
                            {{--                                @endif--}}
                        </div>


                        <div class="widget_list recent_product">
                            <h2>Top Rated Products</h2>
                            <div class="recent_product_container">
                                @foreach($topRatedProducts as $topRatedProduct)
                                    <div class="recent_product_list">
                                        <div class="recent_product_thumb">
                                            <a href="{{ route('product-details',['id'=>$topRatedProduct->id]) }}"><img src="{{ asset($topRatedProduct->main_image) }}" alt=""></a>
                                        </div>
                                        <div class="recent_product_content">
                                            <h3><a href="{{ route('product-details',['id'=>$topRatedProduct->id]) }}">{{$topRatedProduct->product_name }}</a></h3>

                                            @if($topRatedProduct->discount_product_price > 0)
                                                <div class="price_box">
                                                    <span class="current_price">৳ {{$topRatedProduct->discount_product_price }}</span>
                                                    <span class="old_price">৳ {{$topRatedProduct->product_price}}</span>
                                                </div>
                                            @elseif($topRatedProduct->discount_product_price == Null)
                                                <div class="price_box">
                                                    <span class="current_price">৳ {{$topRatedProduct->product_price }}</span>
                                                </div>
                                            @else
                                                <div class="product_price">
                                                    <span class="price">৳ {{$topRatedProduct->product_price }}</span>
                                                </div>
                                            @endif
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>

                    </aside>
                    <!--sidebar widget end-->
                </div>
                <div class="col-lg-9 col-md-12">
                    <!--shop wrapper start-->
                    <!--shop toolbar start-->
                    <div class="shop_banner">
                        <img src="{{ asset('frontend') }}/assets/img/bg/banner29.jpg" alt="">
                    </div>
                    <div class="shop_title">
                        <h1>shop list</h1>
                    </div>
                    <div class="shop_toolbar_wrapper">
                        <div class="shop_toolbar_btn">

                            <button data-role="grid_3" type="button" class=" btn-grid-3" data-toggle="tooltip" title="3"></button>

                            <button data-role="grid_4" type="button"  class="active btn-grid-4" data-toggle="tooltip" title="4"></button>

                            {{--                            <button data-role="grid_list" type="button"  class="btn-list" data-toggle="tooltip" title="List"></button>--}}
                        </div>
                        <div class=" niceselect_option">




                        </div>

                    </div>
                    <!--shop toolbar end-->

                    <div class="row no-gutters shop_wrapper grid_4">

                        @foreach($products as $product)
                            <div class=" col-lg-3 col-md-4 col-sm-6">
                                <div class="single_product">
                                    <div class="product_thumb">
                                        <a href="{{ route('product-details',['id'=>$product->id]) }}"><img src="{{ asset($product->main_image) }}" alt="" style="height: 150px"></a>
                                        <div class="label_product">
                                            <span class="label_sale">sale</span>
                                        </div>
                                        <div class="quick_button">
                                            <a href="#" class="details" id="{{ $product->id }}" data-toggle="modal" data-target="#modal_box"  title="quick view"> <i class="zmdi zmdi-eye"></i></a>
                                        </div>
                                    </div>


                                    <div class="product_content grid_content">
                                        <div class="product_name">
                                            <h3><a href="{{ route('product-details',['id'=>$product->id]) }}">{{$product->product_name }}</a></h3>
                                        </div>
                                        <div class="price_box">
                                            @if($product->discount_product_price > 0)
                                                <div class="price_box">
                                                    <span class="current_price">৳ {{$product->discount_product_price }}</span>
                                                    <span class="old_price">৳ {{$product->product_price}}</span>
                                                </div>
                                            @elseif($product->discount_product_price == Null)
                                                <div class="price_box">
                                                    <span class="current_price">৳ {{$product->product_price }}</span>
                                                </div>
                                            @else
                                                <div class="product_price">
                                                    <span class="price">৳ {{$product->product_price }}</span>
                                                </div>
                                            @endif
                                        </div>
                                        <div class="action_links">
                                            <ul>
                                                <li class="wishlist">
                                                    <form  action="{{ route('new-wish-list') }}" method="post" style="display: inline">
                                                        @csrf
                                                        <input type="hidden" value="{{ $product->id }}" name="product_id">
                                                        <button type="submit" style="border: none;background: none;margin: 0px;padding: 0px"><a title="Add to Wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a></button>
                                                    </form>
                                                </li>
                                                <li class="add_to_cart">
                                                    <form  action="{{ route('cart-add') }}" method="post" style="display: inline">
                                                        @csrf
                                                        <input type="hidden" value="{{ $product->id }}" name="Product_id">
                                                        <button type="submit" style="border: none;background: none;margin: 0px;padding: 0px"><a title="add to cart"><i class="zmdi zmdi-shopping-cart-plus"></i> add to cart</a></button>
                                                    </form>
                                                </li>
                                                <li class="compare"><a href="#" title="compare"><i class="zmdi zmdi-swap"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        @endforeach





                    </div>

                {{--                    <div class="shop_toolbar t_bottom">--}}
                {{--                        <div class="pagination">--}}
                {{--                            <ul>--}}
                {{--                                <li class="current">1</li>--}}
                {{--                                <li><a href="#">2</a></li>--}}
                {{--                                <li><a href="#">3</a></li>--}}
                {{--                                <li class="next"><a href="#">next</a></li>--}}
                {{--                                <li><a href="#">>></a></li>--}}
                {{--                            </ul>--}}
                {{--                        </div>--}}
                {{--                    </div>--}}
                <!--shop toolbar end-->
                    <!--shop wrapper end-->
                </div>
            </div>
        </div>
    </div>
    <!--shop  area end-->

@endsection
