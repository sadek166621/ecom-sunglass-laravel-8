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
                    <form name="editForm" action="{{ route('update-coupon') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <h5 class="mb-md text-success">{{session('message')}}</h5>
                        <div class="form-group">
                            <label for="">Coupon Code</label>
                            <input type="hidden" name="id" value="{{ $coupon->id }}">
                            <input type="text" class="form-control" name="coupon_code" value="{{ $coupon->coupon_code }}" id="" placeholder="" required>
                        </div>
                        <div class="form-group">
                            <label for="">Discount Type</label>
                            <select class="form-control" name="discount_type">
                                <option value="Fixed">Fixed</option>
                                <option value="Percent">Percent</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">Amount</label>
                            <input type="text" class="form-control" name="amount" value="{{ $coupon->amount }}" id="" placeholder="" required>
                        </div>
                        <div class="form-group">
                            <label for="">Cart value</label>
                            <input type="text" class="form-control" name="cart_value" value="{{ $coupon->cart_value }}" id="" placeholder="" required>
                        </div>
                        <div class="form-group">
                            <label for="">Publication Status</label>&nbsp; 	&nbsp;&nbsp; 	&nbsp;
                            <input type="radio" name="publication_status" value="1" {{ $coupon->publication_status ==1 ? 'checked': '' }}> Published  	&nbsp; 	&nbsp; 	&nbsp;
                            <input type="radio" name="publication_status" value="0" {{ $coupon->publication_status ==0 ? 'checked': '' }}> UnPublished<br>
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
        document.forms['editForm'].elements['discount_type'].value = '{{ $coupon->discount_type }}';
    </script>
@endsection


