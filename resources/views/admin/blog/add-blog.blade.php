@extends('admin.master')
@section('title')
    Blog
@endsection
@section('content')

    <!-- ========================================================= -->
    <div class="content-header">
        <!-- leftside content header -->
        <div class="leftside-content-header">
            <ul class="breadcrumbs">
                <li><i class="fa fa-table" aria-hidden="true"></i><a href="">Blog</a></li>
                <li><a>Data-table</a></li>
            </ul>
        </div>
    </div>

    <!--SEARCHING, ORDENING & PAGING-->
    <div class="row animated fadeInRight">
        <div class="col-sm-12">
{{--            <h5 class="mb-md text-success text-center">{{session('message')}}</h5>--}}
            <div class="panel">
                <div class="panel-content">
                    <form class="form-horizontal" action="{{ route('blog.store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Blog Category</label>
                            <div class="col-sm-10">
                                <select name="blog_category_id" id="" class="form-control">
                                    <option> --- please select a Category ---</option>
                                    @foreach($categories as $category)
                                    <option value="{{ $category->id }}">{{ $category->blog_category_name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Title</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="header" id="" placeholder="Blog Title">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Url</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="slug" id="" placeholder="Blog Url">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Description</label>
                            <div class="col-sm-10">
                                <textarea type="text" class="form-control summernote" name="description" id="" placeholder=" Description"></textarea>

                            </div>
                        </div>

                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Image</label>
                            <div class="col-sm-10">
                                <input type="file" name="image" onchange="document.getElementById('img').src = window.URL.createObjectURL(this.files[0])" accept="image/*">
                                <img id="img" src="" alt="" style="height: 50px; width: 50px">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Author</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="author" id="" placeholder="author">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="publicationStatus" class="col-sm-2 control-label">publication Status</label>
                            <div class="col-sm-10">
                                <input type="radio" name="publication_status" value="1" checked> Published  	&nbsp; 	&nbsp; 	&nbsp;
                                <input type="radio" name="publication_status" value="0"> UnPublished<br>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-success btn-block">Save Blog</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
