<?php

namespace App\Http\Controllers;

use App\Blog;
use App\BlogCategory;
use App\Bolg;
use App\Brand;
use App\Category;
use App\Division;
use App\FlashSale;
use App\FlashSaleItem;
use App\Gallery;
use App\LensPrice;
use App\LensType;
use App\Product;
use App\ProductColor;
use App\ProductSubImage;
use App\Rating;
use App\shippingRate;
use App\Slider;
use App\SubCategory;
use App\SubscribModal;
use Illuminate\Http\Request;
use DB;
use Session;

class EcommerceController extends Controller
{

    public function index(){
        $sub=SubscribModal::where('publication_status',1)->first();
//        return $sub;
        $newArrivalProducts= DB::table('products')
//            ->join('product_categories','product_categories.product_id','=','products.id')
//            ->join('categories','product_categories.category_id','=','categories.id')
//            ->join('sub_categories','products.sub_category_id','=','sub_categories.id')
            ->select('products.id','products.slug','products.main_image','products.product_stock','products.second_image','products.product_name','products.product_highlight','products.discount_product_price','products.product_price','products.short_description')
            ->where('products.publication_status',1)
            ->where('products.new_arrival',1)
            ->take(10)
            ->orderby('id','desc')
            ->get();

//        $newArrivalProducts=Product::where('publication_status',1)
//            ->where('new_arrival',1)
//            ->take(15)
//            ->orderby('id','desc')
//            ->get();


//        $newArrivalProductCategory = DB::table('products')
//            ->join('product_categories','product_categories.product_id','=','products.id')
//            ->join('categories','product_categories.category_id','=','categories.id')
////            ->join('sub_categories','products.sub_category_id','=','sub_categories.id')
//            ->select('products.id','product_categories.category_id','product_categories.product_id','categories.category_name')
////            ->orderby('id','desc')
////            ->where('products.id','=','product_categories.product_id')
//            ->get();

//        return $newArrivalProducts;

        $flashSaleProducts = DB::table('flash_sale_items')
            ->join('flash_sales', 'flash_sale_items.flash_id', '=','flash_sales.id')
            ->join('products', 'flash_sale_items.product_id', '=','products.id')
//            ->join('product_categories','product_categories.product_id','=','products.id')
//            ->join('categories','product_categories.category_id','=','categories.id')
//            ->join('sub_categories','products.sub_category_id','=','sub_categories.id')
            ->select('products.*','flash_sales.cam_name','flash_sales.cam_date','flash_sales.cam_time','flash_sales.publication_status','flash_sale_items.flash_id','flash_sale_items.product_id','flash_sale_items.flash_sale_item','flash_sale_items.flash_sale_price')
            ->where('flash_sales.publication_status',1)
            ->get();
        $flashSaleProduct22=FlashSale::where('publication_status',1)->get();
//        return $flashSaleProduct;
//        return $flashSaleProducts;
        return view('frontend.home.home',[
            Session::put('sub',$sub),
            'bestSellingProducts'=> DB::table('products')
//                ->join('product_categories','product_categories.product_id','=','products.id')
//                ->join('categories','product_categories.category_id','=','categories.id')
//                ->join('sub_categories','products.sub_category_id','=','sub_categories.id')
                ->select('products.id','products.slug','products.product_highlight','products.product_stock','products.main_image','products.second_image','products.product_name','products.discount_product_price','products.product_price','products.short_description')
                ->where('products.publication_status',1)
                ->where('products.featured',1)
                ->take(10)
                ->orderby('id','desc')
                ->get(),
            'trendingPageProducts'=> DB::table('products')
//                ->join('product_categories','product_categories.product_id','=','products.id')
//                ->join('categories','product_categories.category_id','=','categories.id')
//                ->join('sub_categories','products.sub_category_id','=','sub_categories.id')
                ->select('products.id','products.slug','products.product_highlight','products.product_stock','products.main_image','products.second_image','products.product_name','products.discount_product_price','products.product_price','products.short_description')
                ->where('products.publication_status',1)
                ->where('products.trending',1)
                ->take(10)
                ->orderby('id','desc')
                ->get(),
            'newArrivalProducts'=>$newArrivalProducts,
            'featuredPageProducts'=> DB::table('products')
//                ->join('product_categories','product_categories.product_id','=','products.id')
//                ->join('categories','product_categories.category_id','=','categories.id')
//                ->join('sub_categories','products.sub_category_id','=','sub_categories.id')
                ->select('products.id','products.slug','products.product_highlight','products.product_stock','products.main_image','products.second_image','products.product_name','products.discount_product_price','products.product_price','products.short_description')
                ->where('products.publication_status',1)
                ->where('products.featured',1)
                ->take(10)
                ->orderby('id','desc')
                ->get(),
            'specialOfferProducts'=> DB::table('products')
//                ->join('product_categories','product_categories.product_id','=','products.id')
//                ->join('categories','product_categories.category_id','=','categories.id')
//                ->join('sub_categories','products.sub_category_id','=','sub_categories.id')
                ->select('products.id','products.slug','products.product_highlight','products.product_stock','products.main_image','products.second_image','products.product_name','products.discount_product_price','products.product_price','products.short_description')
                ->where('products.publication_status',1)
                ->where('products.Special_Offer',1)
                ->take(10)
                ->orderby('id','desc')
                ->get(),
            'flashSaleProducts'=>$flashSaleProducts,
            'flashSaleProduct22'=>$flashSaleProduct22,
            'blogs' =>Blog::where('publication_status',1)->orderby('id', 'desc')->get(),
            'sliders'=> Slider::where('publication_status',1)->orderby('id', 'desc')->get(),
            'section_1'=> Gallery::where('section',1)->first(),
            'section_2'=> Gallery::where('section',2)->first(),
            'section_3'=> Gallery::where('section',3)->first(),
            'section_4'=> Gallery::where('section',4)->first(),
            'section_5'=> Gallery::where('section',5)->first(),
            'section_6'=> Gallery::where('section',6)->first(),
        ]);
    }
    public function shop()
    {
        Session::forget('sub');
        $price_min=Product::where('product_price','>=',0)->min('product_price');
        $price_max=Product::where('product_price','>=',0)->max('product_price');
//        return $price_max;
        return view('frontend.shop.shop', [
            'categories'=>Category::where('publication_status',1)->get(),
            'brands'=>Brand::where('publication_status',1)->get(),
            'products' =>DB::table('products')
//                ->join('product_categories','product_categories.product_id','=','products.id')
//                ->join('categories','product_categories.category_id','=','categories.id')
//            ->join('sub_categories','products.sub_category_id','=','sub_categories.id')
                ->select('products.id','products.slug','products.main_image','products.product_stock','products.second_image','products.product_name','products.product_highlight','products.discount_product_price','products.product_price','products.short_description')
                ->where('products.publication_status',1)
                ->orderby('id','desc')
                ->paginate(12),
            'topRatedProducts' =>Product::where('publication_status',1)->take(8)->get(),
            'price_min' =>$price_min,
            'price_max' =>$price_max,

        ]);
    }
    public function product(){

        return view('frontend.product.products',[

        ]);

    }

    public function search(Request $request) {
        Session::forget('sub');
        $products = DB::table('products')
//            ->join('product_categories','product_categories.product_id','=','products.id')
//            ->join('categories','product_categories.category_id','=','categories.id')
//            ->join('sub_categories','products.sub_category_id','=','sub_categories.id')
            ->select('products.id','products.slug','products.main_image','products.product_stock','products.second_image','products.product_name','products.product_highlight','products.discount_product_price','products.product_price','products.short_description')
            ->where('product_name','LIKE','%'.$request->search_content.'%')
                ->orderBy('id', 'desc')
               ->paginate();
        $price_min=Product::where('product_price','>=',0)->min('product_price');
        $price_max=Product::where('product_price','>=',0)->max('product_price');
        return view('frontend.shop.shop', [
            'products'=>$products,
            'categories'=>Category::where('publication_status',1)->get(),
            'brands'=>Brand::where('publication_status',1)->get(),
            'topRatedProducts' =>Product::where('publication_status',1)->take(8)->get(),
            'price_min' =>$price_min,
            'price_max' =>$price_max,
        ]);
    }
    public  function productPage($id,$name){
        Session::forget('sub');
        $products = DB::table('products')
            ->join('product_categories','product_categories.product_id','=','products.id')
            ->join('categories','product_categories.category_id','=','categories.id')
//            ->join('sub_categories','products.sub_category_id','=','sub_categories.id')
            ->select('products.id','products.slug','product_categories.category_id','products.main_image','products.product_stock','products.second_image','products.product_name','products.product_highlight','products.discount_product_price','products.product_price','products.short_description','categories.category_name')
            ->where('categories.category_name',$name)
            ->paginate(12);
//        return $products;
        $price_min=Product::where('product_price','>=',0)->min('product_price');
        $price_max=Product::where('product_price','>=',0)->max('product_price');
//return $price_min;
        return view('frontend.shop.shop',[
            'products'=>$products,
            'categories'=>Category::where('publication_status',1)->get(),
            'category' =>Category::where('category_name',$name)->first(),
            'subCategories' =>SubCategory::where('category_id',$id)->get(),
//            'bestSellingProducts'=> Product::where('best_seller',1)->orderby('id', 'desc')->take(5)->get(),
//            'secondBestSellingProducts'=> Product::where('best_seller',1)->orderby('id', 'desc')->skip(5)->take(5)->get(),
            'price_min' =>$price_min,
            'price_max' =>$price_max,
            'topRatedProducts' =>Product::where('publication_status',1)->take(8)->get(),
            'brands'=>Brand::where('publication_status',1)->get(),
        ]);
    }
    public  function productBrand($id,$name){
        Session::forget('sub');
        $products = DB::table('products')
//            ->join('product_categories','product_categories.product_id','=','products.id')
//            ->join('categories','product_categories.category_id','=','categories.id')
            ->join('brands','products.brand_id','=','brands.id')
//            ->join('sub_categories','products.sub_category_id','=','sub_categories.id')
            ->select('products.*','brands.brand_name')
            ->where('brands.brand_name',$name)
            ->paginate(12);
//        return $products;
        $price_min=Product::where('product_price','>=',0)->min('product_price');
        $price_max=Product::where('product_price','>=',0)->max('product_price');
//return $price_min;
        return view('frontend.shop.shop',[
            'products'=>$products,
            'categories'=>Category::where('publication_status',1)->get(),
            'category' =>Category::where('category_name',$name)->first(),
            'subCategories' =>SubCategory::where('category_id',$id)->get(),
//            'bestSellingProducts'=> Product::where('best_seller',1)->orderby('id', 'desc')->take(5)->get(),
//            'secondBestSellingProducts'=> Product::where('best_seller',1)->orderby('id', 'desc')->skip(5)->take(5)->get(),
            'price_min' =>$price_min,
            'price_max' =>$price_max,
            'topRatedProducts' =>Product::where('publication_status',1)->take(8)->get(),
            'brands'=>Brand::where('publication_status',1)->get(),
        ]);
    }

    public function productPageForSub($id,$catId,$name){
        Session::forget('sub');
        $products = DB::table('products')
            ->join('product_sub_categories','product_sub_categories.product_id','=','products.id')
//            ->join('sub_categories','product_sub_categories.sub_category_id','=','sub_categories.id')
//            ->join('product_categories','product_categories.product_id','=','products.id')
//            ->join('categories','product_categories.category_id','=','categories.id')
            ->select( 'products.*')
            ->where('product_sub_categories.sub_category_id',$id)
            ->paginate(12);
//        return $products;
        $price_min=Product::where('product_price','>=',0)->min('product_price');
        $price_max=Product::where('product_price','>=',0)->max('product_price');
        return view('frontend.shop.shop',[
            'products'=>$products,
            'categories'=>Category::where('publication_status',1)->get(),
            'brands'=>Brand::where('publication_status',1)->get(),
            'category' =>Category::where('category_name',$name)->first(),
            'subCategories' =>SubCategory::where('category_id',$catId)->get(),
//            'bestSellingProducts'=> Product::where('best_seller',1)->orderby('id', 'desc')->take(5)->get(),
//            'secondBestSellingProducts'=> Product::where('best_seller',1)->orderby('id', 'desc')->skip(5)->take(5)->get(),
            'price_min' =>$price_min,
            'price_max' =>$price_max,
            'topRatedProducts' =>Product::where('publication_status',1)->take(8)->get(),
        ]);
    }

    public function priceFilter(Request $request) {
        Session::forget('sub');
        $products = DB::table('products')
//            ->join('product_categories','product_categories.product_id','=','products.id')
//            ->join('categories','product_categories.category_id','=','categories.id')
            //->join('sub_categories','products.sub_category_id','=','sub_categories.id')
            ->select('products.*')
            ->whereBetween('product_price', [$request->price_min, $request->price_max])
            ->where('products.publication_status',1)
            ->paginate(50);

        $products2 = DB::table('products')
//            ->join('categories','products.category_id','=','categories.id')
            ->select('products.*')
            ->whereBetween('product_price', [$request->price_min, $request->price_max])
            ->take(1)
            ->get();
//        return $products2;
        return view('frontend.shop.shop',[
            'products'=>$products,
            'products2'=>$products2,
            'categories' =>Category::where('publication_status',1)->get(),
            'brands'=>Brand::where('publication_status',1)->get(),
//            'subCategories' =>SubCategory::where('category_id',$id)->get(),
            'price_min' =>Product::where('product_price','>=',0)->min('product_price'),
            'price_max' =>Product::where('product_price','>=',0)->max('product_price'),
            'topRatedProducts' =>Product::where('publication_status',1)->take(8)->get(),
        ]);
    }
//    public function priceFilterDisplay($id,$name){
////        return 'ok';
//        $products = DB::table('products')
//            ->join('categories','products.category_id','=','categories.id')
//            //->join('sub_categories','products.sub_category_id','=','sub_categories.id')
//            ->select('products.*', 'categories.category_name')
//            ->where('categories.category_name',$name)
//            ->get();
//        $price_min=Product::where('product_price','>=',0)->min('product_price');
//        $price_max=Product::where('product_price','>=',0)->max('product_price');
////return $price_min;
//        return view('frontend.shop.shop',[
//            'products'=>$products,
//            'categories' =>Category::where('publication_status',1)->get(),
////            'subCategories' =>SubCategory::where('category_id',$id)->get(),
//            'price_min' =>$price_min,
//            'price_max' =>$price_max,
//            'brands'=>Brand::where('publication_status',1)->get(),
//        ]);
//    }

    public function asw(Request $request){
        return $request->file();
    }

    public function details($id){
        $productId = Product::find($id);
       return json_encode($productId);
    }

    public function productDetails($id,$slug){
        Session::forget('sub');
        $product= Product::find($id);
        $product2 = DB::table('products')
            ->join('product_categories','product_categories.product_id','=','products.id')
            ->join('categories','product_categories.category_id','=','categories.id')
            ->select('products.id','product_categories.category_id')
            ->where('products.id',$id)
            ->get();
          $catID=$product2->first()->category_id;
        $relatedProducts= DB::table('products')
            ->join('product_categories','product_categories.product_id','=','products.id')
            ->join('categories','product_categories.category_id','=','categories.id')
            ->select('products.id','product_categories.category_id','products.slug','products.main_image','products.second_image','products.product_name','products.discount_product_price','products.product_price','products.short_description','categories.category_name')
            ->where('products.publication_status',1)
            ->where('product_categories.category_id',$catID)
            ->take(10)
            ->orderby('id','desc')
            ->get();
//        return $relatedProducts;

        $flashSaleProducts = DB::table('flash_sale_items')
            ->join('products', 'flash_sale_items.product_id', '=','products.id')
//            ->join('categories','product_categories.category_id','=','categories.id')
//            ->join('sub_categories','products.sub_category_id','=','sub_categories.id')
            ->select('flash_sale_items.id','products.*','products.id','flash_sale_items.product_id','flash_sale_items.flash_sale_item','flash_sale_items.flash_sale_price')
            ->where('products.id',$id)
            ->orderBy('flash_sale_items.id','desc')
            ->latest()
            ->take(1)
            ->get();

        return view('frontend.product.product-details',[
            'product'=> $product,
            'flashSaleProducts'=>$flashSaleProducts,
            'productColors'=> DB::table('product_colors')
                ->join('colors','product_colors.color_id','=','colors.id')
                ->select('colors.color_name','colors.color_code','product_colors.product_id')
                ->where('product_id',$id)
                ->get(),
            'productSizes'=>DB::table('product_sizes')
                ->join('sizes','product_sizes.size_id','=','sizes.id')
                ->select('sizes.size_name','product_sizes.product_id')
                ->where('product_id',$id)
                ->get(),
            'productCategories'=>DB::table('product_categories')
                ->join('categories','product_categories.category_id','=','categories.id')
                ->select('categories.category_name','product_categories.category_id','product_categories.product_id')
                ->where('product_id',$id)
                ->get(),
            'relatedProducts'=>$relatedProducts,
            'product_images'=> ProductSubImage::where('product_id',$id)->get(),
            'lensTypes'=> LensType::where('publication_status',1)->get(),
            'secLensPrices'=> LensPrice::where('publication_status',1)->where('lens_id',null)->get(),
            'lensPrices'=> LensPrice::where('publication_status',1)->where('lens_id', '!=', null)->get(),
            'category'=> Category::where('id',$catID)->first(),
            'product_rating'=> Rating::
//            where('product_id',$id)
                where('customer_id', Session::get('customerId'))
                ->where('product_id',$id)
                ->first(),
            'ratings' => Rating::where('product_id',$id)
                ->get(),
            'comments' => Rating::where('product_id',$id)
                ->where('comments','!=', null)
                ->get(),
        ]);
    }
     public function termsAndCondition(){
        return view('frontend.terms-and-condition.terms-and-condition');
    }

    public function blogDetails($slug){
        Session::forget('sub');
        $blog = Blog::where('slug',$slug)->first();
//        return $blog;
        return view('frontend.blog.blog-details',[
            'blog' =>$blog,
            'blogs' =>Blog::where('publication_status',1)->orderby('id', 'desc')->take(5)->get(),
            'categories' =>BlogCategory::where('publication_status',1)->orderby('id', 'desc')->get(),
        ]);
    }
    public function blog(){
        Session::forget('sub');
        return view('frontend.blog.blog',[
            'blogs' =>Blog::where('publication_status',1)->orderby('id', 'desc')->paginate(3),
            'categories' =>BlogCategory::where('publication_status',1)->orderby('id', 'desc')->get(),
        ]);
    }
    public function categoryBlog($id,$cat){
        Session::forget('sub');
       $blogs = DB::table('blogs')
            ->join('blog_categories','blogs.blog_category_id','=','blog_categories.id')
            ->select('blogs.*','blog_categories.id','blog_categories.blog_category_name')
            ->where('blog_categories.id',$id)
            ->where('blogs.publication_status',1)
           ->paginate(3);
        return view('frontend.blog.blog',[
            'blogs' =>$blogs,
            'categories' =>BlogCategory::where('publication_status',1)->orderby('id', 'desc')->get(),
        ]);
    }

    public function lensPrice($id) {
//        $lensPrices = LensPrice::where('lens_id', $id)->get();
        $lensPrices = DB::table('lens_prices')
            ->join('lens_types','lens_prices.lens_id','=','lens_types.id')
            ->select('lens_types.*','lens_prices.*')
            ->where('lens_prices.lens_id', $id)
            ->get();
        return json_encode($lensPrices);
    }
    public function selectArea($id) {
        $rate = shippingRate::where('state',$id)->get();
        return json_encode($rate);
    }
    public function selectDivision($id) {

        $division = DB::table('shipping_rates')
            ->join('divisions','shipping_rates.division_id','=','divisions.id')
            ->select('shipping_rates.*','divisions.division')
            ->where('shipping_rates.division_id', $id)
            ->get();

//        $division = Division::where('state',$id)->get();
        return json_encode($division);
    }
    public function flashProduct(){
        Session::forget('sub');
        $price_min=Product::where('product_price','>=',0)->min('product_price');
        $price_max=Product::where('product_price','>=',0)->max('product_price');
//        return $price_max;
        return view('frontend.shop.flash-shop', [
            'categories'=>Category::where('publication_status',1)->get(),
            'brands'=>Brand::where('publication_status',1)->get(),
            'products' =>DB::table('flash_sale_items')
                ->join('flash_sales', 'flash_sale_items.flash_id', '=','flash_sales.id')
                ->join('products', 'flash_sale_items.product_id', '=','products.id')
//            ->join('product_categories','product_categories.product_id','=','products.id')
//            ->join('categories','product_categories.category_id','=','categories.id')
//            ->join('sub_categories','products.sub_category_id','=','sub_categories.id')
                ->select('flash_sale_items.flash_sale_price','products.*','flash_sales.cam_name','flash_sales.cam_date','flash_sales.cam_time','flash_sales.publication_status','flash_sale_items.flash_id','flash_sale_items.product_id','flash_sale_items.flash_sale_item')
                ->where('flash_sales.publication_status',1)
                ->paginate(12),
            'topRatedProducts' =>Product::where('publication_status',1)->take(8)->get(),
            'price_min' =>$price_min,
            'price_max' =>$price_max,

        ]);
    }
}
