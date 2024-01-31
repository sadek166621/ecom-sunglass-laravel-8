@extends('admin.master')
@section('title')
    Blog Category
@endsection
@section('content')

    <!-- ========================================================= -->
    <div class="content-header">
        <!-- leftside content header -->
        <div class="leftside-content-header">
            <ul class="breadcrumbs">
                <li><i class="fa fa-table" aria-hidden="true"></i><a href="#">Category</a></li>
                <li><a>Data-table</a></li>
            </ul>
        </div>
    </div>
    <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Add Blog Category
    </button>

    <!--SEARCHING, ORDENING & PAGING-->
    <div class="row animated fadeInRight">
        <div class="col-sm-12">
            <h5 class="mb-md text-success text-center">{{session('message')}}</h5>

            @foreach ($errors->all() as $message)
                {{ $message }}
            @endforeach



            <div class="panel">
                <div class="panel-content">
                    <div class="table-responsive">
                        <table id="basic-table" class="data-table table table-striped nowrap table-hover" cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                <th>SL No.</th>
                                <th>Category Name</th>
                                <th>Publication Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $i=1 ?>
                            @foreach($categories as $category)

                                <tr>
                                    <td>{{$i}}</td>
                                    <td>{{$category->blog_category_name }}</td>
                                    <td>{{$category->publication_status==1 ? 'Published':'Unpublished'}}</td>
                                    <td>
                                        @if($category->publication_status==1)
                                            <a href="{{route('publication-blog-category',['id'=>$category->id])}}" class="btn btn-success btn-xs" title="Published">
                                                <span class="glyphicon glyphicon-arrow-up"></span>
                                            </a>
                                        @else
                                            <a href="{{route('publication-blog-category',['id'=>$category->id])}}" class="btn btn-warning btn-xs" title="UnPublished">
                                                <span class="glyphicon glyphicon-arrow-down"></span>
                                            </a>
                                        @endif
                                        <a href="{{route('edit.blog.category',['id'=>$category->id]) }}" class="btn btn-primary btn-xs">
                                            <span class="glyphicon glyphicon-edit"></span>
                                        </a>
{{--                                        <a href="{{route('delete-category',['id'=>$category->id])}}" class="btn btn-danger btn-xs" onclick="return confirm('Are you sure to Delete this!!')" title="delete">--}}
{{--                                            <span class="glyphicon glyphicon-trash"></span>--}}
{{--                                        </a>--}}
                                    </td>

                                </tr>
                                <?php $i++ ?>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <h4 class="text-center font-weight-bold" style="color: #126F5C"><i>Add user form</i></h4>

                {{--                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--}}
                <div class="modal-body">
                    <form action="{{ route('blog.category.store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="">Blog Category</label>
                            <input type="text" class="form-control" name="blog_category_name" id="" placeholder="" required>
                        </div>
                        <div class="form-group">
                            <label for="">Publication Status</label>&nbsp; 	&nbsp;&nbsp; 	&nbsp;
                            <input type="radio" name="publication_status" value="1" checked> Published  	&nbsp; 	&nbsp; 	&nbsp;
                            <input type="radio" name="publication_status" value="0"> UnPublished<br>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection


