@extends('admin.master')
@section('title')
    Flash Sale Product
@endsection
@section('content')

    <!-- ========================================================= -->
    <div class="content-header">
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
                            <table id="basic-table" class="data-table table table-striped nowrap table-hover" cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <th>Sl No</th>
                                    <th>Campaign Name</th>
                                    <th>Campaign Date</th>
                                    <th>Campaign time</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>

                                <?php $i = 1; ?>
                                @foreach($flashSales as $flashSale)
                                    <tr>
                                        <td>{{ $i }}</td>
                                        <td>{{$flashSale->cam_name}}</td>
                                        <td>{{$flashSale->cam_date}}</td>
                                        <td>{{$flashSale->cam_time}}</td>
                                        <td>
                                            <a href="{{ route('flash-sale-edit',['id'=>$flashSale->id]) }}" class="btn btn-primary btn-xs" title="Edit Product">
                                                <span class="glyphicon glyphicon-edit"></span>
                                            </a>
                                            <a href="{{ url('/delete-flash-sale/'.$flashSale->id) }}" class="btn btn-danger btn-xs" title="Delete Product" onclick="return confirm('Are You Sure Delete This');">
                                                <span class="glyphicon glyphicon-trash"></span>
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
