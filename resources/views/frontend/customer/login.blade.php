@extends('frontend.master')
@section('title')
    Customer Login
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
                            <li>login</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--breadcrumbs area end-->


    <!-- customer login start -->
    <div class="customer_login mt-60">
        <div class="container">
            <div class="row">
                <!--login area start-->
                <div class="col-lg-6 col-md-6">
                    <div class="account_form">
                        <h2>login</h2>
                        <form action="{{ route('customer-login') }}" method="post">
                            @csrf
                            <p>
                                <label>Phone or email <span>*</span></label>
                                <input type="text" name="username">
                            </p>
                            <p>
                                <label>Passwords <span>*</span></label>
                                <input type="password" name="password">
                            </p>
                            <div class="login_submit">

                                <button type="submit">login</button>

                            </div>

                        </form>
                    </div>
                </div>
                <!--login area start-->

                <!--register area start-->
                <div class="col-lg-6 col-md-6">
                    <div class="account_form register">
                        <h2>Register</h2>
                        <form action="{{ route('new-customer') }}" method="post">
                            @csrf
                            <p>
                                <label>Name  <span>*</span></label>
                                <input type="text" name="name">
                            </p><p>
                                <label>Phone  <span>*</span></label>
                                <input type="text" name="mobile_number">
                            </p><p>
                                <label>Email address  <span>*</span></label>
                                <input type="text" name="email">
                            </p>
                            <p>
                                <label>Passwords <span>*</span></label>
                                <input type="password" name="password">
                            </p>
                            <div class="login_submit">
                                <button type="submit">Register</button>
                            </div>
                        </form>
                    </div>
                </div>
                <!--register area end-->
            </div>
        </div>
    </div>
    <!-- customer login end -->
@endsection
