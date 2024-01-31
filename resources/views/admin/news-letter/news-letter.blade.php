@extends('admin.master')
@section('title')
    Contract
@endsection
@section('content')

    <!-- ========================================================= -->
    <div class="content-header">
        <!-- leftside content header -->
        <div class="leftside-content-header">
            <ul class="breadcrumbs">
                <li><i class="fa fa-table" aria-hidden="true"></i><a href="">Contract</a></li>
                <li><a>Data-table</a></li>
            </ul>
        </div>
    </div>
    <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Add Contract
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
                                <th>Email Address</th>
{{--                                <th>Action</th>--}}
                            </tr>
                            </thead>
                            <tbody>

                            <?php $i=1 ?>
                            @foreach($newsLetters as $newsLetter)

                                <tr>
                                    <td>{{$i}}</td>
                                    <td>{{$newsLetter->email}}</td>
{{--                                    <td class="center">--}}
{{--                                        <a href="{{ url('/delete-contact/'.$newsLetter->id) }}" class="btn btn-danger btn-xs" title="Delete contact" onclick="return confirm('Are You Sure Delete This');">--}}
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
@endsection
