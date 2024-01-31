@extends('frontend.master')
@section('title')
    Customer dashboard
@endsection
@section('content')
    <!--breadcrumbs area start-->
    <div class="breadcrumbs_area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="index.html">home</a></li>
                            <li>My account</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->

    <!-- my account start  -->
    <section class="main_content_area">
        <div class="container">
            <div class="account_dashboard">
                <div class="row">
                    <div class="col-sm-12 col-md-3 col-lg-3">
                        <!-- Nav tabs -->
                        <div class="dashboard_tab_button">
                            <ul role="tablist" class="nav flex-column dashboard-list">
                                <li><a href="#dashboard" data-toggle="tab" class="nav-link active">Dashboard</a></li>
                                <li> <a href="#orders" data-toggle="tab" class="nav-link">Orders</a></li>
                                <li><a href="#account-details" data-toggle="tab" class="nav-link">Account details</a></li>
                                <li><a href="{{ route('customer-logout') }}" class="nav-link">logout</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-9 col-lg-9">
                        <!-- Tab panes -->
                        <div class="tab-content dashboard_content">
                            <div class="tab-pane fade show active" id="dashboard">
                                <h3>Dashboard </h3>
                                <div class="table-responsive">
                                    <table cellspacing="0" class="shop_table cart table ss">
                                        <thead>
                                        <tr>
                                            <th class="product-name">Si No</th>
                                            <th class="product-name">Order No</th>
                                            <th class="product-name">Total Price</th>
                                            <th class="product-price">payment Status</th>
                                            <th class="product-quantity">Order Status</th>
                                            <th class="product-subtotal">Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @php($i=1)
                                        @foreach($orders as $order)
                                            <tr>
                                                <td>
                                                    <a>{{ $i }} </a>
                                                </td>
                                                <td>
                                                    <a href="#">{{date('ymj',strtotime($order->created_at))}}{{ $order->order_no }}</a>
                                                </td>
                                                <td>
                                                    <span>{{ $order->order_total }}</span>
                                                </td>
                                                <td>
                                                    {{ $order->payment_status==1? 'complete':'pending' }}
                                                </td>
                                                <td>
                                                        <span>
                                                            @if($order->status==2)
                                                                complete
                                                            @elseif($order->status==0)
                                                                pending
                                                            @else
                                                                cancel
                                                            @endif
                                                        </span>
                                                </td>
                                                <td>
                                                    <span><a href="{{ route('order-details',['id'=>$order->id]) }}" >view order details</a></span>
                                                </td>
                                            </tr>
                                            @php($i++)
                                        @endforeach

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="orders">
                                <h3>Orders</h3>
                                <div class="table-responsive">
                                    <table cellspacing="0" class="shop_table cart table ss">
                                        <thead>
                                        <tr>
                                            <th class="product-name">Si No</th>
                                            <th class="product-name">Order No</th>
                                            <th class="product-name">Total Price</th>
                                            <th class="product-price">payment Status</th>
                                            <th class="product-quantity">Order Status</th>
                                            <th class="product-subtotal">Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @php($i=1)
                                        @foreach($orders as $order)
                                            <tr>
                                                <td>
                                                    <a>{{ $i }} </a>
                                                </td>
                                                <td>
                                                    <a href="#">{{date('ymj',strtotime($order->created_at))}}{{ $order->order_no }}</a>
                                                </td>
                                                <td>
                                                    <span>{{ $order->order_total }}</span>
                                                </td>
                                                <td>
                                                    {{ $order->payment_status==1? 'complete':'pending' }}
                                                </td>
                                                <td>
                                                        <span>
                                                            @if($order->status==2)
                                                                complete
                                                            @elseif($order->status==0)
                                                                pending
                                                            @else
                                                                cancel
                                                            @endif
                                                        </span>
                                                </td>
                                                <td>
                                                    <span><a href="{{ route('order-details',['id'=>$order->id]) }}" >view order details</a></span>
                                                </td>
                                            </tr>
                                            @php($i++)
                                        @endforeach

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="account-details">
                                <h3>Account details </h3>
                                <div class="login">
                                    <div class="login_form_container">
                                        <div class="account_login_form">
                                            <form action="{{ route('update-customer') }}" method="post" enctype="multipart/form-data">
                                                @csrf
                                                <div class="row">
                                                    <div class="form-group col-md-6">
                                                        <label>Name <span class="required">*</span></label>
                                                        <input required="" class="form-control" value="{{$customer->name}}" name="name" type="text">
                                                        <input type="hidden" value="{{$customer->id}}" name="customer_id" >
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label>Email <span class="required">*</span></label>
                                                        <input required="" value="{{$customer->email}}" class="form-control" name="email" type="email">
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label>Phone <span class="required">*</span></label>
                                                        <input required="" value="{{$customer->mobile_number}}" class="form-control" name="mobile_number" type="number">
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label>Password <span class="required">*</span></label>
                                                        <input required="" class="form-control" name="password" type="password">
                                                    </div>


                                                    <div class="form-group col-md-6">
                                                        <label>Address <span class="required">*</span></label>
                                                        <textarea class="form-control" rows="3" name="address" id="" placeholder="Address" maxlength="100">{{$customer->address }}</textarea>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for=""> Image</label>
                                                        <input type="file" name="image" onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])" accept="image/*">
                                                        <img id="blah" src="{{ asset($customer->customer_image) }}" alt="img" width="100" height="100" />
                                                    </div>
                                                </div>
                                                <div class="save_button primary_btn default_button">
                                                    <button type="submit">Save</button>
                                                </div>
                                            </form>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- my account end   -->

@endsection
