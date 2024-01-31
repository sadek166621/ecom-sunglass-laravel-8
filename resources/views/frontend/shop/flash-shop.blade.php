@extends('frontend.master')
@section('title')
    HOME
@endsection
@section('banner-title')
    Shop
@endsection
@section('scripe')
    {{--    <script type='text/javascript'>--}}
    {{--        function test()--}}
    {{--        {--}}
    {{--            "<?php echo $price_min; ?>";--}}
    {{--        }--}}
    {{--        var a =test();// to call the function--}}
    {{--    </script>--}}
    {{--    <script type='text/javascript'>--}}
    {{--        function testtt() {--}}
    {{--           "<?php echo $price_max; ?>";--}}
    {{--        }--}}
    {{--        alert(testtt());// to call the function--}}
    {{--    </script>--}}
    {{--    <script>--}}

    {{--        /*---slider-range here---*/--}}
    {{--        $( "#slider-range" ).slider({--}}
    {{--            range: true,--}}
    {{--            min: 0,--}}
    {{--            max: 500,--}}
    {{--            values: [ 0, 500],--}}
    {{--            slide: function( event, ui ) {--}}
    {{--                $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );--}}
    {{--            }--}}
    {{--        });--}}
    {{--        $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +--}}
    {{--            " - $" + $( "#slider-range" ).slider( "values", 1 ) );--}}

    {{--    </script>--}}
@endsection
@section('content')
    @include('frontend.include.banner')
    <!--shop  area start-->
    <div class="shop_area shop_reverse">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-12">
                    <!--sidebar widget start-->
                    <div class="sidebar_widget">
                        <div class="widget_list widget_categories">
                            <h2>Categories</h2>
                            <ul>
                                @foreach($categories as $category)
                                    <li><a href="{{ route('menu',['id'=>$category->id,'name'=>$category->category_name]) }}">{{$category->category_name}},</a>
                                    </li>
                                @endforeach

                            </ul>
                        </div>
                        <div class="widget_list widget_filter">
                            <h2>Filter by price</h2>
                            <form action="{{route('price-filter')}}" method="post">
                                @csrf
                                {{--                                <div id="slider-range"></div>--}}
                                {{--                                <input type="hidden" name="id" value="{{ $category->id }}" />--}}
                                {{--                                <input type="hidden" name="name" value="{{ $category->category_name }}" />--}}
                                <input type="text" name="price_min" placeholder="{{ $price_min }}" value=""/>
                                <input type="text" name="price_max" placeholder="{{ $price_max }}" value=""/>
                                <button type="submit">Filter</button>
                            </form>
                        </div>


                        <div class="widget_list widget_brands">
                            <h2>Brands</h2>
                            <ul>
                                @foreach($brands as $brand)
                                    <li><a href="{{ route('brand-product',['id'=>$brand->id,'name'=>$brand->brand_name]) }}">{{ $brand->brand_name }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <!--sidebar widget end-->
                </div>
                <div class="col-lg-9 col-md-12">
                    <!--shop wrapper start-->
                    <!--shop toolbar start-->
                    <div class="shop_toolbar">
                        <div class="list_button">
                            <ul class="nav" role="tablist">
                                <li>
                                    <a class="active" data-toggle="tab" href="#large" role="tab" aria-controls="large" aria-selected="true"><i class="ion-grid"></i></a>
                                </li>
                                {{--                                <li>--}}
                                {{--                                    <a data-toggle="tab" href="#list" role="tab" aria-controls="list" aria-selected="false"><i class="ion-ios-list-outline"></i> </a>--}}
                                {{--                                </li>--}}
                            </ul>
                        </div>
                        <div class="orderby_wrapper">
                            {{--                            <h3>Sort By : </h3>--}}
                            {{--                            <div class=" niceselect_option">--}}
                            {{--                                <form class="select_option" action="#">--}}
                            {{--                                    <select name="orderby" id="short">--}}
                            {{--                                        <option value="4">Sort by price: low to high</option>--}}
                            {{--                                        <option value="5">Sort by price: high to low</option>--}}
                            {{--                                    </select>--}}
                            {{--                                </form>--}}
                            {{--                            </div>--}}
                            <div class="page_amount">
                                <p>Showing {{$products->firstItem()}}-{{$products->lastItem()}} of {{$products->total()}} results</p>
                            </div>
                        </div>
                    </div>
                    <!--shop toolbar end-->

                    <!--shop tab product start-->
                    <div class="tab-content">
                        <div class="tab-pane grid_view fade show active" id="large" role="tabpanel">
                            <div class="row">
                                @foreach($products as $product)
                                    <div class="col-lg-4 col-md-4 col-sm-6">
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a class="primary_img" href="{{ route('product-details',['id'=>$product->id,'slug'=>$product->slug]) }}"><img src="{{ asset($product->main_image) }}" alt="" style="height: 300px;"></a>
                                                <a class="secondary_img" href="{{ route('product-details',['id'=>$product->id,'slug'=>$product->slug]) }}"><img src="{{ asset($product->second_image) }}" alt="" style="height: 300px;"></a>
                                                @if($product->product_highlight != null)
                                                    <div class="highlight">
                                                        <h6>{{$product->product_highlight}}</h6>
                                                    </div>
                                                @endif
                                                @if(Request::is('/', 'shop','price-filter','search'))
                                                    <div class="quick_button">
                                                        <a href="#" class="details" id="{{ $product->id }}" data-toggle="modal" data-target="#modal_box"  title="quick view"> quick view</a>
                                                    </div>
                                                @endif
                                            </div>
                                            <div class="product_content">
                                                <div class="tag_cate">
                                                    {{--                                                <a href="{{ route('menu',['id'=>$product->category_id,'name'=>$product->category_name]) }}">{{$product->category_name}},</a>--}}
                                                    {{--                                                <a href="{{ route('smenu',['id'=>$product->sub_category_id,'catId'=>$product->category_id,'name'=>$product->sub_category_name]) }}">{{ substr($product->sub_category_name,10)>10? substr($product->sub_category_name,0,10).'...': substr($product->sub_category_name,0,10) }}</a>--}}
                                                </div>
                                                <h3><a href="{{ route('product-details',['id'=>$product->id,'slug'=>$product->slug]) }}"> {{ substr($product->product_name,25)>25? substr($product->product_name,0,25).'...': substr($product->product_name,0,25) }}</a></h3>
                                                <del class="old_price">৳ {{ $product->product_price }}</del>&nbsp;&nbsp;
                                                <span class="current_price">৳ {{$product->flash_sale_price}}</span>
                                                <div class="product_hover" style="width: 259px">
                                                    <div class="product_desc">
                                                        <p>{!! substr($product->short_description,0,90) !!}</p>
                                                    </div>
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
                                                                <form action="{{ route('new-wish-list') }}" method="post">
                                                                    @csrf
                                                                    <input type="hidden" name="product_id" value="{{ $product->id }}">
                                                                    <button type="submit" style="border: none;background: none">
                                                                        <a title="compare"><i class="ion-ios-settings-strong" style="font-size: 15px;position: absolute;left: 12px;"></i></a>
                                                                    </button>
                                                                </form>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                        <div class="tab-pane list_view fade" id="list" role="tabpanel">
                            @foreach($products as $product)
                                <div class="single_product product_list_item">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-5">
                                            <div class="product_thumb">
                                                <a class="primary_img" href="product-details.html"><img src="{{ asset($product->main_image) }}" alt="" style="height: 220px;"></a>
                                                <a class="secondary_img" href="product-details.html"><img src="{{ asset($product->second_image) }}" alt="" style="height: 220px;"></a>
                                                <div class="quick_button">
                                                    <a href="#" data-toggle="modal" data-target="#modal_box"  data-original-title="quick view"> quick view</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-8 col-md-7">
                                            <div class="product_content">
                                                <h3><a href="{{ route('product-details',['id'=>$product->id,'slug'=>$product->slug]) }}"> {{ substr($product->product_name,60)>60? substr($product->product_name,0,60).'...': substr($product->product_name,0,60) }}</a></h3>
                                                <div class="product_desc">
                                                    <p>
                                                        {!!  substr($product->short_description,210)>210? substr($product->short_description,0,210).'...': substr($product->short_description,0,210) !!}
                                                    </p>
                                                </div>
                                                <div class="price_box">
                                                    <del class="old_price">৳ {{ $product->product_price }}</del>&nbsp;&nbsp;
                                                    <span class="current_price">৳ {{$product->flash_sale_price}}</span>
                                                </div>

                                                <div class="action_links">
                                                    <ul>
                                                        <li class="add_to_cart"><a href="cart.html" title="add to cart">add to cart</a></li>
                                                        <li><a href="wishlist.html" title="Wishlist"><span class="icon icon-Heart"></span></a></li>

                                                        <li><a href="compare.html" title="compare"><i class="ion-ios-settings-strong"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                    <!--shop tab product end-->
                    <!--shop toolbar start-->
                    <div class="shop_toolbar t_bottom">
                        <div class="pagination">
                            {{ $products->links() }}
                        </div>
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
