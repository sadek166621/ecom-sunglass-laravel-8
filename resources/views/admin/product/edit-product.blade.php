@extends('admin.master')
@section('title')
    Category
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
    <div class="content-header">
        <!-- leftside content header -->
        <div class="leftside-content-header">
            <ul class="breadcrumbs">
                <li><i class="fa fa-columns" aria-hidden="true"></i><a href="#">Category</a></li>
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
                            <h3 class="text-center text-italic">Edit Products Form</h3>
                            <form name="editProductForm" action="{{ route('update-product') }}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Category Name <span>*</span></label>
                                    <div class="col-sm-10">
                                        <select name="category_id[]" id="category_id" class="form-control my-select" multiple="multiple" data-live-search="true">
                                            @foreach($categories as $category)
{{--                                                <option value="{{$category->id}}">{{$category->category_name}}</option>--}}
                                                <option value="{{ $category->id}}" {{ (@in_array(['category_id'=>$category->id],$productCategories))? 'selected': '' }}>{{ $category->category_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row" id="sub_category_name">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Sub Category Name</label>
                                    <div class="col-sm-10">
                                        <select name="sub_category_id[]" id="sub_category_id" class="form-control my-select" multiple="multiple" data-live-search="true"><option value="">Select sub Category</option>
                                            @foreach($subCategories as $subCategory)
{{--                                                <option value="{{ $subCategory->id}}">{{$subCategory->sub_category_name}}</option>--}}
                                                <option value="{{ $subCategory->id}}" {{ (@in_array(['sub_category_id'=>$subCategory->id],$productSubCategories))? 'selected': '' }}>{{ $subCategory->sub_category_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Brand Name</label>
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
                                                <option value="{{ $color->id}}" {{ (@in_array(['color_id'=>$color->id],$productColors))? 'selected': '' }}>{{ $color->color_name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Size Name</label>
                                    <div class="col-sm-10">
                                        <select name="size_id[]" id="size_id" class="form-control select2" multiple="multiple" data-placeholder="Select Size">
                                            <option value="">Select Size</option>
                                            @foreach($sizes as $size)
                                                <option value="{{ $size->id}}" {{ (@in_array(['size_id'=>$size->id],$productSizes))? 'selected': '' }}>{{ $size->size_name }}</option>
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
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" value="{{ $productById->product_name }}" name="product_name" id="product_name">
                                        <input type="hidden" value="{{ $productById->id }}" name="product_id" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Url</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" value="{{ $productById->slug }}" name="slug" id="slug">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product code</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" value="{{ $productById->product_code }}" name="product_code" id="product_code">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputEmail3"  class="col-sm-2 control-label text-center">Product Regular Price</label>
                                    <div class="col-sm-10">
                                        <input type="text" value="{{ $productById->product_price }}" name="product_price" class="form-control" id="price" placeholder="">
                                    </div>
                                </div><div class="form-group row">
                                    <label for="inputEmail3"  class="col-sm-2 control-label text-center">Discount</label>
                                    <div class="col-sm-10">
                                        <input type="radio" name="discount" class="open"> Percentage
                                        <input type="radio" name="discount" class="fix"> Fixed
                                    </div>
                                </div>
                                <div class="form-group row persent">
                                    <label for="inputEmail3"  class="col-sm-2 control-label text-center">Discount Percentage</label>
                                    <div class="col-sm-10">
                                        <input type="text" value="{{ $productById->discount_product_amount }}" onkeyup="discount_Percentage();" name="discount_product_amount" class="form-control" id="percentage" placeholder="">
                                    </div>
                                </div>
                                <div class="form-group row fixed-dis">
                                    <label for="inputEmail3"  class="col-sm-2 control-label text-center">fixed Discount Amount</label>
                                    <div class="col-sm-10">
                                        <input type="text" value="{{ $productById->discount_product_amount }}" onkeyup="discount_price();" name="discount_product_amount" class="form-control" id="product_discount_amount" placeholder="">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="inputEmail3"  class="col-sm-2 control-label text-center">Discount Price</label>
                                    <div class="col-sm-10">
                                        <input type="text" value="{{ $productById->discount_product_price }}" name="discount_product_price" class="form-control" id="product_discount_price" placeholder="" readonly>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product Cost</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" value="{{ $productById->product_cost }}" name="product_cost" id="product_cost">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product Highlight</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="product_highlight" value="{{ $productById->product_highlight }}" id="product_highlight">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product Stock</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" value="{{ $productById->product_stock }}" name="product_stock" id="product_stock">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product Made By</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" value="{{ $productById->product_made_by }}" name="product_made_by" id="product_made_by">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Short Description <span>*</span></label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control summernote" rows="6" name="short_description" placeholder="" id="">{!! $productById->short_description !!}</textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Long Description <span>*</span></label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control summernote" rows="6" name="description" placeholder="" id="">{!! $productById->description !!}</textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product Main Image</label>
                                    <div class="col-sm-10">
                                        <input type="file" name="main_image" onchange="document.getElementById('mainImage').src = window.URL.createObjectURL(this.files[0])" accept="image/*">
                                        <img id="mainImage" src="{{ asset($productById->main_image) }}" alt="" height="80" width="80"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product Second Image</label>
                                    <div class="col-sm-10">
                                        {{--                                        <input type="file" name="main_image" onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])" accept="image/*">--}}
                                        {{--                                        <img id="blah" alt="product main image" width="100" height="100" />--}}
                                        <input type="file" name="second_image" onchange="document.getElementById('secondMainImage').src = window.URL.createObjectURL(this.files[0])" accept="image/*">
                                        <img src="{{ asset($productById->second_image) }}" id="secondMainImage" alt="" height="80" width="80"/>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Product sub Image</label>
                                    <div class="col-sm-10">
                                        <input type="file" name="sub_image[]" onchange="document.getElementById('subImage').src = window.URL.createObjectURL(this.files[0])" multiple="" accept="image/*">
                                        @foreach($productSubImages as $productSubImage)
                                            <img src="{{ asset($productSubImage->sub_image) }}" alt="" height="80" width="80"/>
                                        @endforeach
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">BEST SELLER</label>
                                    <div class="col-sm-10">
                                        <input type="radio" name="best_selling" value="1" {{$productById->best_selling==1 ? 'checked':''}}> Show &nbsp; 	&nbsp; 	&nbsp;
                                        <input type="radio" name="best_selling" value="0" {{$productById->best_selling==0 ? 'checked':''}}> hide
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">New Arrival</label>
                                    <div class="col-sm-10">
                                        <input type="radio" name="new_arrival" value="1" {{$productById->new_arrival==1 ? 'checked':''}}> Show &nbsp; 	&nbsp; 	&nbsp;
                                        <input type="radio" name="new_arrival" value="0" {{$productById->new_arrival==0 ? 'checked':''}}> hide
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Trending products</label>
                                    <div class="col-sm-10">
                                        <input type="radio" name="trending" value="1" {{$productById->trending==1 ? 'checked':''}}> Show &nbsp; 	&nbsp; 	&nbsp;
                                        <input type="radio" name="trending" value="0" {{$productById->trending==0 ? 'checked':''}}> hide
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Featured</label>
                                    <div class="col-sm-10">
                                        <input type="radio" name="featured" value="1" {{$productById->featured==1 ? 'checked':''}}> Show &nbsp; 	&nbsp; 	&nbsp;
                                        <input type="radio" name="featured" value="0" {{$productById->featured==0 ? 'checked':''}}> hide
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Special Offer </label>
                                    <div class="col-sm-10">
                                        <input type="radio" name="Special_Offer" value="1" {{$productById->Special_Offer==1 ? 'checked':''}}> Show &nbsp; 	&nbsp; 	&nbsp;
                                        <input type="radio" name="Special_Offer" value="0" {{$productById->Special_Offer==0 ? 'checked':''}}> hide
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Publication Status</label>
                                    <div class="col-sm-10">
                                        <input type="radio" name="publication_status" value="1" {{$productById->publication_status==1 ? 'checked':''}}> Show &nbsp; 	&nbsp; 	&nbsp;
                                        <input type="radio" name="publication_status" value="0" {{$productById->publication_status==0 ? 'checked':''}}> hide
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Orginal product link</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="orginal_product_link" value="{{$productById->orginal_product_link}}" id="orginal_product_link">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="large-input" class="col-sm-2 col-form-label text-center">Youtube Link</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="youtube_link" value="{{$productById->youtube_link}}" id="youtube_link">
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
        function validate() {
            var select = document.getElementById('selection').value;
            var message = document.getElementById('message');
            if (select=="Select Option"){
                message.innerHTML ='Please select Publication Status ';
                return false;
            }else {
                return true;
            }
        }
    </script>
    <script>

        function selectSubCategory(category_name) {
            var xmlHttp = new XMLHttpRequest();
            var serverPage='/select-sub-category/'+category_name;
            xmlHttp.open("GET", serverPage);
            xmlHttp.onreadystatechange = function() {
                if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                    document.getElementById('sub_category_name').innerHTML = xmlHttp.responseText;
                }
            }
            xmlHttp.send(null);
        }
    </script>
    <script>
        function discount_price() {
            var price=document.getElementById('price').value;
            var product_discount_amount=document.getElementById('product_discount_amount').value;
            document.getElementById('product_discount_price').value=price-product_discount_amount;
            if(product_discount_amount === ''){
                document.getElementById('product_discount_price').value='';
            }
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
    <script>
        {{--document.forms['editProductForm'].elements['category_id'].value = '{{ $productById->category_id }}';--}}
        {{--document.forms['editProductForm'].elements['sub_category_id'].value = '{{ $productById->sub_category_id }}';--}}
        document.forms['editProductForm'].elements['brand_id'].value = '{{ $productById->brand_id }}';
        document.forms['editProductForm'].elements['supplier_id'].value = '{{ $productById->supplier_id }}';
        document.forms['editProductForm'].elements['product_color'].value = '{{ $productById->product_color }}';
        document.forms['editProductForm'].elements['discount_product_amount'].value = '{{ $productById->discount_product_amount }}';
        document.forms['editProductForm'].elements['trending_page'].value = '{{ $productById->trending_page }}';
        document.forms['editProductForm'].elements['publication_status'].value = '{{ $productById->publication_status }}';
    </script>
@endsection
