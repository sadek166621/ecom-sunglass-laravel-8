@extends('frontend.master')
@section('title')
    WishList
@endsection
@section('banner-title')
    WishList
@endsection
@section('content')
    @include('frontend.include.banner')


    <!--wishlist area start -->
    <div class="wishlist_area mt-60">
        <div class="container">
            <form action="#">
                <div class="row">
                    <div class="col-12">
                        <div class="table_desc wishlist">
                            <div class="cart_page table-responsive">
                                <div class="table-responsive">
                                    <table>
                                        <thead>
                                        <tr>
                                            <th class="product_remove">Delete</th>
                                            <th class="product_thumb">Image</th>
                                            <th class="product_name">Product</th>
                                            <th class="product-price">Price</th>
                                            <th class="product_quantity">Stock Status</th>
                                            <th class="product_total">Add To Cart</th>
                                        </tr>
                                        </thead>
                                        <tbody>
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
                                                <td class="product_remove"><a href="{{ route('wish-list-remove',['id'=>$product->id]) }}">X</a></td>
                                                <td class="product_thumb"><a href="#"><img src="{{ asset($product->main_image) }}" alt=""></a></td>
                                                <td class="product_name" style="text-align: justify;width: 360px"><a href="#" >{{$product->product_name}}</a></td>
                                                <td class="product-price">৳{{$product->product_price }}</td>
                                                <td class="product_quantity">In Stock</td>
                                                {{--                                        <td class="product_total"><a href="#">Add To Cart</a></td>--}}


                                                <td class="product_total">
                                                    <form  action="{{ route('cart-add') }}" method="post">
                                                        @csrf
                                                        <input type="hidden" value="{{ $product->product_id }}" name="product_id">
                                                        <input type="hidden" name="product_stock" value="{{ $product->product_stock}}">
                                                        <button type="submit" style="border: none;background: none"><a >Add To Cart</a></button>
                                                    </form>
                                                </td>


                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </form>
            <div class="row">
                <div class="col-12">
                    <div class="wishlist_share">
                        <h4>Share on:</h4>
                        <ul>
                            <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            <li><a href="#"><i class="fa fa-vimeo"></i></a></li>
                            <li><a href="#"><i class="fa fa-tumblr"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!--wishlist area end -->

@endsection
