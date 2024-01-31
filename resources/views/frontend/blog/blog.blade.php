@extends('frontend.master')
@section('title')
    blog
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
Blog
@endsection
@section('content')
    @include('frontend.include.banner')
    <div class="blog_area blog_page">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-12">
                    <!--blog grid area start-->
                    <div class="blog_grid_area">
                        <div class="row">
                            @foreach($blogs as $blog)
                            <div class="col-lg-6 col-md-6">
                                <div class="blog_grid">
                                    <div class="blog_thumb">
                                        <a href="blog-details.html"><img src="{{ asset($blog->image) }}" alt=""></a>
                                    </div>
                                    <div class="blog_content">
                                        <h3 class="post_title"><a href="{{route('blog-details',['slug'=>$blog->slug])}}">{{ $blog->header }}</a></h3>
                                        <div class="post_meta">
                                            <span><i class="ion-person"></i> Posted by </span>
                                            <span><a href="#">{{ $blog->author }}</a></span>
                                            <span>|</span>
                                            <span><i class="fa fa-calendar" aria-hidden="true"></i>  Posted on  {{date('F j, Y', strtotime($blog->created_at))}}	</span>

                                        </div>
                                        <p class="post_desc">{!! substr($blog->description,300)>300? substr($blog->description,0,300).'...': substr($blog->description,0,300) !!}</p>
                                        <a class="read_more" href="{{route('blog-details',['slug'=>$blog->slug])}}">read more</a>

                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>

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
                        <div class="sidebar_widget recent_post"></div>
                        <!--recent post end-->

                    </aside>

                    <!--blog sidebar start-->
                </div>
            </div>
        </div>
    </div>
    <!--blog section area end-->
    <div class="shop_toolbar t_bottom">
        <div class="pagination">
            {{ $blogs->links() }}
        </div>
    </div>
@endsection
