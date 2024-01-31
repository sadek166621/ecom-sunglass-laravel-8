<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>The Only One  Trusted Online Eye Accessory Shop In Bangladesh @yield('title')</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
@yield('meta')
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('frontend') }}/assets/img/sunglass.png">
    <!-- CSS========================= -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="{{ asset('frontend') }}/assets/css/plugins.css">
    <link rel="stylesheet" href="{{ asset('frontend') }}/assets/zoom/xzoom.min.css">

    <!-- Main Style CSS -->
    <link rel="stylesheet" href="{{ asset('frontend') }}/assets/css/style.css">
    @yield('style2')
    <style>
        @yield('style')
    </style>
</head>


<body>
<div class="off_canvars_overlay">

</div>

@include('frontend.include.headar')

@yield('content')

@include('frontend.include.footer')

<!-- modal area start-->
<div class="modal fade" id="modal_box" tabindex="-1" role="dialog"  aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <div class="modal_body">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-md-5 col-sm-12">
                            <div class="modal_tab">
                                <div class="tab-content product-details-large">
                                    <div class="tab-pane fade show active" id="tab1" role="tabpanel" >
                                        <div class="modal_tab_img">
                                            <a href="#"><img src="" alt="" class="main_image"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-7 col-sm-12">
                            <div class="modal_right">
                                <div class="modal_title mb-10">
                                    <h2 id="product_name"></h2>
                                </div>
                                <div class="modal_price mb-10">
                                    <span class="new_price discount_product_price"></span>
                                    <span class="old_price product_price" ></span>
                                </div>
                                <div class="modal_price mb-10">
                                    <span class="new_price" id="discount_product_amount"></span>
                                </div>
                                <div class="mb-10">
                                    <span>Product code : </span> <span id="product_code"></span><br>
                                    <span>Product made by : </span> <span id="product_made_by"></span>
                                </div>
                                <div class="modal_add_to_cart mb-15">
                                    <form action="{{ route('cart-add') }}" method="post">
                                        @csrf
                                        <input type="hidden" name="product_id" class="product_id">
                                        <input type="hidden" name="product_stock" id="product_stock">
                                        <input min="0" max="100" value="1" name="product_stock" type="number">
                                        <button type="submit">add to cart</button>
                                    </form>
                                </div>
                                <div class="modal_description mb-15">
                                    <p id="description"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- modal area start-->

<!-- JS
============================================ -->
<!-- Plugins JS -->
<script src="{{ asset('frontend') }}/assets/js/plugins.js"></script>
<script  src="{{ asset('frontend') }}/assets/zoom/xzoom.min.js"></script>
<script>
    $(".xzoom").xzoom();
</script>
<!-- Main JS -->
<script src="{{ asset('frontend') }}/assets/js/main.js"></script>
<script src="{{ asset('frontend') }}/assets/js/multi-countdown.js"></script>
<script>
    $('.hero_count').attr('data-date');
</script>
<script>
    $(document).ready(function(){
        $(".abc").click(function(){
            $('.abcd').toggle(500);
        });
    });
</script>
<script>
    $(document).ready(function(){
        $(".search").click(function(){
            $(".div").addClass('div2');
            // $(".div").css({"display": "block","transition":"3s"});
        });
    });
</script>
<script>
    $(document).ready(function(){
        $(".open").click(function(){
            $(".lens").show(500);
            $('.lens-type2').hide(500)
        });
        $(".close").click(function(){
            $(".lens").hide(500);
        });
    });
</script>
{{--<script>--}}
{{--    $(window).on ("load", function () {--}}
{{--        // alert("ok");--}}
{{--        $('#my').show();--}}

{{--    })--}}
{{--    $(document).ready(function(){--}}
{{--        $(".close2").click(function(){--}}
{{--            // alert('ok')--}}
{{--            $('#my').hide();--}}
{{--        });--}}
{{--    });--}}
{{--</script>--}}
<script>
    // $( window ).on( "load", function() {
    //     var a =$("#cart_a").val();
    //     var b =$("#srate").val();
    //     alert(b);
    //
    //
    // });
    // $(document).ready(function(){
    //     $("#cart_a").click(function(){
    //         $(".lens").show(500);
    //         $('.lens-type2').hide(500)
    //     });
    //     $(".close").click(function(){
    //         $(".lens").hide(500);
    //     });
    // });
</script>
<script>
    $(document).ready(function(){
        $("#select").change(function(){
            var selectedVal = $("#select option:selected").val();
            if(selectedVal == 'Without Power'){
                $('.lens-type').hide(500)
                $('.lens-type2').show(500)
            }
            if(selectedVal == 'With Power'){
                $('.lens-type').show(500)
                $('.lens-type2').hide(500)
            }
        });
    });
</script>
<script>
    $(document).ready(function(){
        $('select[name="lens_type"]').on('change',function (){
            var lens_type=$(this).val();
            if(lens_type){
                $.ajax({
                    url:"{{url('/select-lens/')}}/"+lens_type,
                    type:"GET",
                    dataType:"json",
                    success:function (data) {
                        $("#lensPrice").empty();
                        $.each(data,function (key,value) {
                            // alert(value.id);
                            $("#lensPrice").append('<option value="'+value.lens_price+'">'+value.lens_price+'</option>');
                            $("#desc").empty();
                            $("#desc").append('<div>'+value.description+'</div>');
                        })
                    }
                });
            }else{
                alert('danger');
            }
        });
    });
</script>
<script>
    $(document).ready(function(){
        $('select[name="area"]').on('change',function (){
            var area=$(this).val();
            // alert(area);
            if(area){
                $.ajax({
                    url:"{{url('/select-area/')}}/"+area,
                    type:"GET",
                    dataType:"json",
                    success:function (data) {
                        // alert(data)
                        // $("#rate").text(data.rate);
                        $("#rate").empty();
                        $.each(data,function (key,value) {
                            // alert(value.id);
                            $("#rate").append('<span style="position: relative;left: 36px;height: 30px;">৳</span><input id="srate" style="width: 100px;border: none;height: 30px;padding-left: 40px" name="rate" value="'+value.rate+'">');
                            // $("#rate").text(data.rate);
                            var b =Number(value.rate);
                            var a =Number($(".cart_a").val());
                            var c = a+b;
                            // alert(c);
                            $("#abd").text(c);
                            $("#tt").val(c);
                        })
                    }
                });
            }else{
                alert('danger');
            }
        });
    });
</script>

<script>
    $(document).ready(function(){
        $('select[name="division"]').on('change',function (){
            var division=$(this).val();
            // alert(division);
            if(division){
                $.ajax({
                    url:"{{url('/select-division/')}}/"+division,
                    type:"GET",
                    dataType:"json",
                    success:function (data) {
                        // alert(data)
                        // $("#rate").text(data.rate);
                        $(".area").empty();
                        $(".area").append('<option>Please select A Shipping Area</option>');
                        $.each(data,function (key,value) {
                            $(".area").append('<option value="'+value.state+'">'+value.state+'</option>');
                        })
                    }
                });
            }else{
                alert('danger');
            }
        });
    });
</script>

<script>
    $('.details').click(function () {
        var productId = $(this).attr('id');
        // alert(productId);
        $.ajax({
            method:"GET",
            url:'api/details/'+productId,
            dataType:'JSON',
            success:function (data) {
                // alert(data);
                // alert(data.product_name);
                $('.product_id').val(data.id);
                $('#product_name').text(data.product_name);
                $('#discount_product_amount').text(data.discount_product_amount +'% Off');
                $('#description').html(data.short_description);
                $('#product_code').text(data.product_code);
                $('#product_stock').text(data.product_stock);
                $('#product_made_by').text(data.product_made_by);
                if (data.discount_product_price !=null || data.discount_product_price > 0){
                    $('.discount_product_price').html('৳'+data.discount_product_price).addClass("new_price");
                    $('.product_price').html('৳'+data.product_price).addClass("old_price");
                } else {
                    $('.discount_product_price').html('৳'+data.product_price).addClass("new_price");
                    $('.product_price').text('');

                }

                if (data.main_image !=null){
                    // alert(data.main_image);
                    $('.main_image').attr('src',data.main_image);
                    $('.main_image').attr('data-lens-image',data.main_image);
                } else {
                    $('.main_image').attr('src','http://www.hgs.at/img/contact/ce.jpg')
                }

            }
        });
        $('#modal_box').modal('show');
        return false;

    });
</script>
<script>
    $(".form").on('submit', function(){
        $('#mymodal').show();
    })
</script>



<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script>
    $(document).ready(function() {
        $('.js-example-basic-single').select2();
    });
</script>

{{--//in blade tempalte--}}
@if(!empty(Session::get('cartM')))
    <script>
        $(function() {
            $('#myModal').modal('show');
        });
    </script>
@endif

{{--//in blade tempalte--}}
@if(!empty(Session::get('sub')))
    <script>
        $(function() {
            $('#my').modal('show');
        });
    </script>
@endif

@yield('scripe')


<div class="modal fade" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content" style="background: #FFD800">
            <div class="modal-header">
                <h4 style=""><i class="fa fa-check-circle"></i>&nbsp;&nbsp{{ Session::get('cartM') }}</h4>
            </div>
            <div class="modal-body" style="height: 300px; color: #0C090A">
                <div class="m-img">
                    <img src="{{ asset(Session::get('image')) }}" alt="" style="">
                </div>
                <div class="m-con">
                    <h3>{{ Session::get('name') }}</h3>
                    <span style="font-size: 17px;">Price :  ৳ {{ Session::get('price') }}</span><br><br>
                    <span class="m-des" style="font-size: 17px;">{!! Session::get('description') !!}</span><br>
                    <a href="{{ route('show-cart') }}" class="btn btn-outline-warning" style="color: #0C090A;border-color: #0C090A;"> VIEW CART</a>
                    <a href="{{ route('checkout') }}" class="btn btn-outline-warning" style="color: #0C090A;border-color: #0C090A;"> CHECKOUT</a>
                    <button type="button" data-dismiss="modal" class="btn btn-outline-warning m-btn" style="color: #0C090A;border-color: #0C090A;" aria-label="Close">
                        Contineu shopping
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="my" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" style="opacity: 1">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content" style="border-radius: 0px">
            <div class="modal-body" style="background-color: #0B0809;color: #fff">
                <div class="row">
                    @foreach($subscribModals as $subscribModal)
                    <div class="col-5 m-d-n">
                        <img src="{{ asset($subscribModal->image) }}" alt="" style="height: 450px">
                    </div>
                    @endforeach
                    <div class="col-md-7 col-xs-12">
                        <button type="button" class="close2 c-m-btn m-b-c" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        @foreach($subscribModals as $subscribModal)
                        <h3>{{ $subscribModal->heading }}</h3>
                        <span class="m-d-n">{!!  $subscribModal->text  !!}</span>
                            @endforeach
                        <form action="{{ route('subscriber') }}" method="post">
                            @csrf
                            <input class="form-control c-input" type="email" name="email" placeholder="Email Address" required>
                            <input class="form-control c-input" type="number" name="number" placeholder="Phone Number" required>
                            <input type="submit"class="btn btn-outline-success form-control c-input c-in-btn" value="Subscribe" style="color:#FDBE00 !important;">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



</body>
</html>
