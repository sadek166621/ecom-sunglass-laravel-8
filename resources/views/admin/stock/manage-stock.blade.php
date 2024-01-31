@extends('admin.master')
@section('title')
    Manage Stock
@endsection
@section('content')

    <!-- ========================================================= -->
    <div class="content-header">
        <!-- leftside content header -->
        <div class="leftside-content-header">
            <ul class="breadcrumbs">
                <li><i class="fa fa-table" aria-hidden="true"></i><a href="#">Stock</a></li>
                <li><a>Data-table</a></li>
            </ul>
        </div>
    </div>
    <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
    <!--SEARCHING, ORDENING & PAGING-->
    <div class="row animated fadeInRight">
        <div class="col-sm-12">
            <div class="panel">
                <div class="panel-content">
                    <div class="table-responsive">
                        <h4 class="text-center">{{Session::get('message')}}</h4>
                        <h5 class="mb-md text-center">Stock Manage Table</h5>
                        <table id="basic-table" class="data-table table table-striped nowrap table-hover" cellspacing="0" width="100%">
                            <thead>
                            <tr>
                                <th>Sl No</th>
                                <th>Product Name</th>
                                <th>Product code</th>
                                <th>Product cost</th>
                                <th>Product size</th>
                                <th>Stock Amount</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                            <?php $i = 1; ?>
                            @foreach($allPublishedProducts as $allPublishedProduct)
                                <tr>
                                    <td>{{ $i }}</td>
                                    <td>{{ $allPublishedProduct->product_name }}</td>
                                    <td>{{ $allPublishedProduct->product_code }}</td>
                                    <td>TK. {{ $allPublishedProduct->product_cost }}</td>
                                    <td>TK. {{ $allPublishedProduct->product_price }}</td>
                                    @if($allPublishedProduct->product_stock > 5)
                                        <td>{{ $allPublishedProduct->product_stock }}</td>
                                    @else
                                        <td class="text-danger"><h4 style="color: red">{{ $allPublishedProduct->product_stock }}</h4></td>
                                    @endif
                                    <td class="center">
                                        <a href="{{ url('/edit-stock/'.$allPublishedProduct->id) }}" class="btn btn-primary btn-xs" title="Edit Stock">
                                            <span class="glyphicon glyphicon-edit"></span>
                                        </a>
                                    </td>
                                </tr>
                                <?php $i++; ?>
                            @endforeach

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
