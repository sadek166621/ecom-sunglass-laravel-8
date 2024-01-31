@extends('admin.master')
@section('title')
    Flash Sale Product
@endsection
@section('style')
    .price2{
    display: none;
    }
@endsection
@section('content')

    <!-- ========================================================= -->
    <div class="content-header" >
        <!-- leftside content header -->
        <div class="leftside-content-header">
            <ul class="breadcrumbs">
                <li><i class="fa fa-table" aria-hidden="true"></i><a href="#">Products</a></li>
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
                    <div class="table-responsive">
                        <h4 class="text-center">{{Session::get('message')}}</h4>
                        <form action="{{ route('flash-sale.store') }}" method="post">
                            @csrf
                            <div class="form-group col-md-8">
                                <label for="inputAddress">Campaign</label>
                                <input type="text" class="form-control" name="cam_name"  placeholder="Campaign Name">
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-2">
                                    <label for="">Date</label>
                                    <input type="date" class="form-control" name="cam_date">
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="inputPassword4">Time</label>
                                    <input type="time" class="form-control" name="cam_time" step="2" style="margin-bottom: 30px">
                                </div>
                                <hr>
                            </div>
                            <table id="basic-table" class="data-table table table-striped nowrap table-hover" cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <th>Sl No</th>
                                    <th>Product Name</th>
                                    <th>Product Cost</th>
                                    <th>Product Price</th>
                                    <th>Product Discount Price</th>
                                    <th>Stock Amount</th>
{{--                                    <th>Flash Sale price</th>--}}
                                    <th>Flash Sale Item</th>

                                </tr>
                                </thead>
                                <tbody>

                                <?php $i = 1; ?>
                                @foreach($allPublishedProducts as $allPublishedProduct)
                                    <tr>
                                        <td>{{ $i }}</td>
                                        <td>{{ substr($allPublishedProduct->product_name,0, 30) }}</td>
                                        <td>TK. {{ $allPublishedProduct->product_cost }}</td>
                                        <td>TK. {{ $allPublishedProduct->product_price }}</td>
                                        <td>TK. {{ $allPublishedProduct->discount_product_price }}</td>
                                        <td>{{ $allPublishedProduct->product_stock }}</td>

                                        <td>
                                            <input type="checkbox" name="flash_sale_item[]" class="open2" value="{{ $allPublishedProduct->id }}">
{{--                                            <input type="hidden" name="product_id[]" value="{{ $allPublishedProduct->id }}">--}}
                                        </td>
{{--                                        <td><input type="text" name="flash_sale_price[]" class="price2"></td>--}}
                                    </tr>
                                    <?php $i++; ?>
                                @endforeach

                                </tbody>
                            </table>
                            <button type="submit" class="btn btn-primary btn-block" style="margin-bottom: 20px">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
