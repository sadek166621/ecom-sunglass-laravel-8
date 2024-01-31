@extends('admin.master')
@section('title')
    Edit Stock
@endsection
@section('content')

    <!-- ========================================================= -->
    <div class="content-header">
        <!-- leftside content header -->
        <div class="leftside-content-header">
            <ul class="breadcrumbs">
                <li><i class="fa fa-table" aria-hidden="true"></i><a href="#">Edit Stock </a></li>
                <li><a>Details</a></li>
            </ul>
        </div>
    </div>
    <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->


    <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
    <div class="row animated fadeInUp">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-content">
                    <div class="row">
                        <div class="col-sm-12">
                            <h3 class=" text-bold text-center text-success">{{session('message')}}</h3>
                            <h3 class="text-center text-italic">Edit Stock Info Goes Here</h3>
                            <form name="editOrderForm" class="form-horizontal" action="{{route('update-stock')}}" method="POST">
                                <div class="box-body">
                                    @csrf
                                    <div class="form-group">
                                        <label for="inputEmail3"  class="col-sm-2 control-label">Product Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="product_name" value="{{ $productById->product_name }}" readonly class="form-control" id="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3"  class="col-sm-2 control-label">Product Code</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="product_code" value="{{ $productById->product_code }}" readonly class="form-control" id="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3"  class="col-sm-2 control-label">Stock</label>
                                        <div class="col-sm-10">
                                            <input type="number" name="product_stock" value="{{ $productById->product_stock }}" class="form-control" id="">
                                            <input type="hidden" name="product_id" value="{{ $productById->id }}" class="form-control" id="">
                                        </div>
                                    </div>
                                </div><br>
                                <div class="box-footer">
                                    <label for="inputEmail3"  class="col-sm-2 control-label"></label>
                                    <div class="col-sm-10">
                                        <button type="submit" class="btn btn-info btn-block">Update Stock Info</button>
                                    </div>
                                </div><!-- /.box-footer -->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
