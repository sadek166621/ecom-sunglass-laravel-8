@extends('admin.master')
@section('title')
    Product
@endsection
@section('style')
    .persent{
        display: none;
    }
    .fixed-dis{
        display: none;
    }
    .dis_pri{
        display: none;
    }
    label span{
    color: red;
    font-size: 20px;
    }
    @endsection
@section('content')

    <!-- ========================================================= -->
    <div class="content-header" >
        <!-- leftside content header -->
        <div class="leftside-content-header">
            <ul class="breadcrumbs">
                <li><i class="fa fa-columns" aria-hidden="true"></i><a href="#">Product</a></li>
                <li><a>Page</a></li>
            </ul>
        </div>
    </div>
    <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
    <div class="row animated fadeInUp">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-content">
                    <div class="row">
                        <div class="col-sm-12">
                            <h3 class=" text-bold text-center text-success">{{session('message')}}</h3>
                            <h3 class="text-center text-italic">Add Products Form</h3>
                            <form action="{{ route('new-product') }}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Category Name <span>*</span></label>
                                    <div class="col-sm-10">
                                        <select name="category_id[]" id="category_id" class="form-control my-select" multiple="multiple" data-live-search="true">
                                            @foreach($categories as $category)
                                                <option value="{{$category->id}}">{{$category->category_name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row" id="sub_category_name">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Sub Category Name</label>
                                    <div class="col-sm-10">
                                        <select name="sub_category_id[]" id="sub_category_id" class="form-control my-select" multiple="multiple" data-live-search="true">
                                            <option value="">Select sub Category</option>
                                            @foreach($subCategories as $subCategory)
                                                <option value="{{ $subCategory->id}}">{{$subCategory->sub_category_name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Brand Name </label>
                                    <div class="col-sm-10">
                                        <select name="brand_id" id="brand_id" class="form-control">
                                            <option value="">Select Brand</option>
                                            @foreach($brands as $brand)
                                                <option value="{{ $brand->id}}">{{ $brand->brand_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Color Name <span>*</span></label>
                                    <div class="col-sm-10">
                                        <select name="color_id[]" id="color_id" class="form-control select2" multiple="multiple" data-placeholder="Select Color">
                                            @foreach($colors as $color)
                                                <option value="{{ $color->id}}">{{ $color->color_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Size Name <span>*</span></label>
                                    <div class="col-sm-10">
                                        <select name="size_id[]" id="size_id" class="form-control select2" multiple="multiple" data-placeholder="Select Size">
                                            <option value="">Select Size</option>
                                            @foreach($sizes as $size)
                                                <option value="{{ $size->id}}">{{ $size->size_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Supplier Name</label>
                                    <div class="col-sm-10">
                                        <select name="supplier_id" id="supplier_id" class="form-control">
                                            <option value="">--Select Supplier--</option>
                                            @foreach($suppliers as $supplier)
                                                <option value="{{ $supplier->id}}">{{ $supplier->supplier_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product Title <span>*</span></label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="product_name" id="product_name">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Url</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="slug" id="slug">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product code </label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="product_code" id="product_code">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputEmail3"  class="col-sm-2 control-label text-center">Product Regular Price <span>*</span></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="product_price" class="form-control" id="price" placeholder="">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputEmail3"  class="col-sm-2 control-label text-center">Discount</label>
                                    <div class="col-sm-10">
                                        <input type="radio" name="discount" class="open"> Percentage
                                        <input type="radio" name="discount" class="fix"> Fixed
                                    </div>
                                </div>
                                <div class="form-group row persent">
                                    <label for="inputEmail3"  class="col-sm-2 control-label text-center">Discount Percentage</label>
                                    <div class="col-sm-10">
                                        <input type="text" value="" onkeyup="discount_Percentage();" name="discount_product_amount" class="form-control" id="percentage" placeholder="">
                                    </div>
                                </div>
                                <div class="form-group row fixed-dis">
                                    <label for="inputEmail3"  class="col-sm-2 control-label text-center">fixed Discount Amount</label>
                                    <div class="col-sm-10">
                                        <input type="text" value="" onkeyup="discount_price();" name="discount_product_amount" class="form-control" id="product_discount_amount" placeholder="">
                                    </div>
                                </div>
                                <div class="form-group row dis_pri">
                                    <label for="inputEmail3"  class="col-sm-2 control-label text-center">Discount Price</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="discount_product_price" class="form-control" id="product_discount_price" placeholder="" readonly>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product Cost </label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="product_cost" id="product_cost">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product Highlight</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="product_highlight" id="product_highlight">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product Stock <span>*</span></label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="product_stock" id="product_stock">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product Made By </label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="product_made_by" id="product_made_by">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Short Description <span>*</span></label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control summernote" rows="6" name="short_description" placeholder="" id=""></textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Long Description </label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control summernote" rows="6" name="description" placeholder="" id=""></textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product Main Image <span>*</span></label>
                                    <div class="col-sm-10">
                                        <input type="file" name="main_image" onchange="document.getElementById('mainImage').src = window.URL.createObjectURL(this.files[0])" accept="image/*">
                                        <img id="mainImage" alt="product main image" width="100" height="100" />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product Second Main Image <span>*</span></label>
                                    <div class="col-sm-10">
                                        <input type="file" name="second_image" onchange="document.getElementById('secondMainImage').src = window.URL.createObjectURL(this.files[0])" accept="image/*">
                                        <img id="secondMainImage" alt="product main image" width="100" height="100" />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product sub Image <span>*</span></label>
                                    <div class="col-sm-10">
                                        <input type="file" name="sub_image[]" onchange="document.getElementById('preview').src = window.URL.createObjectURL(this.files[0])" multiple="" accept="image/*">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Best Seller</label>
                                    <div class="col-sm-10">
                                        <input type="radio" name="best_selling" value="1" checked> Show  	&nbsp; 	&nbsp; 	&nbsp;
                                        <input type="radio" name="best_selling" value="0"> Hide<br>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">New Arrival</label>
                                    <div class="col-sm-10">
                                        <input type="radio" name="new_arrival" value="1" checked> Show  	&nbsp; 	&nbsp; 	&nbsp;
                                        <input type="radio" name="new_arrival" value="0"> Hide<br>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Featured</label>
                                    <div class="col-sm-10">
                                        <input type="radio" name="featured" value="1" checked> Show  	&nbsp; 	&nbsp; 	&nbsp;
                                        <input type="radio" name="featured" value="0"> Hide<br>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Trending products</label>
                                    <div class="col-sm-10">
                                        <input type="radio" name="trending" value="1" checked> Show  	&nbsp; 	&nbsp; 	&nbsp;
                                        <input type="radio" name="trending" value="0"> Hide<br>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Special Offer </label>
                                    <div class="col-sm-10">
                                        <input type="radio" name="Special_Offer" value="1" checked> Show  	&nbsp; 	&nbsp; 	&nbsp;
                                        <input type="radio" name="Special_Offer" value="0"> Hide<br>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Publication Status</label>
                                    <div class="col-sm-10">
                                        <input type="radio" name="publication_status" value="1" checked> Published  	&nbsp; 	&nbsp; 	&nbsp;
                                        <input type="radio" name="publication_status" value="0"> UnPublished<br>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Orginal product link</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="orginal_product_link" id="orginal_product_link">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Youtube Link</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="youtube_link" id="youtube_link">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center"></label>
                                    <div class="col-sm-10">
                                        <input type="submit" class="btn btn-block btn-primary btn-light px-5" value="submit">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= -->
    <script>
        function selectSubCategory(category_name) {
            var xmlHttp = new XMLHttpRequest();
            var serverPage='./select-sub-category/'+category_name;
            xmlHttp.open("GET", serverPage);
            xmlHttp.onreadystatechange = function() {
                if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                    document.getElementById("sub_category_name").innerHTML = xmlHttp.responseText;
                }
            }
            xmlHttp.send(null);
        }
    </script>


    <script>
        function previewImages() {
            var preview = document.querySelector('#preview');
            if (this.files) {
                [].forEach.call(this.files, readAndPreview);
            }
            function readAndPreview(file) {
                // Make sure `file.name` matches our extensions criteria
                if (!/\.(jpe?g|png|gif)$/i.test(file.name)) {
                    return alert(file.name + " is not an image");
                } // else...
                var reader = new FileReader();
                reader.addEventListener("load", function() {
                    var image = new Image();
                    image.height = 100;
                    image.title  = file.name;
                    image.src    = this.result;
                    preview.appendChild(image);
                });
                reader.readAsDataURL(file);
            }
        }
        document.querySelector('#file-input').addEventListener("change", previewImages);
    </script>

@endsection
