@extends('admin.master')
@section('title')
    Lens Price
@endsection
@section('style')
    .status{
     display: none
    }
    .status2{
     display: none
    }
    @endsection
@section('content')

    <!-- ========================================================= -->
    <div class="content-header">
        <!-- leftside content header -->
        <div class="leftside-content-header" >
            <ul class="breadcrumbs">
                <li><i class="fa fa-table" aria-hidden="true"></i><a href="#">Sub Category</a></li>
                <li><a>Data-table</a></li>
            </ul>
        </div>
    </div>
    <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Add Lens Price
    </button>

    <!--SEARCHING, ORDENING & PAGING-->
    <div class="row animated fadeInRight">
        <div class="col-sm-12">
            <h5 class="mb-md text-success text-center">{{session('message')}}</h5>
            <div class="panel">
                <div class="panel-content">
                    <div class="table-responsive">
                        <table id="basic-table" class="data-table table table-striped nowrap table-hover" cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                <th>SL No.</th>
                                <th>Lens Price</th>
                                <th>Publication Status</th>
                            </tr>
                            </thead>
                            <tbody>

                            <?php $i=1 ?>
                            @foreach($lenses2 as $lens)

                                <tr>
                                    <td>{{$i}}</td>
                                    <td>{{$lens->lens_price}}</td>
                                    <td>{{$lens->publication_status==1 ? 'Published':'Unpublished'}}</td>
{{--                                    <td>--}}
{{--                                        @if($lens->publication_status==1)--}}

{{--                                            <a href="{{route('published-sub-category',['id'=>$lens->id])}}" class="btn btn-success btn-xs" title="Published">--}}
{{--                                                <span class="glyphicon glyphicon-arrow-up"></span>--}}
{{--                                            </a>--}}
{{--                                        @else--}}
{{--                                            <a href="{{route('unpublished-sub-category',['id'=>$lens->id])}}" class="btn btn-warning btn-xs" title="UnPublished">--}}
{{--                                                <span class="glyphicon glyphicon-arrow-down"></span>--}}
{{--                                            </a>--}}
{{--                                        @endif--}}
{{--                                        <a href="{{route('edit-sub-category',['id'=>$lens->id])}}" class="btn btn-primary btn-xs">--}}
{{--                                            <span class="glyphicon glyphicon-edit"></span>--}}
{{--                                        </a>--}}
{{--                                        <a href="{{route('delete-sub-category',['id'=>$lens->id])}}" class="btn btn-danger btn-xs" onclick="return confirm('Are you sure to Delete this!!')" title="delete">--}}
{{--                                            <span class="glyphicon glyphicon-trash"></span>--}}
{{--                                        </a>--}}
{{--                                    </td>--}}

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
                <h4 class="text-center font-weight-bold" style="color: #126F5C"><i>Add Sub Category form</i></h4>

                {{--                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--}}
                <div class="modal-body">
                    <form action="{{ route('lens-price.store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <h5 class="mb-md text-success">{{session('messageSubCategory')}}</h5>
                        <div class="form-group">
                            <label for="">Lens Power Status</label>&nbsp; 	&nbsp;&nbsp; 	&nbsp;
                            <input type="radio" name="status" value="With Power" id="WithPower"> With Power  	&nbsp; 	&nbsp; 	&nbsp;
                            <input type="radio" name="status" value="Without Power" id="WithOutPower"> Without Power<br>
                        </div>
                        <div class="form-group status">
                            <label for="">Select Lens</label>
                            <select class="form-control" name="lens_id" id="CategoryName">
                                <option value="">---Select Category---</option>
                                @foreach($lenses as $lens)
                                    <option value="{{$lens->id}}">{{$lens->lens_type}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group status">
                            <label for="">Lens Price</label>
                            <input type="text" name="lens_price" class="form-control" id="" placeholder="">
                        </div>
                        <div class="form-group status2">
                            <label for="">Lens Price</label>
                            <input type="text" name="lens_price" class="form-control" id="" placeholder="" >
                        </div>
                        <div class="form-group status">
                            <label for="">Publication Status</label>&nbsp; 	&nbsp;&nbsp; 	&nbsp;
                            <input type="radio" name="publication_status" value="1" checked> Published  	&nbsp; 	&nbsp; 	&nbsp;
                            <input type="radio" name="publication_status" value="0"> UnPublished<br>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
