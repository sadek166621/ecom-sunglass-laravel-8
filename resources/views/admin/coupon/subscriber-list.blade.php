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
                <li><i class="fa fa-table" aria-hidden="true"></i><a href="#">Coupon</a></li>
                <li><a>Data-table</a></li>
            </ul>
        </div>
    </div>
    <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Add Coupon
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
                                <th>Email</th>
                                <th>Number</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $i=1 ?>
                            @foreach($subscribers as $subscriber)

                                <tr>
                                    <td>{{$i}}</td>
                                    <td>{{$subscriber->email}}</td>
                                    <td>{{$subscriber->number}}</td>
                                    <td>
                                        <a href="{{route('delete-subscriber',['id'=>$subscriber->id])}}" class="btn btn-danger btn-xs" onclick="return confirm('Are you sure to Delete this!!')" title="delete">
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


