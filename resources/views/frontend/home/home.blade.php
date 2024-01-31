@extends('frontend.master')
@section('title')
    HOME
@endsection
@section('content')
    <!--slider area start-->
    <div class="slider_area slider_nine owl-carousel">
        @foreach($sliders as $slider)
        <div class="single_slider" data-bgimg="{{ asset($slider->image) }}" class="img-fluid">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="slider_content">
                            <p>{{$slider->first_header}}</p>
                            <h1 style="font-size:24px">{{$slider->last_header}}</h1>
                            <p class="slider_price"><span style="color: #0B0809">{{$slider->third_header}}</span></p>
                            <a class="button" href="{{$slider->url}}">shopping now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
    <!--slider area end-->
    <!--banner area start-->
    <section class="banner_section home_banner_two home_banner9" style="margin-top: 50px">
        <div class="container">
            <div class="row ">
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        @if($section_1->section ==1)
                            <div class="banner_thumb">
                                <a href="{{ $section_1->url }}"><img src="{{ asset($section_1->image) }}" alt="" style="height: 200px;width: 100%;"></a>
                                <div class="banner_content">
                                    <p>{{ $section_1->first_header }}</p>
                                    <h2>{{ $section_1->last_header }}</h2>
                                    <span>{{ $section_1->third_header }}</span>
                                </div>
                            </div>
                        @else
                            <span>Banner section 1</span>
                        @endif
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        @if($section_2->section==2)
                            <div class="banner_thumb">
                                <a href="{{ $section_2->url }}"><img src="{{ asset($section_2->image) }}" alt="" style="height: 200px;width: 100%;"></a>
                                <div class="banner_content">
                                    <p>{{ $section_2->first_header }}</p>
                                    <h2>{{ $section_2->last_header }}</h2>
                                    <span>{{ $section_2->third_header }}</span>
                                </div>
                            </div>

                        @else
                            <span>Banner section 2</span>
                        @endif
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--banner area end-->

    <!--product section area start-->
    <section class="product_section p_bottom p_section1">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                        <h2 class="c-title">New Arrival Products</h2>
                    </div>
                </div>
                <div class="col-12">
                    <div class="product_area ">
{{--                        <div class="product_container bottom">--}}
{{--                            <div class="custom-row product_row1">--}}
{{--                                @foreach($newArrivalProducts as $newArrivalProduct)--}}
{{--                                <div class="custom-col-5">--}}
{{--                                    <div class="single_product">--}}
{{--                                        <div class="product_thumb">--}}
{{--                                            <a class="primary_img" href="{{ route('product-details',['id'=>$newArrivalProduct->id,'slug'=>$newArrivalProduct->slug]) }}"><img src="{{ asset($newArrivalProduct->main_image) }}" alt="" style="height: 300px;width: 300px;"></a>--}}
{{--                                            <a class="secondary_img" href="{{ route('product-details',['id'=>$newArrivalProduct->id,'slug'=>$newArrivalProduct->slug]) }}"><img src="{{ asset($newArrivalProduct->second_image) }}" alt="" style="height: 300px;width: 300px"></a>--}}
{{--                                            @if($newArrivalProduct->product_highlight != null)--}}
{{--                                            <div class="highlight">--}}
{{--                                                <h6>{{$newArrivalProduct->product_highlight}}</h6>--}}
{{--                                            </div>--}}
{{--                                            @endif--}}
{{--                                            <div class="quick_button">--}}
{{--                                                <a href="#" class="details" id="{{ $newArrivalProduct->id }}" data-toggle="modal" data-target="#modal_box"  title="quick view"> quick view</a>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}
{{--                                        <div class="product_content">--}}
{{--                                            <div class="tag_cate">--}}
{{--                                                @foreach($categories as $category)--}}
{{--                                                <a href="{{ route('menu',['id'=>$newArrivalProduct->category_id,'name'=>$newArrivalProduct->category_name]) }}">{{$newArrivalProduct->category_name}},</a>--}}
{{--                                                @endforeach--}}
{{--                                                <a href="{{ route('smenu',['id'=>$newArrivalProduct->sub_category_id,'catId'=>$newArrivalProduct->category_id,'name'=>$newArrivalProduct->sub_category_name]) }}">{{$newArrivalProduct->sub_category_name}}</a>--}}
{{--                                            </div>--}}
{{--                                            <h3><a href="{{ route('product-details',['id'=>$newArrivalProduct->id,'slug'=>$newArrivalProduct->slug]) }}"> {{ substr($newArrivalProduct->product_name,25)>25? substr($newArrivalProduct->product_name,0,25).'...': substr($newArrivalProduct->product_name,0,25) }}</a></h3>--}}
{{--                                             @if($newArrivalProduct->discount_product_price>0)--}}
{{--                                                <del class="old_price">৳ {{$newArrivalProduct->product_price}} </del>&nbsp;&nbsp;--}}
{{--                                                <span class="current_price">৳ {{ $newArrivalProduct->discount_product_price}}</span>--}}
{{--                                                @else--}}
{{--                                                <span class="current_price">৳ {{$newArrivalProduct->product_price}} </span>--}}
{{--                                            @endif--}}

{{--                                            <div class="product_hover">--}}
{{--                                                <div class="product_desc">--}}
{{--                                                    <p>{!! substr($newArrivalProduct->short_description,0,80) !!}</p>--}}
{{--                                                </div>--}}
{{--                                                <div class="action_links">--}}
{{--                                                    <ul>--}}
{{--                                                        <li class="c-wish">--}}
{{--                                                            <form action="{{ route('new-wish-list') }}" method="post">--}}
{{--                                                                @csrf--}}
{{--                                                                <input type="hidden" name="product_id" value="{{ $newArrivalProduct->id }}">--}}
{{--                                                                <button type="submit" style="border: none;background: none">--}}
{{--                                                                    <a  data-placement="top" title="Add to Wishlist" data-toggle="tooltip"><span class="icon icon-Heart" style="font-size: 15px;position: absolute;left: 15px;top: 11px"></span></a>--}}
{{--                                                                </button>--}}
{{--                                                            </form>--}}
{{--                                                        </li>--}}
{{--                                                        <li class="add_to_cart c-cart">--}}
{{--                                                            <form action="{{ route('cart-add') }}" method="post" class="form"  style="display: inline">--}}
{{--                                                                @csrf--}}
{{--                                                                <input type="hidden" name="product_id" value="{{ $newArrivalProduct->id }}">--}}
{{--                                                                <input type="hidden" name="product_stock" value="{{ $newArrivalProduct->product_stock }}">--}}
{{--                                                                <button type="submit" style="border: none;background: none">--}}
{{--                                                                    <a title="add to cart">add to cart</a>--}}
{{--                                                                </button>--}}
{{--                                                            </form>--}}
{{--                                                        </li>--}}
{{--                                                        <li class="c-com">--}}
{{--                                                            <form action="{{ route('new-compare') }}" method="post">--}}
{{--                                                                @csrf--}}
{{--                                                                <input type="hidden" name="product_id" value="{{ $newArrivalProduct->id }}">--}}
{{--                                                                <button type="submit" style="border: none;background: none">--}}
{{--                                                                    <a title="compare"><i class="ion-ios-settings-strong" style="font-size: 15px;position: absolute;left: 12px;"></i></a>--}}
{{--                                                                </button>--}}
{{--                                                            </form>--}}
{{--                                                            </li>--}}
{{--                                                    </ul>--}}
{{--                                                </div>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                @endforeach--}}
{{--                            </div>--}}

{{--                        </div>--}}
                        <div class="product_container bottom">
                            <div class="custom-row product_column3">
                                @foreach($newArrivalProducts as $newArrivalProduct)
                                    <div class="custom-col-5">
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a class="primary_img" href="{{ route('product-details',['id'=>$newArrivalProduct->id,'slug'=>$newArrivalProduct->slug]) }}"><img src="{{ asset($newArrivalProduct->main_image) }}" alt="" style="height: 300px"></a>
                                                <a class="secondary_img" href="{{ route('product-details',['id'=>$newArrivalProduct->id,'slug'=>$newArrivalProduct->slug]) }}"><img src="{{ asset($newArrivalProduct->second_image) }}" alt="" style="height: 300px"></a>
                                                @if($newArrivalProduct->product_highlight != null)
                                                    <div class="highlight2">
                                                        <h6>{{$newArrivalProduct->product_highlight}}</h6>
                                                    </div>
                                                @endif
                                                <div class="quick_button">
                                                    <a href="#" class="details" id="{{ $newArrivalProduct->id }}" data-toggle="modal" data-target="#modal_box"  title="quick view"> quick view</a>
                                                </div>
                                            </div>
                                            <div class="product_content">
                                                <div class="tag_cate">
                                                    {{--                                                        <a href="{{ route('menu',['id'=>$featuredPageProduct->category_id,'name'=>$featuredPageProduct->category_name]) }}">{{$featuredPageProduct->category_name}},</a>--}}
                                                    {{--                                                        <a href="{{ route('smenu',['id'=>$featuredPageProduct->sub_category_id,'catId'=>$featuredPageProduct->category_id,'name'=>$featuredPageProduct->sub_category_name]) }}">{{ substr($featuredPageProduct->sub_category_name,10)>10? substr($featuredPageProduct->sub_category_name,0,10).'...': substr($featuredPageProduct->sub_category_name,0,10) }}</a>--}}
                                                </div>
                                                <h3><a href="{{ route('product-details',['id'=>$newArrivalProduct->id,'slug'=>$newArrivalProduct->slug]) }}"> {{ substr($newArrivalProduct->product_name,25)>25? substr($newArrivalProduct->product_name,0,20).'...': substr($newArrivalProduct->product_name,0,20) }}</a></h3>
                                                @if($newArrivalProduct->discount_product_price>0)
                                                    <del class="old_price">৳ {{$newArrivalProduct->product_price}} </del>&nbsp;&nbsp;
                                                    <span class="current_price">৳ {{ $newArrivalProduct->discount_product_price}}</span>
                                                @else
                                                    <span class="current_price">৳ {{$newArrivalProduct->product_price}} </span>
                                                @endif
                                                <div class="product_hover" style="width: 268px">
                                                    <div class="product_desc">
                                                        <p>{!! substr($newArrivalProduct->short_description,0,80) !!}</p>
                                                    </div>
                                                    <div class="action_links">
                                                        <ul>
                                                            <li class="cu-wish2">
                                                                <form action="{{ route('new-wish-list') }}" method="post">
                                                                    @csrf
                                                                    <input type="hidden" name="product_id" value="{{ $newArrivalProduct->id }}">
                                                                    <button type="submit" style="border: none;background: none">
                                                                        <a  data-placement="top" title="Add to Wishlist" data-toggle="tooltip"><span class="icon icon-Heart" style="font-size: 15px;position: absolute;left: 15px;top: 11px"></span></a>
                                                                    </button>
                                                                </form>
                                                            </li>
                                                            <li class="add_to_cart cu-cart2">
                                                                <form action="{{ route('cart-add') }}" method="post" style="display: inline">
                                                                    @csrf
                                                                    <input type="hidden" name="product_id" value="{{ $newArrivalProduct->id }}">
                                                                    <input type="hidden" name="product_stock" value="{{ $newArrivalProduct->product_stock }}">
                                                                    <button type="submit" style="border: none;background: none">
                                                                        <a title="add to cart">add to cart</a>
                                                                    </button>
                                                                </form>
                                                            </li>
                                                            <li class="cu-com2">
                                                                <form action="{{ route('new-compare') }}" method="post">
                                                                    @csrf
                                                                    <input type="hidden" name="product_id" value="{{ $newArrivalProduct->id }}">
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
                    </div>

                </div>
            </div>
        </div>
    </section>

    <!--product section area start-->
    <section class="product_section p_section1 product_bottom_two product9_bottom">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="product_area">
                        <div class="product_tab_button">
                            <ul class="nav" role="tablist">
                                <li>
                                    <a class="active" data-toggle="tab" href="#featured" role="tab" aria-controls="featured" aria-selected="true">Featured</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#arrivals" role="tab" aria-controls="arrivals" aria-selected="false">Special Offer</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#onsale" role="tab" aria-controls="onsale" aria-selected="false">Trending</a>
                                </li>

                            </ul>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="featured" role="tabpanel">
                                <div class="product_container">
                                    <div class="custom-row product_column3">
                                        @foreach($featuredPageProducts as $featuredPageProduct)
                                            <div class="custom-col-5">
                                                <div class="single_product">
                                                    <div class="product_thumb">
                                                        <a class="primary_img" href="{{ route('product-details',['id'=>$featuredPageProduct->id,'slug'=>$featuredPageProduct->slug]) }}"><img src="{{ asset($featuredPageProduct->main_image) }}" alt="" style="height: 300px"></a>
                                                        <a class="secondary_img" href="{{ route('product-details',['id'=>$featuredPageProduct->id,'slug'=>$featuredPageProduct->slug]) }}"><img src="{{ asset($featuredPageProduct->second_image) }}" alt="" style="height: 300px"></a>
                                                        @if($featuredPageProduct->product_highlight != null)
                                                            <div class="highlight2">
                                                                <h6>{{$featuredPageProduct->product_highlight}}</h6>
                                                            </div>
                                                        @endif
                                                        <div class="quick_button">
                                                            <a href="#" class="details" id="{{ $featuredPageProduct->id }}" data-toggle="modal" data-target="#modal_box"  title="quick view"> quick view</a>
                                                        </div>
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="tag_cate">
                                                            {{--                                                        <a href="{{ route('menu',['id'=>$featuredPageProduct->category_id,'name'=>$featuredPageProduct->category_name]) }}">{{$featuredPageProduct->category_name}},</a>--}}
                                                            {{--                                                        <a href="{{ route('smenu',['id'=>$featuredPageProduct->sub_category_id,'catId'=>$featuredPageProduct->category_id,'name'=>$featuredPageProduct->sub_category_name]) }}">{{ substr($featuredPageProduct->sub_category_name,10)>10? substr($featuredPageProduct->sub_category_name,0,10).'...': substr($featuredPageProduct->sub_category_name,0,10) }}</a>--}}
                                                        </div>
                                                        <h3><a href="{{ route('product-details',['id'=>$featuredPageProduct->id,'slug'=>$featuredPageProduct->slug]) }}"> {{ substr($featuredPageProduct->product_name,25)>25? substr($featuredPageProduct->product_name,0,20).'...': substr($featuredPageProduct->product_name,0,20) }}</a></h3>
                                                        @if($featuredPageProduct->discount_product_price>0)
                                                            <del class="old_price">৳ {{$featuredPageProduct->product_price}} </del>&nbsp;&nbsp;
                                                            <span class="current_price">৳ {{ $featuredPageProduct->discount_product_price}}</span>
                                                        @else
                                                            <span class="current_price">৳ {{$featuredPageProduct->product_price}} </span>
                                                        @endif
                                                        <div class="product_hover" style="width: 255px">
                                                            <div class="product_desc">
                                                                <p>{!! substr($featuredPageProduct->short_description,0,80) !!}</p>
                                                            </div>
                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="c-wish2">
                                                                        <form action="{{ route('new-wish-list') }}" method="post">
                                                                            @csrf
                                                                            <input type="hidden" name="product_id" value="{{ $featuredPageProduct->id }}">
                                                                            <button type="submit" style="border: none;background: none">
                                                                                <a  data-placement="top" title="Add to Wishlist" data-toggle="tooltip"><span class="icon icon-Heart" style="font-size: 15px;position: absolute;left: 15px;top: 11px"></span></a>
                                                                            </button>
                                                                        </form>
                                                                    </li>
                                                                    <li class="add_to_cart c-cart2">
                                                                        <form action="{{ route('cart-add') }}" method="post" style="display: inline">
                                                                            @csrf
                                                                            <input type="hidden" name="product_id" value="{{ $featuredPageProduct->id }}">
                                                                            <input type="hidden" name="product_stock" value="{{ $featuredPageProduct->product_stock }}">
                                                                            <button type="submit" style="border: none;background: none">
                                                                                <a title="add to cart">add to cart</a>
                                                                            </button>
                                                                        </form>
                                                                    </li>
                                                                    <li class="c-com2">
                                                                        <form action="{{ route('new-compare') }}" method="post">
                                                                            @csrf
                                                                            <input type="hidden" name="product_id" value="{{ $featuredPageProduct->id }}">
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
                            </div>
                            <div class="tab-pane fade" id="arrivals" role="tabpanel">
                                <div class="product_container">
                                    <div class="custom-row product_column3">

                                        @foreach($specialOfferProducts as $specialOfferProduct)
                                            <div class="custom-col-5">
                                                <div class="single_product">
                                                    <div class="product_thumb">
                                                        <a class="primary_img" href="{{ route('product-details',['id'=>$specialOfferProduct->id,'slug'=>$specialOfferProduct->slug]) }}"><img src="{{ asset($specialOfferProduct->main_image) }}" alt="" style="height: 300px;"></a>
                                                        <a class="secondary_img" href="{{ route('product-details',['id'=>$specialOfferProduct->id,'slug'=>$specialOfferProduct->slug]) }}"><img src="{{ asset($specialOfferProduct->second_image) }}" alt="" style="height: 300px;"></a>
                                                        @if($specialOfferProduct->product_highlight != null)
                                                            <div class="highlight2">
                                                                <h6>{{$specialOfferProduct->product_highlight}}</h6>
                                                            </div>
                                                        @endif
                                                        <div class="quick_button">
                                                            <a href="#" class="details" id="{{ $specialOfferProduct->id }}" data-toggle="modal" data-target="#modal_box"  title="quick view"> quick view</a>
                                                        </div>
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="tag_cate">
                                                            {{--                                                            <a href="{{ route('menu',['id'=>$specialOfferProduct->category_id,'name'=>$specialOfferProduct->category_name]) }}">{{$specialOfferProduct->category_name}},</a>--}}
                                                            {{--                                                            <a href="{{ route('smenu',['id'=>$specialOfferProduct->sub_category_id,'catId'=>$specialOfferProduct->category_id,'name'=>$specialOfferProduct->sub_category_name]) }}">{{ substr($specialOfferProduct->sub_category_name,10)>10? substr($specialOfferProduct->sub_category_name,0,10).'...': substr($specialOfferProduct->sub_category_name,0,10) }}</a>--}}
                                                        </div>
                                                        <h3><a href="{{ route('product-details',['id'=>$specialOfferProduct->id,'slug'=>$specialOfferProduct->slug]) }}"> {{ substr($specialOfferProduct->product_name,25)>25? substr($specialOfferProduct->product_name,0,20).'...': substr($specialOfferProduct->product_name,0,20) }}</a></h3>
                                                        @if($specialOfferProduct->discount_product_price>0)
                                                            <del class="old_price">৳ {{$specialOfferProduct->product_price}} </del>&nbsp;&nbsp;
                                                            <span class="current_price">৳ {{ $specialOfferProduct->discount_product_price}}</span>
                                                        @else
                                                            <span class="current_price">৳ {{$specialOfferProduct->product_price}} </span>
                                                        @endif
                                                        <div class="product_hover" style="width: 255px">
                                                            <div class="product_desc">
                                                                <p>{!! substr($specialOfferProduct->short_description,0,80) !!}</p>
                                                            </div>
                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="c-wish2">
                                                                        <form action="{{ route('new-wish-list') }}" method="post">
                                                                            @csrf
                                                                            <input type="hidden" name="product_id" value="{{ $specialOfferProduct->id }}">
                                                                            <button type="submit" style="border: none;background: none">
                                                                                <a  data-placement="top" title="Add to Wishlist" data-toggle="tooltip"><span class="icon icon-Heart" style="font-size: 15px;position: absolute;left: 15px;top: 11px"></span></a>
                                                                            </button>
                                                                        </form>
                                                                    </li>
                                                                    <li class="add_to_cart c-cart2">
                                                                        <form action="{{ route('cart-add') }}" method="post" style="display: inline">
                                                                            @csrf
                                                                            <input type="hidden" name="product_id" value="{{ $specialOfferProduct->id }}">
                                                                            <input type="hidden" name="product_stock" value="{{ $specialOfferProduct->product_stock }}">
                                                                            <button type="submit" style="border: none;background: none">
                                                                                <a title="add to cart">add to cart</a>
                                                                            </button>
                                                                        </form>
                                                                    </li>
                                                                    <li class="c-com2">
                                                                        <form action="{{ route('new-compare') }}" method="post">
                                                                            @csrf
                                                                            <input type="hidden" name="product_id" value="{{ $specialOfferProduct->id }}">
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

                            </div>
                            <div class="tab-pane fade" id="onsale" role="tabpanel">
                                <div class="product_container">
                                    <div class="custom-row product_column3">
                                        @foreach($trendingPageProducts as $trendingPageProduct)
                                            <div class="custom-col-5">
                                                <div class="single_product">
                                                    <div class="product_thumb">
                                                        <a class="primary_img" href="{{ route('product-details',['id'=>$trendingPageProduct->id,'slug'=>$trendingPageProduct->slug]) }}"><img src="{{ asset($trendingPageProduct->main_image) }}" alt="" style="height: 300px;"></a>
                                                        <a class="secondary_img" href="{{ route('product-details',['id'=>$trendingPageProduct->id,'slug'=>$trendingPageProduct->slug]) }}"><img src="{{ asset($trendingPageProduct->second_image) }}" alt="" style="height: 300px;"></a>
                                                        @if($trendingPageProduct->product_highlight != null)
                                                            <div class="highlight2">
                                                                <h6>{{$trendingPageProduct->product_highlight}}</h6>
                                                            </div>
                                                        @endif
                                                        <div class="quick_button">
                                                            <a href="#" class="details" id="{{ $trendingPageProduct->id }}" data-toggle="modal" data-target="#modal_box"  title="quick view"> quick view</a>
                                                        </div>
                                                    </div>
                                                    <div class="product_content">
                                                        <div class="tag_cate">
                                                            {{--                                                            <a href="{{ route('menu',['id'=>$trendingPageProduct->category_id,'name'=>$trendingPageProduct->category_name]) }}">{{$trendingPageProduct->category_name}},</a>--}}
                                                            {{--                                                            <a href="{{ route('smenu',['id'=>$trendingPageProduct->sub_category_id,'catId'=>$trendingPageProduct->category_id,'name'=>$trendingPageProduct->sub_category_name]) }}">{{ substr($trendingPageProduct->sub_category_name,10)>10? substr($trendingPageProduct->sub_category_name,0,10).'...': substr($trendingPageProduct->sub_category_name,0,10) }}</a>--}}
                                                        </div>
                                                        <h3><a href="{{ route('product-details',['id'=>$trendingPageProduct->id,'slug'=>$trendingPageProduct->slug]) }}"> {{ substr($trendingPageProduct->product_name,25)>25? substr($trendingPageProduct->product_name,0,20).'...': substr($trendingPageProduct->product_name,0,20) }}</a></h3>
                                                        @if($specialOfferProduct->discount_product_price>0)
                                                            <del class="old_price">৳ {{$specialOfferProduct->product_price}} </del>&nbsp;&nbsp;
                                                            <span class="current_price">৳ {{ $specialOfferProduct->discount_product_price}}</span>
                                                        @else
                                                            <span class="current_price">৳ {{$specialOfferProduct->product_price}} </span>
                                                        @endif
                                                        <div class="product_hover" style="width: 255px">
                                                            <div class="product_desc">
                                                                <p>{!! substr($trendingPageProduct->short_description,0,80) !!}</p>
                                                            </div>
                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="c-wish2">
                                                                        <form action="{{ route('new-wish-list') }}" method="post">
                                                                            @csrf
                                                                            <input type="hidden" name="product_id" value="{{ $trendingPageProduct->id }}">
                                                                            <button type="submit" style="border: none;background: none">
                                                                                <a  data-placement="top" title="Add to Wishlist" data-toggle="tooltip"><span class="icon icon-Heart" style="font-size: 15px;position: absolute;left: 15px;top: 11px"></span></a>
                                                                            </button>
                                                                        </form>
                                                                    </li>
                                                                    <li class="add_to_cart c-cart2">
                                                                        <form action="{{ route('cart-add') }}" method="post" style="display: inline">
                                                                            @csrf
                                                                            <input type="hidden" name="product_id" value="{{ $trendingPageProduct->id }}">
                                                                            <input type="hidden" name="product_stock" value="{{ $trendingPageProduct->product_stock }}">
                                                                            <button type="submit" style="border: none;background: none">
                                                                                <a title="add to cart">add to cart</a>
                                                                            </button>
                                                                        </form>
                                                                    </li>
                                                                    <li class="c-com2">
                                                                        <form action="{{ route('new-compare') }}" method="post">
                                                                            @csrf
                                                                            <input type="hidden" name="product_id" value="{{ $trendingPageProduct->id }}">
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
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--product section area end-->
    <!--banner area start-->
    <section class="banner_section home_banner_two home_banner9">
        <div class="container">
            <div class="row ">
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        @if($section_3->section ==3)
                            <div class="banner_thumb">
                                <a href="{{ $section_3->url }}"><img src="{{ asset($section_3->image) }}" alt="" style="height: 200px;width: 100%;"></a>
                                <div class="banner_content">
                                    <p>{{ $section_3->first_header }}</p>
                                    <h2>{{ $section_3->last_header }}</h2>
                                    <span>{{ $section_3->third_header }}</span>
                                </div>
                            </div>

                        @else
                            <span>Banner section 3</span>
                        @endif
                    </div>

                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        @if($section_4->section ==4)
                            <div class="banner_thumb">
                                <a href="{{ $section_4->url }}"><img src="{{ asset($section_4->image) }}" alt="" style="height: 200px;width: 100%;"></a>
                                <div class="banner_content">
                                    <p>{{ $section_4->first_header }}</p>
                                    <h2>{{ $section_4->last_header }}</h2>
                                    <span>{{ $section_4->third_header }}</span>
                                </div>
                            </div>
                        @else
                            <span>Banner section 4</span>
                        @endif
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--banner area end-->
    <!--product section area start-->
    <section class="product_section p_bottom p_section1">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                        <h2 class="c-title">Bestselling Products</h2>
                    </div>
                </div>
                <div class="col-12">
                    <div class="product_area ">
                        <div class="product_container bottom">
                            <div class="custom-row product_row1">
                                @foreach($bestSellingProducts as $bestSellingProduct)
                                    <div class="custom-col-5">
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a class="primary_img" href="{{ route('product-details',['id'=>$bestSellingProduct->id,'slug'=>$bestSellingProduct->slug]) }}"><img src="{{ asset($bestSellingProduct->main_image) }}" alt="" style="height: 300px;"></a>
                                                <a class="secondary_img" href="{{ route('product-details',['id'=>$bestSellingProduct->id,'slug'=>$bestSellingProduct->slug]) }}"><img src="{{ asset($bestSellingProduct->second_image) }}" alt="" style="height: 300px;"></a>
                                                @if($bestSellingProduct->product_highlight != null)
                                                    <div class="highlight">
                                                        <h6>{{$bestSellingProduct->product_highlight}}</h6>
                                                    </div>
                                                @endif
                                                <div class="quick_button">
                                                    <a href="#" class="details" id="{{ $bestSellingProduct->id }}" data-toggle="modal" data-target="#modal_box"  title="quick view"> quick view</a>
                                                </div>
                                            </div>
                                            <div class="product_content">
                                                <div class="tag_cate">
{{--                                                    <a href="{{ route('menu',['id'=>$bestSellingProduct->category_id,'name'=>$bestSellingProduct->category_name]) }}">{{$bestSellingProduct->category_name}},</a>--}}
{{--                                                    <a href="{{ route('smenu',['id'=>$bestSellingProduct->sub_category_id,'catId'=>$bestSellingProduct->category_id,'name'=>$bestSellingProduct->sub_category_name]) }}">{{ substr($bestSellingProduct->sub_category_name,10)>10? substr($bestSellingProduct->sub_category_name,0,10).'...': substr($bestSellingProduct->sub_category_name,0,10) }}</a>--}}
                                                </div>
                                                <h3><a href="{{ route('product-details',['id'=>$bestSellingProduct->id,'slug'=>$bestSellingProduct->slug]) }}"> {{ substr($bestSellingProduct->product_name,25)>25? substr($bestSellingProduct->product_name,0,25).'...': substr($bestSellingProduct->product_name,0,25) }}</a></h3>
                                                @if($bestSellingProduct->discount_product_price>0)
                                                    <del class="old_price">৳ {{$bestSellingProduct->product_price}} </del>&nbsp;&nbsp;
                                                    <span class="current_price">৳ {{ $bestSellingProduct->discount_product_price}}</span>
                                                @else
                                                    <span class="current_price">৳ {{$bestSellingProduct->product_price}} </span>
                                                @endif
                                                <div class="product_hover">
                                                    <div class="product_desc">
                                                        <p>{!! substr($bestSellingProduct->short_description,0,90) !!}</p>
                                                    </div>
                                                    <div class="action_links">
                                                        <ul>
                                                            <li class="c-wish">
                                                                <form action="{{ route('new-wish-list') }}" method="post">
                                                                    @csrf
                                                                    <input type="hidden" name="product_id" value="{{ $bestSellingProduct->id }}">
                                                                    <button type="submit" style="border: none;background: none">
                                                                        <a  data-placement="top" title="Add to Wishlist" data-toggle="tooltip"><span class="icon icon-Heart" style="font-size: 15px;position: absolute;left: 15px;top: 11px"></span></a>
                                                                    </button>
                                                                </form>
                                                            </li>
                                                            <li class="add_to_cart c-cart">
                                                                <form action="{{ route('cart-add') }}" method="post" style="display: inline">
                                                                    @csrf
                                                                    <input type="hidden" name="product_id" value="{{ $bestSellingProduct->id }}">
                                                                    <input type="hidden" name="product_stock" value="{{ $bestSellingProduct->product_stock }}">
                                                                    <button type="submit" style="border: none;background: none">
                                                                        <a title="add to cart">add to cart</a>
                                                                    </button>
                                                                </form>
                                                            </li>
                                                            <li class="c-com">
                                                                <form action="{{ route('new-compare') }}" method="post">
                                                                    @csrf
                                                                    <input type="hidden" name="product_id" value="{{ $bestSellingProduct->id }}">
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
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--product section area end-->
    <!--banner area start-->
    <section class="banner_section home_banner_two home_banner9">
        <div class="container">
            <div class="row ">
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        @if($section_5->section ==5)
                            <div class="banner_thumb">
                                <a href="{{ $section_5->url }}"><img src="{{ asset($section_5->image) }}" alt="" style="height: 200px;width: 100%;"></a>
                                <div class="banner_content">
                                    <p>{{ $section_5->first_header }}</p>
                                    <h2>{{ $section_5->last_header }}</h2>
                                    <span>{{ $section_5->third_header }}</span>
                                </div>
                            </div>
                        @else
                            <span>Banner section 5</span>
                        @endif
                    </div>

                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single_banner">
                        @if($section_6->section==6)
                            <div class="banner_thumb">
                                <a href="{{ $section_6->url }}"><img src="{{ asset($section_6->image) }}" alt="" style="height: 200px;width: 100%;"></a>
                                <div class="banner_content">
                                    <p>{{ $section_6->first_header }}</p>
                                    <h2>{{ $section_6->last_header }}</h2>
                                    <span>{{ $section_6->third_header }}</span>
                                </div>
                            </div>
                        @else
                            <span>Banner section 6</span>
                        @endif
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!--banner area end-->
    <!--product section area start-->
    @foreach($flashSaleProduct22 as $flashSaleProduct2)
    @if(strtotime($flashSaleProduct2->cam_date) >= time())

    <section class="product_section p_bottom p_section1">
        <div class="container">
            <div class="row">
                <div class="col-12">
                <span class="countdown hero_count" data-Date='{{ $flashSaleProduct2->cam_date }} {{ $flashSaleProduct2->cam_time }}'>
                        <span class="running">
                            <timer>
                                <span class="days"></span> <span class="hours"></span> <span
                                    class="minutes"></span> <span class="seconds"></span>
                            </timer>
                        </span>
                    </span>
                    <div class="section_title section_title2">
                        <h2 class="c-title">Flash Sale</h2>
                        <h2 class=""><a href="{{ route('flash-product') }}" class="c-more-b">more product</a></h2>

                    </div>
                </div>
                <div class="col-12">
                    <div class="product_area ">
                        <div class="product_container bottom">
                            <div class="custom-row product_row1">
                                @foreach($flashSaleProducts as $flashSaleProduct)
                                <div class="custom-col-5">
                                    <div class="single_product">
                                        <div class="product_thumb">
                                            <a class="primary_img" href="{{ route('product-details',['id'=>$flashSaleProduct->id,'slug'=>$flashSaleProduct->slug]) }}"><img src="{{ asset($flashSaleProduct->main_image)}}" alt="" style="height: 300px;"></a>
                                            <a class="secondary_img" href="{{ route('product-details',['id'=>$flashSaleProduct->id,'slug'=>$flashSaleProduct->slug]) }}"><img src="{{ asset($flashSaleProduct->second_image)}}" alt="" style="height: 300px;"></a>
                                            @if($flashSaleProduct->product_highlight != null)
                                                <div class="highlight">
                                                    <h6>{{$flashSaleProduct->product_highlight}}</h6>
                                                </div>
                                            @endif
                                            <div class="quick_button">
                                                <a href="#" class="details" id="{{ $flashSaleProduct->id }}" data-toggle="modal" data-target="#modal_box"  title="quick view"> quick view</a>
                                            </div>
                                        </div>
                                        <div class="product_content">
                                            <div class="tag_cate">
{{--                                                <a href="{{ route('menu',['id'=>$flashSaleProduct->category_id,'name'=>$flashSaleProduct->category_name]) }}">{{$flashSaleProduct->category_name}},</a>--}}
{{--                                                <a href="{{ route('smenu',['id'=>$flashSaleProduct->sub_category_id,'catId'=>$flashSaleProduct->category_id,'name'=>$flashSaleProduct->sub_category_name]) }}">{{$flashSaleProduct->sub_category_name}}</a>--}}
                                            </div>
                                            <h3><a href="{{ route('product-details',['id'=>$flashSaleProduct->id,'slug'=>$flashSaleProduct->slug]) }}"> {{ substr($flashSaleProduct->product_name,25)>25? substr($flashSaleProduct->product_name,0,25).'...': substr($flashSaleProduct->product_name,0,25) }}</a></h3>
                                            <del class="old_price">৳ {{ $flashSaleProduct->product_price }}</del>&nbsp;&nbsp;
                                            <span class="current_price">৳ {{$flashSaleProduct->flash_sale_price}}</span>
                                            <div class="product_hover">
                                                <div class="product_desc">
                                                    <p>{!! substr($flashSaleProduct->short_description,0,80) !!}</p>
                                                </div>
                                                <div class="action_links">
                                                    <ul>
                                                        <li class="c-wish">
                                                            <form action="{{ route('new-wish-list') }}" method="post">
                                                                @csrf
                                                                <input type="hidden" name="product_id" value="{{ $flashSaleProduct->id }}">
                                                                <button type="submit" style="border: none;background: none">
                                                                    <a  data-placement="top" title="Add to Wishlist" data-toggle="tooltip"><span class="icon icon-Heart" style="font-size: 15px;position: absolute;left: 15px;top: 11px"></span></a>
                                                                </button>
                                                            </form>
                                                        </li>
                                                        <li class="add_to_cart c-cart">
                                                            <form action="{{ route('cart-add') }}" method="post" style="display: inline">
                                                                @csrf
                                                                <input type="hidden" name="product_id" value="{{ $flashSaleProduct->id }}">
                                                                <input type="hidden" name="product_stock" value="{{ $flashSaleProduct->product_stock }}">
                                                                <button type="submit" style="border: none;background: none">
                                                                    <a title="add to cart">add to cart</a>
                                                                </button>
                                                            </form>
                                                        </li>
                                                        <li class="c-com">
                                                            <form action="{{ route('new-compare') }}" method="post">
                                                                @csrf
                                                                <input type="hidden" name="product_id" value="{{ $flashSaleProduct->id }}">
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
                    </div>
                </div>
            </div>
        </div>

    </section>
    @endif
    @endforeach
    <!--product section area end-->

    <!--blog section area start-->
    <section class="blog_section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                        <h2 class="c-title">Sunglass Hut News</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="blog_wrapper blog_column3 owl-carousel">
                    @foreach($blogs as $blog)
                    <div class="col-lg-4">
                        <div class="single_blog">
                            <div class="blog_thumb">
                                <a href="blog-details.html"><img src="{{ asset($blog->image) }}" alt="" style=" height: 200px"></a>
                            </div>
                            <div class="blog_content">
                                <h3 class="post_title"><a href="{{route('blog-details',['slug'=>$blog->slug])}}">{{ $blog->header }}</a></h3>
                                <div class="post_meta">
                                    <span><i class="ion-person"></i> Posted by </span>
                                    <span><a href="#">{{ $blog->author }}</a></span>
                                    <span>|</span>
                                    <span><i class="fa fa-calendar" aria-hidden="true"></i>  Posted on  {{date('F j, Y', strtotime($blog->created_at))}}	</span>

                                </div>
                                <p class="post_desc">{!! substr($blog->description,150)>150? substr($blog->description,0,150).'...': substr($blog->description,0,150) !!}</p>
                                <a class="read_more" href="{{route('blog-details',['slug'=>$blog->slug])}}">read more</a>

                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
    <!--blog section area end-->
    <!--shipping area start-->
    <div class="shipping_area shipping_two shipping_nine" style="padding: 0px">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="single-shipping">
                        <div class="shipping_icone icone_1">

                        </div>
                        <div class="shipping_content">
                            <h3>First Shipping</h3>
                            <p>First shipping on all area</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-shipping">
                        <div class="shipping_icone icone_2">

                        </div>
                        <div class="shipping_content">
                            <h3>Money Return</h3>
                            <p>Back guarantee under 7 days</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-shipping">
                        <div class="cicon fa fa-shield">
{{--                            <i class="fa fa-shield"></i>--}}
                        </div>

                        <div class="shipping_content">
                            <h3>100 % Secure Payment </h3>
                            <p>We Secure Your Every Transaction</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-shipping">
                        <div class="cicon fa fa-cc-visa" >
{{--                            <i class="fab fa-cc-mastercard"></i>--}}
                        </div>
                        <div class="shipping_content">
                            <h3>Payment Methode</h3>
                            <p>Support online 24 hours a day</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--shipping area end-->



@endsection
