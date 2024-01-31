@extends('admin.master')
@section('title')
    View Order Details
@endsection
@section('content')

{{--    @php--}}
{{--    $p=0;--}}
{{--    foreach ($orderPriceInfo as $item){--}}
{{--       $p = $item->o_product_price;--}}
{{--       echo $p;--}}
{{--    }--}}
{{--    @endphp--}}

    <!-- ========================================================= -->
    <div class="content-header">
        <!-- leftside content header -->
        <div class="leftside-content-header">
            <ul class="breadcrumbs">
                <li><i class="fa fa-table" aria-hidden="true"></i><a href="#">View Order </a></li>
                <li><a>Details</a></li>
            </ul>
        </div>
    </div>
    <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->

    <!--SEARCHING, ORDENING & PAGING-->
    <div class="row animated fadeInRight">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body">
                        <h4 class="text-center">Order info</h4>
                        <hr style="border: 1px solid deeppink;"/>
                        <table id="example2" class="table table-bordered table-hover">
                            <tr>
                                <th>Order ID</th>
                                <td>{{ $orderInfo->id }}</td>
                            </tr>
                            <tr>
                                <th>Order number</th>
                                <th>{{date('ymj',strtotime($orderInfo->created_at))}}{{ $orderInfo->order_no }}</th>
                            </tr>
                            <tr>
                                <th>Order Total</th>
                                <th>{{ $orderInfo->order_total }}</th>
                            </tr>
                            <tr>
                                <th>Shipping Division</th>
                                <th>{{ $division->division }}</th>
                            </tr>
                            <tr>
                                <th>Shipping Area</th>
                                <th>{{ $orderInfo->area }}</th>
                            </tr>
                            <tr>
                                <th>Shipping charge</th>
                                <th>{{ $orderInfo->rate }}</th>
                            </tr>
                            <tr>
                                <th>Discount</th>
                                <th>{{ $orderInfo->discount }}</th>
                            </tr>
                            <tr>
                                <th>Order Status</th>
                                <th>{{ $orderInfo->status }}</th>
                            </tr>

                            <tr>
                                <th>Order Date</th>
                                <th>{{ date('j-M-Y',strtotime($orderInfo->created_at)) }}</th>
                            </tr>
                        </table>
                        <h4 class="text-center">Order Payment info</h4>
                        <hr style="border: 1px solid deeppink;"/>
                        <table id="example2" class="table table-bordered table-hover">
                            <tr>
                                <th>Payment Type</th>
                                <td>{{ $orderPaymentInfo->payment_method }}</td>
                            </tr>
                            <tr>
                                <th>payment_mobile_no</th>
                                <th>{{ $orderPaymentInfo->payment_mobile_no }}</th>
                            </tr>
                            <tr>
                                <th>transaction_no</th>
                                <th>{{ $orderPaymentInfo->transaction_no }}</th>
                            </tr>
                            <tr>
                                <th>amount</th>
                                <th>{{ $orderPaymentInfo->amount }}</th>
                            </tr>
                        </table>
                        <h4 class="text-center">Order Product info</h4>
                        <hr style="border: 1px solid deeppink;"/>
                        <table id="example2" class="table table-bordered table-hover">
                            <tr class="success">
                                <th>Product ID</th>
                                <th>Product Image</th>
                                <th>Product Name</th>
                                <th>Product Code</th>
                                <th>Product Color</th>
                                <th>Product Size</th>
                                <th>Lens type</th>
                                <th>Product Prescription</th>
                                <th>Product Quantity</th>
                                <th>Total Price</th>
                            </tr>
                             @foreach($orderProductsInfo as $orderProductInfo)
                                <tr>
                                    <td>{{ $orderProductInfo->product_id }}</td>
                                    <td><img src="{{ asset($orderProductInfo->main_image) }}" alt="" style="width: 80px;height: 80px"></td>
                                    <td>{{ $orderProductInfo->product_name}}</td>
                                    <td>{{ $orderProductInfo->product_code }}</td>
                                    <td>{{ $orderProductInfo->color_name }}</td>
                                    <td>{{ $orderProductInfo->size_name }}</td>
                                    <td>
                                        @if($orderProductInfo->lens_type==1)
                                            {{ 'Crizal Lens' }}
                                            @elseif($orderProductInfo->lens_type==2)
                                            {{ 'Standard Lens' }}
                                            @endif
{{--                                        {{ $orderProductInfo->lens_type }}--}}
                                    </td>
                                    <td class="text-center">
                                        <a href="{{ asset($orderProductInfo->prescription) }}" target="_blank">
                                            <img src="{{ asset($orderProductInfo->prescription) }}" style="width: 50px;height: 50px" alt="">
                                        </a>
                                    </td>
{{--                                    @if($orderProductInfo->flash_sale_price>0)--}}
{{--                                        <td class="text-center">TK. {{ $orderProductInfo->flash_sale_price }}</td>--}}
{{--                                    @elseif($orderProductInfo->discount_product_price>0)--}}
{{--                                        <td class="text-center">TK. {{ $orderProductInfo->discount_product_price }}</td>--}}
{{--                                        @else--}}
{{--                                        <td class="text-center">TK. {{ $orderProductInfo->product_price }}</td>--}}
{{--                                    @endif--}}
{{--                                    <td>{{ $orderProductInfo->quantity }}</td>--}}
{{--                                    @if($orderProductInfo->discount_product_price>0)--}}
                                        <td class="text-right">{{ $orderProductInfo->quantity }}</td>
                                        <td class="text-right">TK. {{ $subTotal = $orderProductInfo->product_price*$orderProductInfo->quantity}}</td>
{{--                                    @else--}}
{{--                                        <td class="text-right">TK. {{ $subTotal = $orderProductInfo->product_price*$orderProductInfo->quantity }}</td>--}}
{{--                                    @endif--}}
                                </tr>
                            @endforeach
                        </table>
                        <h4 class="text-center">Billing info</h4>
                        <hr style="border: 1px solid deeppink;"/>
                        <table id="example2" class="table table-bordered table-hover">
                            <tr>
                                <th>Customer Name</th>
                                <td>{{ $orderCustomerInfo->name}}</td>
                            </tr>
                            <tr>
                                <th>Email Address</th>
                                <th>{{ $orderCustomerInfo->email_address }}</th>
                            </tr>
                            <tr>
                                <th>Mobile Number</th>
                                <th>{{ $orderCustomerInfo->mobile_number }}</th>
                            </tr>
                            <tr>
                                <th>Address</th>
                                <th>{{ $orderCustomerInfo->address }}</th>
                            </tr>
                        </table>
                        <h4 class="text-center">Shipping info</h4>
                        <hr style="border: 1px solid deeppink;"/>
                        <table id="example2" class="table table-bordered table-hover">
                            <tr>
                                <th>Person Name</th>
                                <td>{{ $orderShippingInfo->name }}</td>
                            </tr>
                            <tr>
                                <th>Mobile Number</th>
                                <th>{{ $orderShippingInfo->mobile_number }}</th>
                            </tr>
                            <tr>
                                <th>Address</th>
                                @if($orderShippingInfo->different_address==null)
                                    <th>{{ $orderShippingInfo->address }}</th>
                                @else
                                    <th>{{ $orderShippingInfo->different_address }}</th>
                                @endif
                            </tr>
                        </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div>
        </div>
    </div>
@endsection
