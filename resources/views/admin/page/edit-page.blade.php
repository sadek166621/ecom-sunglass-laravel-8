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
    <!--SEARCHING, ORDENING & PAGING-->
    <div class="row animated fadeInRight">
        <div class="col-md-12">
            <div class="panel" style="padding: 20px;">
                <div class="panel-content">
                    <div class="row">
                        <div class="col-sm-12 px-4">
                            <form class="form-horizontal" action="{{ route('update-page') }}" method="post" enctype="multipart/form-data">
                                @csrf

                                <div class="form-group">
                                    <label for="" class="col-sm-2 control-label">Title</label>
                                    <div class="col-sm-10">
                                        <input type="hidden" value="{{ $page->id }}" name="page_id" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="" class="col-sm-2 control-label">Description</label>
                                    <div class="col-sm-10">
                                        <textarea type="text" class="form-control summernote" name="description" id="" placeholder=" Description">{{$page->description}}</textarea>

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
        </div>
    </div>

@endsection



