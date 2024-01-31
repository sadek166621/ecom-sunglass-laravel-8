@extends('frontend.master')
@section('title')
    Products Details
@endsection
@section('banner-title')
    Products Details
@endsection
@section('content')
    <?php $p=0; ?>
    @foreach($flashSaleProducts as $item)
        <?php $p=$item->flash_sale_price; ?>
    @endforeach
    <?php $i=0; $review=0; $customer=0;?>
    @foreach($ratings as $rating)
        <tr class="text-center">
            <td> <?php  $reviewTotal=$rating->review?></td>

        </tr>
        <?php $i++; $review = $review+$reviewTotal; ?>
        <?php $customer = $review/$i; ?>
    @endforeach
    @include('frontend.include.banner')

    <!--product details start-->
    <div class="product_details">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product-details-tab">
                        <div id="img-1" class="zoom1 single-zoom">
                            <a href="#">
                                <img id="zoom1" src="{{ asset($product->main_image) }}" xoriginal="{{ asset($product->main_image) }}" alt="big-1" class="c-img-de">
                            </a>
                        </div>
                        <div class="single-zoom-thumb">
                            <ul class="s-tab-zoom owl-carousel single-product-active" id="gallery_01">
                                @foreach($product_images as $product_image)
                                <li>
                                    <a href="#" class="elevatezoom-gallery active" data-update="" data-image="{{ asset($product_image->sub_image) }}" data-zoom-image="{{ asset($product_image->sub_image) }}">
                                        <img src="{{ asset($product_image->sub_image) }}" alt="zo-th-1" style="height: 80px"/>
                                    </a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product_d_right">
                        <form action="{{ route('cart-add') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            <h1>{{ $product->product_name }}</h1>
                            <input type="hidden" name="product_id" value="{{ $product->id }}">
                            <input type="hidden" name="product_stock" value="{{ $product->product_stock}}">
                            <div class=" product_ratting">
                                <ul>
                                    @if($customer == 0 && $customer < 0.5)
                                        <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                    @elseif($customer >= 0.5 && $customer <= 1.4)
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                    @elseif($customer >= 1.5 && $customer <= 2.5)
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o"></i></a></li>

                                    @elseif($customer > 2.5 && $customer <= 3.5)
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                    @elseif($customer > 3.5 && $customer <= 4.4)
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star-o"></i></a></li>
                                    @elseif($customer >= 4.5 && $customer <= 5)
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                        <li><a href="#"><i class="fa fa-star"></i></a></li>
                                    @else
                                        <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                        <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                        <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                        <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                        <li><a href="#"><i class="zmdi zmdi-star-outline"></i></a></li>
                                    @endif

                                </ul>
                                <h4>{{$customer}}/5</h4>
                            </div>
                            <div class="product_price">
                                @if($p>0)
                                    <del class="old_price">৳ {{$product->product_price}} </del>
                                    <span class="current_price">৳ {{$p}} </span>
                                @elseif($product->discount_product_price>0)
                                    <del class="old_price">৳ {{$product->product_price}} </del>&nbsp;&nbsp;
                                    <span class="current_price">৳ {{ $product->discount_product_price}}</span>
                                @else
                                    <span class="current_price">৳ {{$product->product_price}} </span>
                                @endif
                            </div>
{{--                            <div class="product_desc">--}}
{{--                                <p>{!! $product->short_description !!}</p>--}}
{{--                            </div>--}}
                            <div class="action_links">
                                <ul>
{{--                                    <li><a href="wishlist.html" data-placement="top" title="Add to Wishlist" data-toggle="tooltip" style="width: 65px"><span class="icon icon-Heart"></span></a></li>--}}
{{--                                    <li><a href="compare.html" title="compare" style="width: 65px"><i class="ion-ios-settings-strong"></i></a></li>--}}

                                    <li><a href="" title="Stock info" style="width: 85px">{{ $product->product_stock>0 ? 'Stock In': 'Stock Out'}}</a></li>
                                </ul>
                            </div>
                            <br>
                            <div class="product_meta">
                                <h5>Category:
                                    @foreach($productCategories as $productCategory)
                                    <a href="{{ route('menu',['id'=>$productCategory->category_id,'name'=>$productCategory->category_name]) }}">{{ $productCategory->category_name }}</a> ,
                                    @endforeach
                                </h5>
                                <h5>Size:
                                    @foreach($productSizes as $productSize)
                                    <label class="s-color" style="width: 120px">
                                        <input type="radio" name="size" value="{{ $productSize->size_name }}" style="position: absolute;opacity: 0;cursor: pointer;height: 0;width: 0;" >
                                        <span class="checkmark " style=" position: relative;top: 0px; height: 25px;width: 25px; padding: 2px 12% 2px 5px;font-size: 14px">{{ $productSize->size_name }}</span>
                                        <div style="height: 5px; width: 40px;position: relative;top: -11px;left: 37px;"></div>
                                    </label>
                                    @endforeach
                                </h5>
                            </div>
                            <div class="color">
                                <h5 class="color">Color:
                                    @foreach($productColors as $productColor)
                                    <label class="s-color">
                                        <input type="radio" name="color" value="{{ $productColor->color_name }}" style="position: absolute;opacity: 0;cursor: pointer;height: 0;width: 0;" >
                                        <span class="checkmark" style=" position: relative;top: 3px;height: 25px;width: 25px;background-color: {{ $productColor->color_code }};"></span>
                                        <div style="height: 5px; width: 5px ;position: relative;top: -11px;left: 37px;"></div>
                                    </label>
                                        @endforeach
                                </h5>
                            </div>
                            <div class="product_meta">
                                <h5 style="margin: 20px 0px"><a href="#" style="background: #FFD800;padding: 10px 25px;color: #0B0809;font-weight: 700">Need extra lens <i class="fa fa-question"></i></a></h5>
                                <h6> <input type="radio" name="lens" class="open"/>&nbsp; Yes</h6>
                                <h6> <input type="radio" name="lens" class="close"/>&nbsp; No</h6>
                            </div>
                            <div class="lens">
                                <div class="card card-body">
                                    <select id="select" name="power">
                                        <option value="With Power"> With Power</option>
                                        <option value="Without Power"> Without Power</option>
                                    </select>
                                    <br>
                                    <label class="lens-type">Lens Type With Power</label>
                                    <select name="lens_type" class="lens-type">
                                        @foreach($lensTypes as $lensType)
                                            <option value="{{ $lensType->id }}"> {{ $lensType->lens_type }}</option>
                                        @endforeach
                                    </select>
                                    <br>
                                    <label class="lens-type">Standard Lens Price</label>
                                    <select name="lens_price2" id="lensPrice" class="lens-type">
{{--                                        @foreach($lensPrices as $lensPrice)--}}
{{--                                            <option value="{{ $lensPrice->lens_price }}">{{ $lensPrice->lens_price }}</option>--}}
{{--                                        @endforeach--}}
                                    </select>
                                    <label class="lens-type2">Standard Lens Price</label>
                                    <select name="lens_price" class="lens-type2">
                                        <option value=""></option>
                                        @foreach($secLensPrices as $secLensPrice)
                                        <option value="{{ $secLensPrice->lens_price }}"> {{ $secLensPrice->lens_price }}</option>
                                        @endforeach
                                    </select>
                                    <label class="lens-type">Upload Prescription</label>
{{--                                    <input type="file" name="abc">--}}
                                    <input class="lens-type" type="file" name="prescription" accept="image/*">
                                    <img class="lens-type" id="mainImage"  alt="product main image" width="100" height="100" />
                                    <small class="lens-type">
                                        Max file size: 10 MB<br>
                                        Permitted file types: jpg jpeg jpe png gif
                                    </small>
                                    <hr class="lens-type">
                                    <div class="product_meta lens-type" id="desc">
                                        {!! $lensType->first()->description !!}
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="product_variant quantity">
                                <label>quantity</label>
                                <input min="1" max="100" value="1" type="number">
                                <button class="button " type="submit">add to cart</button>
                            </div>
{{--                            <!-- AddToAny BEGIN -->--}}
{{--                            <div class="a2a_kit a2a_kit_size_32 a2a_default_style">--}}
{{--                                <a class="a2a_dd" href="https://www.addtoany.com/share"></a>--}}
{{--                                <a class="a2a_button_facebook"></a>--}}
{{--                                <a class="a2a_button_twitter"></a>--}}
{{--                                <a class="a2a_button_email"></a>--}}
{{--                            </div>--}}
{{--                            <script async src="https://static.addtoany.com/menu/page.js"></script>--}}
{{--                            <!-- AddToAny END -->--}}
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--product details end-->

    <!--product info start-->
    <div class="product_d_info">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="product_d_inner">
                        <div class="product_info_button">
                            <ul class="nav" role="tablist">
                                <li >
                                    <a class="active" data-toggle="tab" href="#info" role="tab" aria-controls="info" aria-selected="false">Description</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">Reviews (1)</a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="info" role="tabpanel" >
                                <div class="product_info_content">
                                    <p>{!! $product->description !!}</p>
                                    <a href="{{ $product->orginal_product_link }}" class="btn btn-outline-warning" style="color: #000" target="_blank">Orginal Product</a>
                                    <a href="{{ $product->youtube_link }}" class="btn btn-outline-warning" style="color: #000" target="_blank">Product Review</a>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="reviews" role="tabpanel" >
                                <div class="reviews_wrapper">
                                    <?php $a=0; ?>
                                    @foreach($comments as $comment)
                                        <?php $a++; ?>
                                    @endforeach
                                    <h2>{{$a}} review this product</h2>
                                    @foreach($comments as $comment)
                                        <div class="reviews_comment_box">
                                            <div class="comment_thmb">
                                                <img src="{{ asset('frontend') }}/assets/img/blog/comment2.jpg" alt="">
                                            </div>
                                            <div class="comment_text">
                                                <div class="reviews_meta">
                                                    {{--                                                <p><strong>admin </strong>- <?php date('Y-m-d', strtotime({{$comment->created_at}}))?></p>--}}
                                                    <p><strong>{{Session::get('customerName')}} </strong>- {{ $comment->created_at->format('jS F Y h:i:s A') }}</p>
                                                    <span>{{$comment->comments}}</span>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach

                                    @if($customerId = Session::get('customerId'))
                                        <div class="comment_title">
                                            @if($product_rating !=null)
                                                you already <span style="font-size: 14px;font-weight: bold">{{ $product_rating->review }} star</span>  review this product
                                            @else
                                                <h2>Add a review </h2>
                                            @endif

                                        </div>
                                        <div class="product_ratting mb-10">
                                            <h3>Your rating</h3>
                                            <ul>

                                                {{--                                                @if($product_rating !=null)--}}
                                                <li><a href="{{url('rating-star-one',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star-o"></i></a></li>
                                                <li><a href="{{url('rating-star-two',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star-o"></i></a></li>
                                                <li><a href="{{url('rating-star-three',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star-o"></i></a></li>
                                                <li><a href="{{url('rating-star-four',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star-o"></i></a></li>
                                                <li><a href="{{url('rating-star-five',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star-o"></i></a></li>
                                                {{--                                                @else--}}
                                                {{--                                                    @if($product_rating->review==1)--}}
                                                {{--                                                        <li><a href="{{url('rating-star-one',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-two',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="zmdi zmdi-star-outline"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-three',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="zmdi zmdi-star-outline"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-four',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="zmdi zmdi-star-outline"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-five',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="zmdi zmdi-star-outline"></i></a></li>--}}
                                                {{--                                                    @elseif($review_2 == 2)--}}
                                                {{--                                                        <li><a href="{{url('rating-star-one',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-two',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-three',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="zmdi zmdi-star-outline"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-four',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="zmdi zmdi-star-outline"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-five',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="zmdi zmdi-star-outline"></i></a></li>--}}
                                                {{--                                                    @elseif($product_rating->review==3)--}}
                                                {{--                                                        <li><a href="{{url('rating-star-one',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-two',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-three',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-four',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="zmdi zmdi-star-outline"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-five',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="zmdi zmdi-star-outline"></i></a></li>--}}

                                                {{--                                                    @elseif($product_rating->review==4)--}}
                                                {{--                                                        <li><a href="{{url('rating-star-one',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-two',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-three',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-four',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-five',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="zmdi zmdi-star-outline"></i></a></li>--}}

                                                {{--                                                    @elseif($product_rating->review==5)--}}
                                                {{--                                                        <li><a href="{{url('rating-star-one',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-two',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-three',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-four',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-five',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="fa fa-star"></i></a></li>--}}
                                                {{--                                                    @else--}}
                                                {{--                                                        <li><a href="{{url('rating-star-one',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="zmdi zmdi-star-outline"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-two',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="zmdi zmdi-star-outline"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-three',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="zmdi zmdi-star-outline"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-four',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="zmdi zmdi-star-outline"></i></a></li>--}}
                                                {{--                                                        <li><a href="{{url('rating-star-five',['productId'=>$product->id,'customerId'=>Session::get('customerId')])}}"><i class="zmdi zmdi-star-outline"></i></a></li>--}}

                                                {{--                                                    @endif--}}
                                                {{--                                                    @endif--}}

                                            </ul>
                                        </div>
                                        <div class="product_review_form">
                                            <form action="{{ route('new-review-comment') }}" method="post" enctype="multipart/form-data">
                                                @csrf
                                                <div class="row">
                                                    <div class="col-12">
                                                        <input type="hidden" name="product_id" value="{{$product->id}}">
                                                        <input type="hidden" name="customer_id" value="{{Session::get('customerId')}}">
                                                        <label for="review_comment">Your review </label>
                                                        <textarea name="comments" id="review_comment" ></textarea>
                                                    </div>
                                                </div>
                                                <button type="submit">Submit</button>
                                            </form>
                                        </div>
                                    @else
                                        <div class="comment_title">
                                            <h2>Add a review <a class="text-danger" href="{{url('customer-login')}}">Login or Register</a> </h2>
                                        </div>
                                    @endif

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--product info end-->

    <!--product section area start-->
    <section class="product_section  p_section1">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_title">
                        <h2>Related products</h2>
                    </div>
                </div>
                <div class="col-12">
                    <div class="product_area ">
                        <div class="product_container bottom">
                            <div class="custom-row product_row1">
                                @foreach($relatedProducts as $relatedProduct)
                                    <div class="custom-col-5">
                                        <div class="single_product">
                                            <div class="product_thumb">
                                                <a class="primary_img" href="{{ route('product-details',['id'=>$relatedProduct->id,'slug'=>$relatedProduct->slug]) }}"><img src="{{ asset($relatedProduct->main_image) }}" alt="" style="height: 300px;"></a>
                                                <a class="secondary_img" href="{{ route('product-details',['id'=>$relatedProduct->id,'slug'=>$relatedProduct->slug]) }}"><img src="{{ asset($relatedProduct->second_image) }}" alt="" style="height: 300px;"></a>
                                                <div class="quick_button">
                                                    <a href="#" class="details" id="{{ $relatedProduct->id }}" data-toggle="modal" data-target="#modal_box"  title="quick view"> quick view</a>
                                                </div>
                                            </div>
                                            <div class="product_content">
                                                <div class="tag_cate">
                                                    <a href="{{ route('menu',['id'=>$relatedProduct->category_id,'name'=>$relatedProduct->category_name]) }}">{{$relatedProduct->category_name}},</a>
{{--                                                    <a href="{{ route('smenu',['id'=>$relatedProduct->sub_category_id,'catId'=>$relatedProduct->category_id,'name'=>$relatedProduct->sub_category_name]) }}">{{ substr($relatedProduct->sub_category_name,10)>10? substr($relatedProduct->sub_category_name,0,10).'...': substr($relatedProduct->sub_category_name,0,10) }}</a>--}}
                                                </div>
                                                <h3><a href="{{ route('product-details',['id'=>$relatedProduct->id,'slug'=>$relatedProduct->slug]) }}"> {{ substr($relatedProduct->product_name,25)>25? substr($relatedProduct->product_name,0,25).'...': substr($relatedProduct->product_name,0,25) }}</a></h3>
                                                <del class="old_price">৳ {{ $relatedProduct->discount_product_price }}</del>&nbsp;&nbsp;
                                                <span class="current_price">৳ {{$relatedProduct->product_price}}</span>
                                                <div class="product_hover">
                                                    <div class="product_desc">
                                                        <p>{!! substr($relatedProduct->short_description,0,90) !!}</p>
                                                    </div>
                                                    <div class="action_links">
                                                        <ul>
                                                            <li><a href="wishlist.html" data-placement="top" title="Add to Wishlist" data-toggle="tooltip"><span class="icon icon-Heart"></span></a></li>
                                                            <li class="add_to_cart"><a href="cart.html" title="add to cart">add to cart</a></li>
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
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--product section area end-->
    <hr>

{{--    <script>--}}
{{--        function selectSubCategory(lens_type) {--}}
{{--            var xmlHttp = new XMLHttpRequest();--}}
{{--            var serverPage='../select-lens/'+lens_type;--}}
{{--            xmlHttp.open("GET", serverPage);--}}
{{--            xmlHttp.onreadystatechange = function() {--}}
{{--                if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {--}}
{{--                    document.getElementById('lensPrice').innerHTML = xmlHttp.responseText;--}}
{{--                }--}}
{{--            }--}}
{{--            xmlHttp.send(null);--}}
{{--        }--}}
{{--    </script>--}}
@endsection
