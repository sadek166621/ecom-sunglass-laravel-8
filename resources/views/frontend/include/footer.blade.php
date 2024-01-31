<!--Newsletter area start-->
<div class="newsletter_area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="newsletter_content">
                    <h2>Our Newsletter</h2>
                    <p>Get E-mail updates about our latest shop and special offers.</p>
                    <div class="subscribe_form">
                        <form action="{{ 'send-mail' }}" method="post">
                            @csrf
                            <input type="hidden" name="name" value="text">
                            <input type="hidden" name="subject" value="text">
                            <input  type="email" name="email" placeholder="Email address..." required/>
                            <input type="hidden" name="message" value="text">
                            <button type="submit">Subscribe</button>
                        </form>
                        <!-- mailchimp-alerts Start -->
                        <div class="mailchimp-alerts text-centre">
                            <div class="mailchimp-submitting"></div><!-- mailchimp-submitting end -->
                            <div class="mailchimp-success"></div><!-- mailchimp-success end -->
                            <div class="mailchimp-error"></div><!-- mailchimp-error end -->
                        </div><!-- mailchimp-alerts end -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Newsletter area start-->


<!--footer area start-->
<footer class="footer_widgets c-footer">
    <div class="container">
        <div class="footer_top">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="widgets_container contact_us">
                        <h3>Contact Us</h3>
                        @foreach($contacts as $contact)
                        <div class="footer_contact">
                            <p>Address: {{ $contact->address }}</p>
                            <p>Phone: <a href="{{ $contact->phone_1 }}">{{ $contact->phone_1 }} , {{ $contact->phone_2 }}</a></p>
                            <p>Email: {{ $contact->email }}</p>
                            <ul>
                                <li><a href="{{ $contact->facebook }}"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="{{ $contact->twitter }}"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="{{ $contact->instagram }}"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="{{ $contact->pinterest }}"><i class="ion-social-googleplus"></i></a></li>

                                <li><a href="{{ $contact->youTube }}"><i class="ion-social-youtube"></i></a></li>
                            </ul>

                        </div>
                        @endforeach
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-4 col-6">
                    <div class="widgets_container widget_menu">
                        <h3>Information</h3>
                        <div class="footer_menu">
                            <ul>
                                <li><a href="{{ route('frequently_questions') }}">About Us</a></li>
                                <li><a href="{{ route('blog') }}">blog</a></li>
                                <li><a href="{{ route('privacy_policy') }}">Privacy Policy</a></li>
                                <li><a href="{{ route('shipping_returns') }}">Return-Refund-Policy</a></li>
                                <li><a href="{{ route('privacy_policy') }}">Term & Services</a></li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-5 col-6">
                    <div class="widgets_container widget_menu">
                        <h3>My Account</h3>
                        <div class="footer_menu">
                            <ul>
                                <li><a href="{{ route('customer-dashboard') }}">My Account</a></li>
                                <li><a href="{{ route('show-cart') }}">Shopping Cart</a></li>
                                <li><a href="{{ route('wish-list') }}">Wish list</a></li>
                                <li><a href="{{ route('compare') }}">Compare</a></li>
                                <li><a href="{{ route('checkout') }}">Checkout</a></li>
                                <li><a href="{{ route('frequently_questions') }}">Frequently Questions</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 col-sm-7">
                    <div class="widgets_container product_widget">
                        <h3>Top Rated Products</h3>
                        <div class="simple_product">
                            @foreach($products as $product)
                            <div class="simple_product_items">
                                <div class="simple_product_thumb">
                                    <a href="{{ route('product-details',['id'=>$product->id,'slug'=>$product->slug]) }}"><img src="{{ asset($product->main_image) }}" alt="" style="height: 75px;"></a>
                                </div>
                                <div class="simple_product_content">
                                    <div class="product_name">
                                        <h3><a href="{{ route('product-details',['id'=>$product->id,'slug'=>$product->slug]) }}">{{ $product->product_name }}</a></h3>
                                    </div>
                                    <div class="product_price">
                                        @if($product->discount_product_price>0)
                                            <del class="old_price">৳ {{$product->product_price}} </del>&nbsp;&nbsp;
                                            <span class="current_price">৳ {{ $product->discount_product_price}}</span>
                                        @else
                                            <span class="current_price">৳ {{$product->product_price}} </span>
                                        @endif
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <img src="{{ asset('frontend') }}/assets/img/Footer-Logo.webp" alt="">
        <hr>
        <div class="footer_bottom">
            <div class="row">
                <div class="col-12">
                    <div class="copyright_area">
                        <p>2021 &copy; <a href="" class="text-uppercase">Copy Right  By Ecommerce</a>. Developed by <a target="_blank" href="https://www.linkedin.com/in/abu-chowdhury-a49038210/">Abu Sadek Chowdhury</a></p>
                        <!--                        <img src="{{ asset('frontend') }}/assets/img/icon/papyel2.png" alt="">-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--footer area end-->
