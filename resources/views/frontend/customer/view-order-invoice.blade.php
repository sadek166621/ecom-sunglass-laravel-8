{{--@extends('admin.master')--}}
{{--@section('title')--}}
{{--    Manage Order--}}
{{--@endsection--}}
{{--@section('body')--}}
<style>
    .invoice-box{
        max-width:800px;
        margin:auto;
        padding:30px;
        border:1px solid #eee;
        /*box-shadow:0 0 10px rgba(0, 0, 0, .15);*/
        font-size:16px;
        line-height:24px;
        font-family:'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        color:#555;
    }

    .invoice-box table{
        width:100%;
        line-height:inherit;
        text-align:left;
    }

    .invoice-box table td{
        padding:5px;
        vertical-align:top;
    }

    .invoice-box table tr td:nth-child(2){
        text-align:right;
    }

    .invoice-box table tr.top table td{
        padding-bottom:20px;
    }

    .invoice-box table tr.top table td.title{
        font-size:45px;
        line-height:45px;
        color:#333;
    }

    .invoice-box table tr.information table td{
        padding-bottom:40px;
    }

    .invoice-box table tr.heading td{
        /*background:#eee;*/
        border-bottom:1px solid #eee;
        font-weight:bold;
    }

    .invoice-box table tr.details td{
        padding-bottom:20px;
    }

    .invoice-box table tr.item td{
        border-bottom:1px solid #eee;
    }

    .invoice-box table tr.item.last td{
        border-bottom:none;
    }

    .invoice-box table tr.total td:nth-child(2){
        border-top:2px solid #eee;
        font-weight:bold;
    }

    @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td{
            width:100%;
            display:block;
            text-align:center;
        }

        .invoice-box table tr.information table td{
            width:100%;
            display:block;
            text-align:center;
        }
    }
</style>
<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="invoice-box" style="background-color: white;">
                <table cellpadding="0" cellspacing="0" >
                    <tr class="top">
                        <td colspan="2">
                            <table>
                                <tr>
                                    <td class="title">
                                        <img src="{{ asset('frontend') }}/assets/img/logo/sunglass-logo.png" alt="SUNGLSS HUT BD">
                                    </td>
                                    <td>
                                        Invoice #: {{date('ymj',strtotime($orderInfo->created_at))}}{{ $orderInfo->order_no }}<br>
                                        Created: {{ date("F j, Y") }}<br>
                                        Order Date: {{ date('F j, Y',strtotime($orderInfo->created_at)) }}
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <tr class="information">
                        <td colspan="2">
                            <table>
                                <tr>
                                    <td>
                                        <h3>Order Billing Info</h3>
                                        <span> Name : </span> {{ $billingInfo->name}}<br>
                                        <span> Address : </span> {{ $billingInfo->address }}<br>
                                        <span> Email : </span> {{ $billingInfo->email_address }}<br>
                                        <span> Mobile Number : </span>{{ $billingInfo->mobile_number }}<br>
                                    </td>

                                    <td>
                                        <h3>Order Delivery Info</h3>
                                        <span> Name : </span> {{ $shippingInfo->name }}<br>
                                        <span> Address : </span> {{ $shippingInfo->address }}<br>
                                        <span> Shipping Division : </span> {{ $division->division }}<br>
                                        <span> Shipping Area : </span> {{ $orderInfo->area }}<br>
                                        <span> Mobile Number : </span>{{ $shippingInfo->mobile_number }}<br>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table border="1">
                    <tr class="heading">
                        <td>SL NO</td>
                        <td>Product Name</td>
                        <td>Product Code</td>
                        <td>Product Color</td>
                        <td>Product Size</td>
                        <td>Prescription</td>
                        <td>Quantity</td>
                        <td>Price</td>
                    </tr>
                    <?php $i=1; $total = 0; ?>
                    @foreach($orderProductsInfo as $orderProductInfo)
                        <tr class="item">
                            <td>{{ $i }}</td>
                            <td>{{ $orderProductInfo->product_name }}</td>
                            <td class="text-center">{{ $orderProductInfo->product_code }}</td>
                            <td class="text-center">{{ $orderProductInfo->color_name }}</td>
                            <td class="text-center">{{ $orderProductInfo->size_name }}</td>
                            <td class="text-center"><img src="{{ asset( $orderProductInfo->prescription ) }}" alt="" style="height: 50px;width: 50px"></td>
                            <td class="text-center">{{ $orderProductInfo->quantity }}</td>
                            <td class="text-center">{{ $subTotal=$orderProductInfo->product_price*$orderProductInfo->quantity }}</td>
                        </tr>
                        <?php $i++; $total = $total+$subTotal; ?>
                    @endforeach
                    <tr class="total">
                </table>
                <table>
                    <tr>
                        <td style="text-align: right;">
                            Sub Total: TK. {{ $total }}<br>
                            Discount: TK. {{ $orderInfo->discount }}<br>
                            @if($rate=$orderInfo->rate=="Free")
                                @if($orderInfo->discount ==null)
                                    Shipping<span style="font-size: 10px"></span> : Free<br>
                                    Total: TK. {{ $total }}
                                @else
                                    Shipping<span style="font-size: 10px"></span> : Free<br>
                                    Total: TK. {{ $total-$orderInfo->discount }}
                                @endif
                            @else
                                @if($orderInfo->discount ==null)
                                    Shipping<span style="font-size: 10px"></span> : TK {{ $rate=$orderInfo->rate }}<br>
                                    Total: TK. {{ $total+$rate }}
                                @else
                                    Shipping<span style="font-size: 10px"></span> : TK {{ $rate=$orderInfo->rate }}<br>
                                    Total: TK. {{ ($total+$rate)-$orderInfo->discount }}
                                @endif
                            @endif
                        </td>
                    </tr>
                </table>
                <hr/>
                <br/><br/><br/><br/><br/>
                <table cellpadding="0" cellspacing="0" >
                    <tr class="information">
                        <td colspan="2">
                            <table>
                                <tr>
                                    <td>
                                        <hr/>
                                        Received By Signature
                                    </td>

                                    <td>
                                        <hr/>
                                        Delivery By Signature
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</section><!-- /.content -->
{{--@endsection--}}
