@extends('frontend.master')
@section('title')
    blog details
@endsection
@section('style')
    .btn-outline-warning{
    color: #FF4000;
    border-color: #FF4000;
    }
    .btn-outline-warning:hover{
    background: #FF4000;
    }
@endsection
@section('banner-title')
    Blog details
@endsection
@section('content')
    @include('frontend.include.banner')

    <!--blog body area start-->
    <div class="blog_area blog_details">
        <div class="container">
            <div class="row">

                <div class="col-lg-9 col-md-12">
                    <!--blog grid area start-->
                    <div class="blog_details_wrapper">
                        <div class="blog_thumb">
                            <a href="#"><img src="{{asset($blog->image) }}" alt="" style="width: 100%"></a>
                        </div>
                        <div class="blog_content">
                            <h3 class="post_title">{{ $blog->header}}</h3>
                            <div class="post_meta">
                                <span><i class="ion-person"></i> Posted by </span>
                                <span><a href="#">{{ $blog->author}}</a></span>
                                <span>|</span>
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>  Posted on  {{date('F j, Y', strtotime($blog->created_at))}}	</span>

                            </div>
                            <div class="post_content">
                                <p>{!! $blog->description !!}</p>
                            </div>

                        </div>
{{--                        <div class="comments_box">--}}
{{--                            <h3>3 Comments	</h3>--}}
{{--                            <div class="comment_list">--}}
{{--                                <div class="comment_thumb">--}}
{{--                                    <img src="assets/img/blog/comment3.png.jpg" alt="">--}}
{{--                                </div>--}}
{{--                                <div class="comment_content">--}}
{{--                                    <div class="comment_meta">--}}
{{--                                        <h5><a href="#">Admin</a></h5>--}}
{{--                                        <span>October 16, 2018 at 1:38 am</span>--}}
{{--                                    </div>--}}
{{--                                    <p>But I must explain to you how all this mistaken idea of denouncing pleasure</p>--}}
{{--                                </div>--}}

{{--                            </div>--}}
{{--                            <div class="comment_list">--}}
{{--                                <div class="comment_thumb">--}}
{{--                                    <img src="assets/img/blog/comment3.png.jpg" alt="">--}}
{{--                                </div>--}}
{{--                                <div class="comment_content">--}}
{{--                                    <div class="comment_meta">--}}
{{--                                        <h5><a href="#">Admin</a></h5>--}}
{{--                                        <span>October 16, 2018 at 1:38 am</span>--}}
{{--                                    </div>--}}
{{--                                    <p>Quisque orci nibh, porta vitae sagittis sit amet, vehicula vel mauris. Aenean at</p>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <div class="comments_form">--}}
{{--                            <h3>Leave a Reply </h3>--}}
{{--                            <form action="#">--}}
{{--                                <div class="row">--}}
{{--                                    <div class="col-12">--}}
{{--                                        <label for="review_comment">Comment </label>--}}
{{--                                        <textarea name="comment" id="review_comment" ></textarea>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <button class="button" type="submit">Post Comment</button>--}}
{{--                            </form>--}}
{{--                        </div>--}}

                    </div>
                    <!--blog grid area start-->
                </div>
                <div class="col-lg-3 col-md-12">
                    <!--blog sidebar start-->
                    <aside class="blog_sidebar">
                        <!--categories start-->
                        <div class="sidebar_widget widget_categories">
                            <h3 class="widget_title">Categories</h3>
                            <ul>
                                @foreach($categories as $category)
                                    <li><a href="{{ route('category.blog',['id'=>$category->id,'cat'=>$category->blog_category_name]) }}">{{ $category->blog_category_name }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                        <!--categories end-->

                        <!--recent post start-->
                        <div class="sidebar_widget recent_post">
                            <h3 class="widget_title">Recent Posts</h3>
                            @foreach($blogs as $blog)
                            <div class="sidebar_post">
                                <div class="post_img">
                                    <a href="{{route('blog-details',['slug'=>$blog->slug])}}"><img src="{{ asset($blog->image )}}" alt=""></a>
                                </div>
                                <div class="post_text">
                                    <h3><a href="{{route('blog-details',['slug'=>$blog->slug])}}">{{ $blog->header }}</a></h3>
                                    <span>{{date('F j, Y', strtotime($blog->created_at))}}</span>
                                </div>

                            </div>
                            @endforeach
                        </div>
                        <!--recent post end-->
                    </aside>

                    <!--blog sidebar start-->
                </div>
            </div>
        </div>
    </div>
    <!--blog section area end-->
    <hr>
    @endsection

{{--@section('content')--}}
{{--    <!--breadcrumbs area start-->--}}
{{--    <div class="breadcrumbs_area">--}}
{{--        <div class="container">--}}
{{--            <div class="row">--}}
{{--                <div class="col-12">--}}
{{--                    <div class="breadcrumb_content">--}}
{{--                        <ul>--}}
{{--                            <li><a href="{{route('/')}}">home</a></li>--}}
{{--                            <li>blog details</li>--}}
{{--                        </ul>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--    <!--breadcrumbs area end-->--}}

{{--    <!--blog body area start-->--}}
{{--    <div class="blog_details mt-50 mb-50">--}}
{{--        <div class="container">--}}
{{--            <div class="row">--}}

{{--                <div class="col-lg-12 col-md-12">--}}
{{--                    <!--blog grid area start-->--}}
{{--                    <div class="blog_details_wrapper">--}}
{{--                        <div class="single_blog mb-50">--}}
{{--                            <div class="blog_title">--}}
{{--                                <h2><a href="#">{{ $blog->header}}</a></h2>--}}
{{--                                <div class="blog_post">--}}
{{--                                    <ul>--}}
{{--                                        <li class="post_author">Posts by : {{ $blog->author}}</li>--}}
{{--                                        <li class="post_date">{{date('j-F-Y', strtotime($blog->created_at))}}</li>--}}
{{--                                    </ul>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="blog_thumb">--}}
{{--                                <a href="#"><img src="{{asset($blog->image) }}" alt="" style="width: 100%"></a>--}}
{{--                            </div>--}}
{{--                            <div class="blog_content">--}}
{{--                                <div class="post_content">--}}
{{--                                    <p>{!!($blog->description)!!}</p>--}}
{{--                                </div>--}}
{{--                                <div class="entry_content">--}}


{{--                                    <div class="social_sharing">--}}
{{--                                        <p>share this post:</p>--}}
{{--                                        <ul>--}}
{{--                                            <li><a href="#" title="facebook"><i class="fa fa-facebook"></i></a></li>--}}
{{--                                            <li><a href="#" title="twitter"><i class="fa fa-twitter"></i></a></li>--}}
{{--                                            <li><a href="#" title="pinterest"><i class="fa fa-pinterest"></i></a></li>--}}
{{--                                            <li><a href="#" title="google+"><i class="fa fa-google-plus"></i></a></li>--}}
{{--                                            <li><a href="#" title="linkedin"><i class="fa fa-linkedin"></i></a></li>--}}
{{--                                        </ul>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="related_posts">--}}
{{--                                <h3>Related posts</h3>--}}
{{--                                <div class="row">--}}

{{--                                    @foreach($blogs as $blog)--}}
{{--                                    <div class="col-lg-4 col-md-6">--}}
{{--                                        <div class="single_related">--}}
{{--                                            <div class="related_thumb">--}}
{{--                                                <img src="{{asset($blog->image) }}" alt="">--}}
{{--                                            </div>--}}
{{--                                            <div class="related_content">--}}
{{--                                                <h4><a href="{{route('blog-details',['slug'=>$blog->slug])}}">{{ $blog->header}}</a></h4>--}}
{{--                                                <span><i class="fa fa-calendar" aria-hidden="true"></i> {{date('j-F-Y', strtotime($blog->created_at))}} </span>--}}
{{--                                                <p>{!! substr($blog->description,0,350) !!}...</p>--}}
{{--                                                <a class="btn btn-outline-warning" href="{{route('blog-details',['slug'=>$blog->slug])}}">Read More</a>--}}
{{--                                            </div>--}}
{{--                                        </div>--}}
{{--                                    </div>--}}
{{--                                    @endforeach--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}


{{--                    </div>--}}
{{--                    <!--blog grid area start-->--}}
{{--                </div>--}}

{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
{{--    <!--blog section area end-->--}}
{{--@endsection--}}
