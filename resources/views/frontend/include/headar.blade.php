@php
    $products = Cart::content();
     $i=0;
     $w=0;
     $x=0;
     $total=0;
@endphp
@foreach($products as $product)
    {{--    @foreach($products as $product)--}}
    @php
        $total += $product->subtotal;
        $i++
    @endphp

    {{--    @endforeach--}}
@endforeach
@php
    $customerId=Session::get('customerId');
    $wishList=DB::table('wish_lists')
        ->join('products','wish_lists.product_id','products.id')
        ->select('wish_lists.customer_id','wish_lists.id','wish_lists.product_id','products.product_name','products.main_image','products.product_price','products.discount_product_price','products.product_stock')
        ->where('wish_lists.customer_id',$customerId)
        ->get();
    $w=count($wishList);
@endphp
<div class="Offcanvas_menu">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="canvas_open">
                    <a href="javascript:void(0)"><i class="ion-navicon"></i></a>
                </div>
                <div class="Offcanvas_menu_wrapper">
                    <div class="canvas_close">
                        <a href="javascript:void(0)"><i class="ion-android-close"></i></a>
                    </div>
                    <div class="welcome_text">
                        @foreach($contacts as $contact)
                            <p style="font-size: 15px"><i class="fa fa-phone"></i> <span style="color: #000">Call Us Now :  {{ $contact->phone_1  }}</span></p>
                        @endforeach
                    </div>


                    <div class="top_right text-right">
                        <ul>
                            @if($customerId = Session::get('customerId'))
                                <li class="language"><a href="{{ route('customer-logout') }}" style="font-size: 15px"><i style="font-size: 15px" class="fa fa-lock"></i>  Logout</a></li>
                                <li class="language"><a href="{{route('customer-dashboard')}}" style="font-size: 15px"><i style="font-size: 15px" class="fa fa-user-circle"></i> {{ Session::get('customerName') }}</a></li>
                            @else
                                <li class="language"><a href="{{ route('customer-login') }}" style="font-size: 15px"><i style="font-size: 15px" class="fa fa-lock"></i>  Register/Login</a></li>
                            @endif
                            <li class="top_links"><a href="#" style="font-size: 14px"> <i style="font-size: 15px" class="fa fa-user"></i> My Account</a>
                                @if($customerId = Session::get('customerId'))
                                    <ul class="dropdown_links">
                                        <li><a href="{{ route('customer-dashboard') }}">My Account </a></li>
                                        <li><a href="{{ route('checkout') }}">Checkout </a></li>
                                        <li><a href="{{ route('show-cart') }}">Shopping Cart</a></li>
                                        <li><a href="{{ route('wish-list') }}">Wishlist</a></li>
                                        <li><a href="{{ route('compare') }}">Compare</a></li>
                                        <li><a href="{{ route('customer-logout') }}">Logout</a></li>
                                    </ul>
                                @else
                                    <ul class="dropdown_links">
                                        <li><a href="{{ route('customer-login') }}">LogIN</a></li>
                                        <li><a href="{{ route('checkout') }}">Checkout </a></li>
                                        <li><a href="{{ route('show-cart') }}">Shopping Cart</a></li>
                                        <li><a href="{{ route('wish-list') }}">Wishlist</a></li>
                                        <li><a href="{{ route('compare') }}">Compare</a></li>
                                    </ul>
                                @endif
                            </li>
                        </ul>
                    </div>
                    <div class="home_contact">
                        <div class="contact_box">
                            <label><i style="font-size: 15px" class="fa fa-location-arrow"></i> Location</label>
                            <p>44/1 Becharum Dewry Dhaka Other, 1212 Bangladesh.</p>
                        </div>
                    </div>
                    <div id="menu" class="text-left ">
                        <ul class="offcanvas_main_menu">
                            <li class="menu-item-has-children active"><a href="{{ route('/') }}">Home</a></li>
                            <li class="menu-item-has-children">
                                <a href="{{ route('shop')}}">Shop</a>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="{{ route('blog')}}">blog</a>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="#">Daraz Bangladesh</a>
                            </li>
                            <li class="menu-item-has-children">
                                <a href="contact.html"> Contact Us</a>
                            </li>
                        </ul>
                    </div>
                    <div class="Offcanvas_footer">
                        <span><a href="#"><i class="fa fa-envelope-o"></i> care@sunglasshut.com.bd</a></span>
                        <ul>
                            <li class="facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li class="twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li class="pinterest"><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                            <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Offcanvas menu area end-->

<!--header area start-->
<header class="header_area c-header">
    <!--header top start-->
    <div class="header_top header_top9">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3 col-md-12">
                    <div class="welcome_text">
                        @foreach($contacts as $contact)
                        <p style="font-size: 15px"><i class="fa fa-phone"></i> <span style="color: #000">Call Us Now : {{ $contact->phone_1 }} , {{ $contact->phone_2 }}</span></p>
                        @endforeach
                    </div>
                </div>
                <div class="col-lg-5 col-md-12 text-center">
                    @foreach($coupons as $coupon)
                    <span style="color: #0B0809;font-size: 15px">{!! $coupon->text !!}</span>
                        @endforeach
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="top_right text-right">
                        <ul>
                            @if($customerId = Session::get('customerId'))
                                <li class="language"><a href="{{ route('customer-logout') }}" style="font-size: 15px"><i style="font-size: 15px" class="fa fa-lock"></i>  Logout</a></li>
                                <li class="language"><a href="{{route('customer-dashboard')}}" style="font-size: 15px"><i style="font-size: 15px" class="fa fa-user-circle"></i> {{ Session::get('customerName') }}</a></li>
                            @else
                                <li class="language"><a href="{{ route('customer-login') }}" style="font-size: 15px"><i style="font-size: 15px" class="fa fa-lock"></i>  Register/Login</a></li>
                            @endif

                            <li class="currency"><a href="#" style="font-size: 15px"><i style="font-size: 15px" class="fa fa-user"></i> My Account </a>
                                @if($customerId = Session::get('customerId'))
                                    <ul class="dropdown_links">
                                        <li><a href="{{ route('customer-dashboard') }}">My Account </a></li>
                                        <li><a href="{{ route('checkout') }}">Checkout </a></li>
                                        <li><a href="{{ route('show-cart') }}">Shopping Cart</a></li>
                                        <li><a href="{{ route('wish-list') }}">Wishlist</a></li>
                                        <li><a href="{{ route('compare') }}">Compare</a></li>
                                        <li><a href="{{ route('customer-logout') }}">Logout</a></li>
                                    </ul>
                                @else
                                    <ul class="dropdown_links">
                                        <li><a href="{{ route('customer-login') }}">LogIN</a></li>
                                        <li><a href="{{ route('checkout') }}">Checkout </a></li>
                                        <li><a href="{{ route('show-cart') }}">Shopping Cart</a></li>
                                        <li><a href="{{ route('wish-list') }}">Wishlist</a></li>
                                        <li><a href="{{ route('compare') }}">Compare</a></li>
                                    </ul>
                                @endif
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--header top start-->

    <!--header middel start-->
    <div class="header_middel header_middle9">
        <div class="container">
            @if(session('message'))
                <h4 class=" text-bold text-center text-success">{{session('message')}}</h4>
            @endif
            <div class="row align-items-center">
                <div class="col-lg-2 col-md-3 col-4">
                    <div class="logo">
                        <a href="{{ route('/') }}"><img src="{{ asset($logo->first()->image) }}" alt="SUNGLSS HUT BD"></a>
                    </div>
                </div>
                <div class="col-lg-10 col-md-7 col-6">

                    <div class="middel_right">
                        <div class="search_container_new">
                            <form action="{{ route('search') }}" method="post">
                                @csrf
                                <div class="hover_category">
                                    <select class="select_option" name="select" id="categori9" onChange="window.location.href=this.value">
                                        <option value="" >All Category</option>
                                        @foreach($categories as $category)
                                            <option value="{{ route('menu',['id'=>$category->id,'name'=>$category->category_name])}}">{{ $category->category_name  }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="search_box">
                                    <input name="search_content" placeholder="Search product..." type="text">
                                    <button type="submit">Search</button>
                                </div>
                            </form>
                        </div>
                        <div class="middel_rightinfo_new">
                            <div class="box_setting">
                                <a href="#"><i class="fa fa-user"></i></a>
                                <div class="dropdown_setting">
                                    @if($customerId = Session::get('customerId'))
                                        <ul>
                                            <li><a href="{{ route('customer-dashboard') }}">My Account </a></li>
                                            <li><a href="{{ route('checkout') }}">Checkout </a></li>
                                            <li><a href="{{ route('show-cart') }}">Shopping Cart</a></li>
                                            <li><a href="{{ route('wish-list') }}">Wishlist</a></li>
                                            <li><a href="{{ route('compare') }}">Compare</a></li>
                                            <li><a href="{{ route('customer-logout') }}">Logout</a></li>
                                        </ul>
                                    @else
                                        <ul>
                                            <li><a href="{{ route('customer-login') }}">LogIN</a></li>
                                            <li><a href="{{ route('checkout') }}">Checkout </a></li>
                                            <li><a href="{{ route('show-cart') }}">Shopping Cart</a></li>
                                            <li><a href="{{ route('wish-list') }}">Wishlist</a></li>
                                            <li><a href="{{ route('compare') }}">Compare</a></li>
                                        </ul>
                                    @endif
                                </div>
                            </div>
                            <div class="cart_link">
                                <a href="#"><i class="ion-android-cart"></i><span class="cart_text_quantity"> ৳ {{ $total }}</span> <i class="fa fa-angle-down"></i></a>
                                <span class="cart_quantity">{{$i}}</span>
                                <!--mini cart-->
                                <div class="mini_cart">
                                    <div class="cart_close">
                                        <div class="cart_text">
                                            <h3>cart</h3>
                                        </div>
                                        <div class="mini_cart_close">
                                            <a href="javascript:void(0)"><i class="ion-android-close"></i></a>
                                        </div>
                                    </div>
                                    @foreach($products as $product)
                                        <div class="cart_item">
                                            <div class="cart_img">
                                                <a href="#"><img src="{{ asset($product->options->image) }}" alt=""></a>
                                            </div>
                                            <div class="cart_info">
                                                <a href="#">{{ $product->name }}</a>

                                                <span class="quantity">Qty: {{ $product->qty }}
                                            ৳{{ $product->price }}
                                                {{--                                                @if($product->options->lens_price != null || $product->options->lens_price2 != null)--}}
                                                {{--                                                    @if($product->discount_product_price == null)--}}
                                                {{--                                                        <span class="quantity">Qty: {{ $product->qty }} x {{ $product->options->lens_price != null ? 'Price :'.$product->price .'+ Extra lens Price : '.$product->options->lens_price : 'Price :'. $product->price .'+ Extra lens Price : '.$product->options->lens_price2 }}</span>--}}
                                                {{--                                                    @else--}}
                                                {{--                                                        <span class="quantity">Qty: {{ $product->qty }} x {{ $product->options->lens_price != null ? 'Price :'.$product->discount_product_price .' + Extra lens Price : '. $product->options->lens_price : 'Price :'. $product->discount_product_price.' + Extra lens Price :  '.$product->options->lens_price2 }}</span>--}}
                                                {{--                                                    @endif--}}
                                                {{--                                                @endif--}}
                                                {{--                                            @if($product->options->lens_price == null && $product->options->lens_price2 == null)--}}
                                                {{--                                                @if($product->discount_product_price == null)--}}
                                                {{--                                                    <span class="quantity">Qty: {{ $product->qty }} x Price :{{ $product->price}}</span>--}}
                                                {{--                                                @else--}}
                                                {{--                                                    <span class="quantity">Qty:{{ $product->qty }} x  Price :{{ $product->discount_product_price}}</span>--}}
                                                {{--                                                @endif--}}
                                                {{--                                            @endif--}}
                                                {{--                                                <!--price ind-->--}}
                                                {{--                                                @if($product->options->lens_price != null || $product->options->lens_price2 != null)--}}
                                                {{--                                                    @if($product->discount_product_price == null)--}}
                                                {{--                                                        <span class="price_cart">৳{{ $abc=$product->options->lens_price != null ? ($product->price+$product->options->lens_price)*$product->qty : ($product->price+$product->options->lens_price2)*$product->qty }}</span>--}}
                                                {{--                                                    @else--}}
                                                {{--                                                        <span class="price_cart-price">৳{{ $abc=$product->options->lens_price != null ? ($product->discount_product_price+$product->options->lens_price)*$product->qty : ($product->discount_product_price+$product->options->lens_price2)*$product->qty }}</span>--}}
                                                {{--                                                    @endif--}}
                                                {{--                                                @endif--}}
                                                {{--                                                @if($product->options->lens_price == null && $product->options->lens_price2 == null)--}}
                                                {{--                                                    @if($product->discount_product_price == null)--}}
                                                {{--                                                        <span class="price_cart-price">৳{{ $abc=$product->price*$product->qty}}</span>--}}
                                                {{--                                                    @else--}}
                                                {{--                                                        <span class="price_cart-price">৳{{ $abc=$product->discount_product_price*$product->qty}}</span>--}}
                                                {{--                                                    @endif--}}
                                                {{--                                                @endif--}}
                                            </div>
                                            <div class="cart_remove">
                                                <a href="{{ route('cart-remove',['id'=>$product->rowId]) }}"><i class="ion-android-close"></i></a>
                                            </div>
                                        </div>
                                    @endforeach

                                    <div class="cart_total">
                                        <span>Subtotal:</span>
                                        <span>৳ {{$total}}</span>
                                    </div>
                                    <div class="mini_cart_footer">
                                        <div class="cart_button view_cart">
                                            <a href="{{ route('show-cart') }}">View cart</a>
                                        </div>
                                        <div class="cart_button checkout">
                                            <a class="active" href="{{ route('checkout') }}">Checkout</a>
                                        </div>
                                    </div>
                                </div>
                                <!--mini cart end-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--header middel end-->

    <!--header bottom satrt-->
    <div class="header_bottom header_bottom9  sticky-header c-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3 col-md-12">
                    <div class="categories_menu">
                        <div class="categories_title c-cat-menu">
                            <h2 class="categori_toggle">ALL CATEGORIES</h2>
                        </div>
                        <div class="categories_menu_toggle">
                            <ul>
                                @foreach($categories as $category)
                                    <li class="menu_item_children"><a href="{{ route('menu',['id'=>$category->id,'name'=>$category->category_name])}}" class="abc"> {{$category->category_name}}  <i class="fa fa-angle-down"></i></a>
                                        <ul class="categories_mega_menu column_3 abcd">
                                            @foreach($subCategories as $subCategory)
                                                @if($category->id == $subCategory->category_id)
                                                    <li class="menu_item_children"><a href="{{ route('smenu',['id'=>$subCategory->id,'catId'=>$category->id,'name'=>$category->category_name])}}">{{$subCategory->sub_category_name}}</a></li>
                                                @else
                                                @endif
                                            @endforeach

                                            {{--                                        <li class="menu_item_children"><a href="#">Chair</a>--}}
                                            {{--                                            <ul class="categorie_sub_menu">--}}
                                            {{--                                                <li><a href="#">Dining room</a></li>--}}
                                            {{--                                                <li><a href="#">bedroom</a></li>--}}
                                            {{--                                                <li><a href="#"> Home & Office</a></li>--}}
                                            {{--                                                <li><a href="#">living room</a></li>--}}
                                            {{--                                            </ul>--}}
                                            {{--                                        </li>--}}

                                        </ul>
                                    </li>
                                @endforeach
                                @foreach($categories2 as $category2)
                                    <li class="hidden"><a href="{{ route('menu',['id'=>$category2->id,'name'=>$category2->category_name])}}">{{$category2->category_name}}</a></li>
                                @endforeach
                                <li><a href="#" id="more-btn"><i class="fa fa-plus" aria-hidden="true"></i> More Categories</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-12">
                    <div class="main_menu_inner main_menu9_inner">
                        <div class="logo_sticky">
                            <a href="{{ route('/') }}"><img src="{{ asset('frontend') }}/assets/img/logo/sunglass-logo.png" alt="SUNGLSS HUT BD"></a>
                        </div>
                        <div class="main_menu">
                            <nav>
                                <ul>
                                    <li class="active"><a href="{{ route('/') }}">Home</a></li>
                                    <li><a href="{{ route('shop')}}">shop <i class="fa fa-angle-down"></i></a>
                                        <ul class="mega_menu">
                                            @foreach($scategories as $scategory)
                                                <li><a href="{{ route('menu',['id'=>$scategory->id,'name'=>$scategory->category_name])}}">{{ $scategory->category_name }}</a>
                                                    <ul>
                                                        @foreach($subCategories as $subCategory)
                                                            @if($scategory->id == $subCategory->category_id)
                                                                <li><a href="{{ route('smenu',['id'=>$subCategory->id,'catId'=>$scategory->id,'name'=>$scategory->category_name])}}">{{$subCategory->sub_category_name}}</a></li>
                                                            @else
                                                            @endif
                                                        @endforeach
                                                    </ul>
                                                </li>
                                            @endforeach

                                            <li>
                                                <ul class="mgm-img">
                                                    <li class="mb-1">
                                                        @foreach($products2 as $product2)
                                                            <img src="{{ asset($product2->main_image) }}" alt="" class="mb-1" style="height:100px">
                                                        @endforeach
                                                        {{--                                                        <img src="{{ asset('frontend') }}/assets/img/blog/blog1.jpg" alt="" >--}}
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="{{ route('blog') }}">Blog</a></li>
                                    <li><a href="">Daraz Bangladesh </a></li>
                                    <li><a href="">Contact Us</a></li>
                                    <li>
                                        <div class="cart_link">
                                            <a href="{{ route('show-cart') }}" style="border: none"><i style="border-right: none" class="ion-android-cart"></i></a>
                                            <span class="cart_quantity" style="position: absolute;left: 27px;top: 22px;font-size: 12px;height: 15px;width: 15px;line-height: 16px;">{{$i}}</span>
                                        </div>
                                    </li>
                                    <li><a href="{{ route('wish-list') }}"><i class="fa fa-heart"></i></a>
                                        <span class="cart_quantity" style="position: absolute;right: 3px; text-align: center; top: 27px;font-size: 12px;height: 15px;width: 15px;line-height: 16px;background: #0B0809;color: #FFD800;border-radius: 50%;">{{$w}}</span>
                                    </li>

                                    <li>
                                        <div class="search_btn">
                                            <a href="#" style="border: none"><i class="ion-ios-search-strong"></i></a>
                                            <div class="dropdown_search">
                                                <form action="{{ route('search') }}" method="post">
                                                    @csrf
                                                    <input placeholder="Search product..." name="checkout" type="text">
                                                    <button type="submit"><i class="ion-ios-search-strong"></i></button>
                                                </form>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--header bottom end-->
</header>
<!--header area end-->


