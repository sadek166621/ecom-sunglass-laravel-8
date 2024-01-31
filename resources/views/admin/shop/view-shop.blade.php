@extends('admin.master')
@section('title')
    Brand
@endsection
@section('content')

    <!-- ========================================================= -->
    <div class="content-header">
        <!-- leftside content header -->
        <div class="leftside-content-header">
            <ul class="breadcrumbs">
                <li><i class="fa fa-table" aria-hidden="true"></i><a href="">View Upload request shopping list</a></li>
                <li><a>Data-table</a></li>
            </ul>
        </div>
    </div>
    <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Add Slider
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
                                <th>Phone No.</th>
                                <th>Shop image</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                            <?php $i=1 ?>
                            @foreach($shops as $shop)

                                <tr>
                                    <td>{{$i}}</td>
                                    <td>{{$shop->phone}}</td>
                                    <td><img src="{{ $shop->image }}" width="100px" height="100px"></td>
                                    <td>
{{--                                        <a href="{{route('view-slider',['id'=>$shop->id])}}" class="btn btn-primary btn-xs" title="view">--}}
{{--                                            <span class="glyphicon glyphicon-eye-open"></span>--}}
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
 @endsection
