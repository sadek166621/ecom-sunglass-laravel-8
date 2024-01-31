@extends('admin.master')
@section('title')
    Category
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

    <!--SEARCHING, ORDENING & PAGING-->
    <div class="row animated fadeInRight">
        <div class="col-sm-12">
            <h5 class="mb-md text-success text-center">{{session('message')}}</h5>
            <div class="panel">
                <div class="panel-content">
                    <form name="editForm" action="{{ route('update') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <h5 class="mb-md text-success">{{session('message')}}</h5>
                        <div class="form-group">
                            <label for="">Shipping Division</label>
                            <select class="form-control" name="division_id">
                                @foreach($divisions as $division)
                                    <option value="{{ $division->id }}">{{ $division->division }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">Shipping Area</label>
                            <input type="hidden"  name="id" value="{{$shipping->id}}">
                            <input type="text" class="form-control" name="state" value="{{$shipping->state}}" id="" placeholder="" required>
                        </div>
                        <div class="form-group">
                            <label for="">Shipping rate</label>
                            <input type="text" class="form-control" name="rate" value="{{$shipping->rate}}" id="" placeholder="" required>
                        </div>
                        <div class="form-group">
                            <label for="">Publication Status</label>&nbsp; 	&nbsp;&nbsp; 	&nbsp;
                            <input type="radio" name="publication_status" value="1" {{ $shipping->publication_status==1? 'checked' :'' }}> Published  	&nbsp; 	&nbsp; 	&nbsp;
                            <input type="radio" name="publication_status" value="0" {{ $shipping->publication_status==0? 'checked' :'' }}> UnPublished<br>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>
        document.forms['editForm'].elements['division_id'].value = '{{ $shipping->division_id }}';
    </script>

@endsection


