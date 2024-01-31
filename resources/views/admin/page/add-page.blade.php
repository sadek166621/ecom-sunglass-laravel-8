@extends('admin.master')
@section('title')
    Page
@endsection
@section('content')

    <!-- ========================================================= -->
    <div class="content-header">
        <!-- leftside content header -->
        <div class="leftside-content-header">
            <ul class="breadcrumbs">
                <li><i class="fa fa-table" aria-hidden="true"></i><a href="">Page</a></li>
                <li><a>Data-table</a></li>
            </ul>
        </div>
    </div>
    <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Add Page
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
                                <th>Si no</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>

                            </thead>
                            <tbody>
                            @php($i=1)
                            @foreach($page as $page)

                                <tr>
                                    <td>{{$i}}</td>
                                    <td>{!! substr($page->description,0,50) !!}</td>
                                    <td>{{$page->publication_status==1 ? 'Published':'Unpublished'}}</td>
                                    <td>
                                        <a href="{{route('view-page',['id'=>$page->id])}}" class="btn btn-primary btn-xs" title="view">
                                            <span class="glyphicon glyphicon-zoom-in"></span>
                                        </a>
                                        @if($page->publication_status==1)

                                            <a href="{{route('published-page',['id'=>$page->id])}}" class="btn btn-success btn-xs" title="Published">
                                                <span class="glyphicon glyphicon-arrow-down"></span>
                                            </a>
                                        @else
                                            <a href="{{route('unpublished-page',['id'=>$page->id])}}" class="btn btn-warning btn-xs" title="UnPublished">
                                                <span class="glyphicon glyphicon-arrow-up"></span>
                                            </a>
                                        @endif
                                        <a href="{{route('edit-page',['id'=>$page->id])}}" class="btn btn-primary btn-xs" title="edit">
                                            <span class="glyphicon glyphicon-edit"></span>
                                        </a>
                                        <a href="{{route('delete-page',['id'=>$page->id])}}" class="btn btn-danger btn-xs" onclick="return confirm('Are you sure to Delete this!!')" title="delete">
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
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <h4 class="text-center font-weight-bold" style="color: #126F5C"><i>Add about form</i></h4>
                {{--                <button type="button" class="close" data-dismiss="modal" aria-label="Close">--}}
                <div class="modal-body">
                    <form class="form-horizontal" action="{{ route('new-page') }}" method="post" enctype="multipart/form-data">
                        @csrf

                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Description</label>
                            <div class="col-sm-10">
                                <textarea type="text" class="form-control summernote" name="description" id="" placeholder=" Description"></textarea>

                            </div>
                        </div>


                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Shipping & Returns</label>
                            <div class="col-sm-10">
                                <input type="radio" name="shipping_returns" value="1" > Show  	&nbsp; 	&nbsp; 	&nbsp;
                                <input type="radio" name="shipping_returns" value="0" checked> Hide<br>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Secure Shopping</label>
                            <div class="col-sm-10">
                                <input type="radio" name="secure_shopping" value="1" > Show  	&nbsp; 	&nbsp; 	&nbsp;
                                <input type="radio" name="secure_shopping" value="0" checked> Hide<br>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Creative</label>
                            <div class="col-sm-10">
                                <input type="radio" name="creative" value="1" > Show  	&nbsp; 	&nbsp; 	&nbsp;
                                <input type="radio" name="creative" value="0" checked> Hide<br>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Delivery Information</label>
                            <div class="col-sm-10">
                                <input type="radio" name="delivery_information" value="1" > Show  	&nbsp; 	&nbsp; 	&nbsp;
                                <input type="radio" name="delivery_information" value="0" checked> Hide<br>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Privacy Policy</label>
                            <div class="col-sm-10">
                                <input type="radio" name="privacy_policy" value="1" > Show  	&nbsp; 	&nbsp; 	&nbsp;
                                <input type="radio" name="privacy_policy" value="0" checked> Hide<br>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Conditions</label>
                            <div class="col-sm-10">
                                <input type="radio" name="conditions" value="1" > Show  	&nbsp; 	&nbsp; 	&nbsp;
                                <input type="radio" name="conditions" value="0" checked> Hide<br>
                            </div>
                        </div><div class="form-group">
                            <label for="" class="col-sm-2 control-label">Frequently Questions</label>
                            <div class="col-sm-10">
                                <input type="radio" name="frequently_questions" value="1" > Show  	&nbsp; 	&nbsp; 	&nbsp;
                                <input type="radio" name="frequently_questions" value="0" checked> Hide<br>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="publicationStatus" class="col-sm-2 control-label">publication Status</label>
                            <div class="col-sm-10">
                                <input type="radio" name="publication_status" value="1" checked> Published  	&nbsp; 	&nbsp; 	&nbsp;
                                <input type="radio" name="publication_status" value="0"> UnPublished<br>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-success btn-block">Save Slider</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
