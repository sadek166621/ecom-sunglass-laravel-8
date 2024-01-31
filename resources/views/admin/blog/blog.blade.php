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
    <a href="{{ route('blog.create') }}" class="btn btn-primary">
        Add Blog
    </a>

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
                                <th>title</th>
                                <th>url</th>
                                <th>image</th>
                                <th>author</th>
                                <th>Date</th>
                                <th>Publication Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $i=1 ?>
                            @foreach($blogs as $blog)

                                <tr>
                                    <td>{{$i}}</td>
                                    <td>{{$blog->blog_category_name }}</td>
                                    <td>{{$blog->header }}</td>
                                    <td>{{$blog->slug }}</td>
                                    <td><img src="{{ asset($blog->image) }}" style="height: 50px; width: 80px" alt=""></td>
                                    <td>{{$blog->author }}</td>
                                    <td>{{ date('j-F-Y h:i A', strtotime($blog->created_at)) }}</td>
                                    <td>{{$blog->publication_status==1 ? 'Published':'Unpublished'}}</td>
                                    <td>
                                        @if($blog->publication_status==1)
                                            <a href="{{route('blog.publication',['id'=>$blog->id])}}" class="btn btn-success btn-xs" title="Published">
                                                <span class="glyphicon glyphicon-arrow-up"></span>
                                            </a>
                                        @else
                                            <a href="{{route('blog.publication',['id'=>$blog->id])}}" class="btn btn-warning btn-xs" title="UnPublished">
                                                <span class="glyphicon glyphicon-arrow-down"></span>
                                            </a>
                                        @endif
                                            <a href="{{route('blog.edit',['id'=>$blog->id]) }}" class="btn btn-primary btn-xs">
                                                <span class="glyphicon glyphicon-edit"></span>
                                            </a>
                                            <a href="{{route('blog.delete',['id'=>$blog->id]) }}" onclick="return confirm('Are you sure to Delete this!!')" title="delete" class="btn btn-danger btn-xs">
                                                <span class="glyphicon glyphicon-trash"></span>
                                            </a>
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
@endsection


