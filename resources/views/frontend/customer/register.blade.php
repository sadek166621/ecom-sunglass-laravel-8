@extends('frontend.master')
@section('title')
    Customer Registration
@endsection
@section('content')
    <!-- START MAIN CONTENT -->
    <div class="main_content">

        <!-- START LOGIN SECTION -->
        <div class="login_register_wrap section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-6 col-md-10">
                        <div class="login_wrap">
                            <div class="padding_eight_all bg-white">
                                <div class="heading_s1">
                                    <h3>Create an Account</h3>
                                </div>
                                <form class="" action="{{ route('new-customer') }}" method="post">
                                    @csrf
                                    <div class="form-group">
                                        <input type="text" required="" class="form-control" name="name" placeholder="Enter Your Name">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" required="" class="form-control" name="mobile_number" placeholder="Enter Your phone number">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" required="" class="form-control" name="email" placeholder="Enter Your Email">
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" required="" type="password" name="password" placeholder="Password">
                                    </div>
                                    <div class="login_footer form-group">
                                        <div class="chek-form">
                                            <div class="custome-checkbox">
                                                <input class="form-check-input" type="checkbox" name="checkbox" id="exampleCheckbox2" value="">
                                                <label class="form-check-label" for="exampleCheckbox2"><span>I agree to terms &amp; Policy.</span></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-fill-out btn-block" style="background: none;border: 1px solid #FF324D">Register</button>
                                    </div>
                                </form>
                                <div class="different_login">
                                    <span> or</span>
                                </div>

                                <div class="form-note text-center">Already have an account? <a href="{{route('customer-login')}}">Log in</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END LOGIN SECTION -->




    </div>
    <!-- END MAIN CONTENT -->
@endsection
