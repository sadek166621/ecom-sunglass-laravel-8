<?php

namespace App\Http\Controllers;

use App\Brand;
use App\Category;
use App\Color;
use App\Product;
use App\ProductCategory;
use App\ProductColor;
use App\ProductSize;
use App\ProductSubCategory;
use App\ProductSubImage;
use App\Size;
use App\SubCategory;
use App\Supplier;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use DB;

class ProductController extends Controller
{
    public function addProduct(){
        $categories = Category::where('publication_status',1)->get();
        $subCategories = SubCategory::where('publication_status',1)->get();
        $brands = Brand::where('publication_status',1)->get();
        $supplier = Supplier::where('publication_status',1)->get();
        $colors = Color::where('publication_status',1)->get();
        $sizes = Size::where('publication_status',1)->get();

        return view('admin.product.add-product',[
            'categories'=>$categories,
            'brands'=>$brands,
            'subCategories'=>$subCategories,
            'suppliers'=>$supplier,
            'colors'=>$colors,
            'sizes'=>$sizes,

        ]);
    }

    private function savebasicproductInfo(Request $request){
//        return $request;
//        $this->validate($request, [
//
//        ]);
        $product = new Product();
        $product->brand_id= $request->brand_id;
        $product->supplier_id= $request->supplier_id;
        $product->product_name= $request->product_name;
        $product->slug=$this->make_slug($request);
        $product->product_code= $request->product_code;
        $product->product_price= $request->product_price;
        $product->discount_product_amount= $request->discount_product_amount;
        $product->discount_product_price= $request->discount_product_price;
        $product->product_cost= $request->product_cost;
        $product->product_highlight= $request->product_highlight;
        $product->product_stock= $request->product_stock;
        $product->product_made_by= $request->product_made_by;
        $product->short_description= $request->short_description;
        $product->description= $request->description;
        $product->main_image= $this->mainImageInfo($request);
        $product->second_image= $this->secondImageInfo($request);
        $product->best_selling= $request->best_selling;
        $product->trending= $request->trending;
        $product->new_arrival= $request->new_arrival;
        $product->featured= $request->featured;
        $product->Special_Offer= $request->Special_Offer;
        $product->publication_status= $request->publication_status;
        $product->orginal_product_link= $request->orginal_product_link;
        $product->youtube_link= $request->youtube_link;
        $product->save();
        $productId = $product->id;
        return $productId;
    }
    private  function make_slug($request) {
        if ($request->slug){
            $str =$request->slug;
            return preg_replace('/\s+/u', '-', trim($str));
        }
        $str =$request->product_name;
        return preg_replace('/\s+/u', '-', trim($str));
    }

    private function mainImageInfo($request){
        $this->validate($request, [
            'main_image' => 'required|image|mimes:jpeg,png,jpg,JPG,gif,svg|max:20480'
        ]);
        $mainImage=$request->file('main_image');
        $mainImageName='main_image'.'-'.rand() . '.' . $mainImage->extension();
        $uploadPath='image/product/product_image/';
        $mainImageUrl=$uploadPath.$mainImageName;
        $mainImage->move($uploadPath,$mainImageName);
        return $mainImageUrl;
    }
    private function secondImageInfo($request){
        $this->validate($request,[
            'second_image' => 'required|image|mimes:jpeg,png,jpg,JPG,gif,svg|max:20480'
        ]);
        $secondImage=$request->file('second_image');
        $secondImageName='second_image'.'-'.rand() . '.' . $secondImage->extension();
        $uploadPath='image/product/product_image/';
        $secondImageUrl=$uploadPath.$secondImageName;
        $secondImage->move($uploadPath,$secondImageName);
        return $secondImageUrl;
    }
    private function color($request, $product_id) {
//        if($abc=$request->color_id){
            $colors = count($request->color_id);
            if ($colors != Null){
                for ($i=0;$i<$colors; $i++){
                    $productColor = new ProductColor();
                    $productColor->product_id = $product_id;
                    $productColor->color_id = $request->color_id[$i];
                    $productColor->save();
                }
            }
//        }

    }
    private function size($request, $product_id){
        if($sizes =$request->size_id){
            foreach($sizes as $size){
                $productSize = new ProductSize();
                $productSize->product_id = $product_id;
                $productSize->size_id = $size;
                $productSize->save();
            }
        }
    }
    private function category($request, $product_id){
        if($categories =$request->category_id){
            foreach($categories as $category){
                $productCategory = new ProductCategory();
                $productCategory->product_id = $product_id;
                $productCategory->category_id = $category;
                $productCategory->save();
            }
        }
    }
    private function subCategory($request, $product_id){
        if($subCategories =$request->sub_category_id){
            foreach($subCategories as $subCategory){
                $productSubCategory = new ProductSubCategory();
                $productSubCategory->product_id = $product_id;
                $productSubCategory->sub_category_id = $subCategory;
                $productSubCategory->save();
            }
        }
    }
    private function uploadProductImage($request, $product_id) {
        if($files=$request->file('sub_image')){
            foreach($files as $file){
                $name='sub_image'.'-'.rand() . '.' . $file->extension();
                $uploadPath='image/product/sub_image/';
                $imageUrl=$uploadPath.$name;
                $file->move($uploadPath,$name);
                $productSubImage = new ProductSubImage();
                $productSubImage->product_id = $product_id;
                $productSubImage->sub_image = $imageUrl;
                $productSubImage->save();
            }
        }
    }

    public function saveProduct(Request $request){
        $productId = $this->savebasicproductInfo($request);
        $this->category($request, $productId);
        $this->subCategory($request, $productId);
        $this->color($request, $productId);
        $this->size($request, $productId);
        $this->uploadProductImage($request, $productId);
        return redirect('/add-product')->with('message','Product save Successfully');
    }

    public function manageProduct() {
        $allPublishedProducts = DB::table('products')
//            ->join('categories', 'products.category_id', '=', 'categories.id')
            // ->join('sub_categories', 'products.sub_category_id', '=', 'sub_categories.id')
            ->select('products.id', 'products.product_name','products.product_price','products.product_cost','products.product_stock', 'products.publication_status')
             //->where('products.publication_status','=',1)
             ->orderBy('products.id', 'desc')
            ->get();
            // return $allPublishedProducts;
        return view('admin.product.manage-product', ['allPublishedProducts'=>$allPublishedProducts]);
    }

    public function viewProductInfo($id) {
        $categories=Category::where('publication_status',1)->get();
        $subCategories=SubCategory::where('publication_status',1)->get();
        $brands=Brand::where('publication_status',1)->get();
        $suppliers=Supplier::where('publication_status',1)->get();
        $productById = Product::find($id);
        $productSubImages = ProductSubImage::where('product_id', $id)->get();
        return view('admin.product.view-product', [
            'categories'=>$categories,
            'subCategories'=>$subCategories,
            'brands'=>$brands,
            'suppliers'=>$suppliers,
            'productById' => $productById,
            'productSubImages' => $productSubImages
        ]);
    }

    public function editProductInfo($id) {
        $categories=Category::where('publication_status',1)->get();
        $subCategories=SubCategory::where('publication_status',1)->get();
        $brands=Brand::where('publication_status',1)->get();
        $suppliers=Supplier::where('publication_status',1)->get();
        $colors = Color::where('publication_status',1)->get();
        $sizes = Size::where('publication_status',1)->get();
        $productById = Product::find($id);
        $productSubImages = ProductSubImage::where('product_id', $id)->get();
        $productColors=ProductColor::select('color_id')->where('product_id', $id)->orderby('id','asc')->get()->toArray();
        $productSizes=ProductSize::select('size_id')->where('product_id', $id)->orderby('id','asc')->get()->toArray();
        $productCategories=ProductCategory::select('category_id')->where('product_id', $id)->orderby('id','asc')->get()->toArray();
        $productSubCategories=ProductSubCategory::select('sub_category_id')->where('product_id', $id)->orderby('id','asc')->get()->toArray();
//return $productCategories;
        return view('admin.product.edit-product', [
            'categories'=>$categories,
            'subCategories'=>$subCategories,
            'brands'=>$brands,
            'suppliers'=>$suppliers,
            'productById' => $productById,
            'productSubImages' => $productSubImages,
            'colors'=>$colors,
            'sizes'=>$sizes,
            'productColors'=>$productColors,
            'productSizes'=>$productSizes,
            'productCategories'=>$productCategories,
            'productSubCategories'=>$productSubCategories,
        ]);
    }
    private function updateProductBasicInfo($request) {
        $product = Product::find($request->product_id);
        $product->brand_id= $request->brand_id;
        $product->supplier_id= $request->supplier_id;
        $product->product_name= $request->product_name;
        $product->slug=$this->make_slug($request);
        $product->product_code= $request->product_code;
        $product->product_price= $request->product_price;
        $product->discount_product_amount= $request->discount_product_amount;
        $product->discount_product_price= $request->discount_product_price;
        $product->product_cost= $request->product_cost;
        $product->product_highlight= $request->product_highlight;
        $product->product_stock= $request->product_stock;
        $product->product_made_by= $request->product_made_by;
        $product->short_description= $request->short_description;
        $product->description= $request->description;
        if($request->main_image) {
            unlink($product->main_image);
            $product->main_image = $this->mainImageInfo($request);
        }
        if($request->second_image) {
            unlink($product->second_image);
            $product->second_image = $this->secondImageInfo($request);
        }
        $product->best_selling= $request->best_selling;
        $product->trending= $request->trending;
        $product->new_arrival= $request->new_arrival;
        $product->featured= $request->featured;
        $product->Special_Offer= $request->Special_Offer;
        $product->publication_status= $request->publication_status;
        $product->orginal_product_link= $request->orginal_product_link;
        $product->youtube_link= $request->youtube_link;
        $product->save();
    }

    public function updateProductInfo(Request $request) {
        $this->updateProductBasicInfo($request);
        if ($request->category_id){
            $productCategories =  ProductCategory::where('product_id', $request->product_id)->get();
            foreach ($productCategories as $productCategory) {
                $productCategory->delete();
            }
            $this->category($request, $request->product_id);
        }
        if ($request->category_id){
            $productSubCategories =  ProductSubCategory::where('product_id', $request->product_id)->get();
            foreach ($productSubCategories as $productSubCategory) {
                $productSubCategory->delete();
            }
            $this->subCategory($request, $request->product_id);
        }
        if ($request->color_id){
            $productColors =  ProductColor::where('product_id', $request->product_id)->get();
            foreach ($productColors as $productColor) {
                $productColor->delete();
            }
            $this->color($request, $request->product_id);
        }
        if ($request->size_id){
            $productSizes =  ProductSize::where('product_id', $request->product_id)->get();
            foreach ($productSizes as $productSize) {
                $productSize->delete();
            }
            $this->size($request, $request->product_id);
        }
        if($request->sub_image) {
            $productSubImages = ProductSubImage::where('product_id', $request->product_id)->get();
            foreach ($productSubImages as $productSubImage) {
                unlink($productSubImage->sub_image);
                $productSubImage->delete();
            }
            $this->uploadProductImage($request, $request->product_id);
        }
        return redirect('/manage-product')->with('message', 'Product info update successfully');
    }

    public function unpublishedProductInfo($id) {
        $product = Product::find($id);
        $product->publication_status = 0;
        $product->save();
        return redirect('/manage-product')->with('message', 'Product info unpublished successfully');
    }

    public function publishedProductInfo($id) {
        $product = Product::find($id);
        $product->publication_status = 1;
        $product->save();
        return redirect('/manage-product')->with('message', 'Product info published successfully');
    }
    public function deleteProductInfo($id) {
        $productById = Product::find($id);
        $productById->delete();
        unlink($productById->main_image  );
        unlink($productById->second_image  );
        $productSubImages = ProductSubImage::where('product_id', $id)->get();
        foreach ($productSubImages as $productSubImage){
            $productSubImage->delete();
            unlink($productSubImage->sub_image);
        }
        $productCategories =  ProductCategory::where('product_id', $id)->get();
        foreach ($productCategories as $productCategory) {
            $productCategory->delete();
        }
        $productSubCategories =  ProductSubCategory::where('product_id', $id)->get();
        foreach ($productSubCategories as $productSubCategory) {
            $productSubCategory->delete();
        }
        $productColors =  ProductColor::where('product_id', $id)->get();
            foreach ($productColors as $productColor) {
                $productColor->delete();
            }
        $productSizes =  ProductSize::where('product_id', $id)->get();
            foreach ($productSizes as $productSize) {
                $productSize->delete();
            }
        return redirect('/manage-product')->with('message', 'Product info delete successfully');
    }

    public function selectSubCategoryByCategoryId($id) {
        $subCategoriesByCategoryId= SubCategory::where('category_id', $id)->get();
        echo view('admin.product.sub-category-content', [
            'subCategoriesByCategoryId'=>$subCategoriesByCategoryId
        ]);
    }



}
