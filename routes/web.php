<?php

//use Illuminate\Support\Facades\Route;
//
///*
//|--------------------------------------------------------------------------
//| Web Routes
//|--------------------------------------------------------------------------
//|
//| Here is where you can register web routes for your application. These
//| routes are loaded by the RouteServiceProvider within a group which
//| contains the "web" middleware group. Now create something great!
//|
//*/
//
//Route::get('/', function () {
//    return view('welcome');
//});

//Route::get('/details/{id}',[
//    'uses'  =>'EcommerceController@details',
//    'as'    =>'details'
//]);

//Route::get('optimize', function(){
//    Artisan::call('optimize:clear');
//    return 'yes';
////    return redirect()->route('index');
//})->name('optimize');


Route::get("/clear-cache", function() {
    Artisan::call("optimize:clear");
echo Artisan::output();
});

Route::get("/404","ErrorHandlerController@errorCode404");
Route::get("/405","ErrorHandlerController@errorCode405");

Route::get('/',[
    'uses'  =>'EcommerceController@index',
    'as'    =>'/'
]);
Route::get('/terms-and-condition',[
    'uses'  =>'EcommerceController@termsAndCondition',
    'as'    =>'terms-and-condition'
]);
Route::get('/shop',[
    'uses'  =>'EcommerceController@shop',
    'as'    =>'shop'
]);
Route::get('/product',[
    'uses'  =>'EcommerceController@product',
    'as'    =>'product'
]);
Route::get('/flash-product',[
    'uses'  =>'EcommerceController@flashProduct',
    'as'    =>'flash-product'
]);
Route::get('/product-details/{id}/{slug}',[
    'uses'  =>'EcommerceController@productDetails',
    'as'    =>'product-details'
]);
Route::get('/brand-product/{id}/{name}',[
    'uses'      =>'EcommerceController@productBrand',
    'as'        =>'brand-product',
]);
Route::get('/menu/{id}/{name}',[
    'uses'      =>'EcommerceController@productPage',
    'as'        =>'menu',
]);

Route::get('/smenu/{id}/{catId}/{name}',[
    'uses'      =>'EcommerceController@productPageForSub',
    'as'        =>'smenu',
]);
Route::post('/price-filter',[
    'uses'      =>'EcommerceController@priceFilter',
    'as'        =>'price-filter',
]);
//Route::get('/price-filter',[
//    'uses'      =>'EcommerceController@priceFilterDisplay',
//    'as'        =>'price-filter',
//]);

Route::get('/blog-details/{slug}', [
    'uses' => 'EcommerceController@blogDetails',
    'as' => 'blog-details'
]);
Route::get('/latest-blog', [
    'uses' => 'EcommerceController@blog',
    'as' => 'blog'
]);
Route::get('/category-blog/{id}/{cat}', [
    'uses' => 'EcommerceController@categoryBlog',
    'as' => 'category.blog'
]);


Route::get('/shipping_returns',[
    'uses'  =>'PageController@shippingReturns',
    'as'    =>'shipping_returns'
]);
Route::get('/secure_shopping',[
    'uses'  =>'PageController@secureShopping',
    'as'    =>'secure_shopping'
]);
Route::get('/creative',[
    'uses'  =>'PageController@Creative',
    'as'    =>'creative'
]);
Route::get('/delivery_information',[
    'uses'  =>'PageController@deliveryInformation',
    'as'    =>'delivery_information'
]);
Route::get('/privacy_policy',[
    'uses'  =>'PageController@privacyPolicy',
    'as'    =>'privacy_policy'
]);
Route::get('/conditions',[
    'uses'  =>'PageController@Conditions',
    'as'    =>'conditions'
]);
Route::get('/frequently_questions',[
    'uses'  =>'PageController@frequentlyQuestions',
    'as'    =>'frequently_questions'
]);


Route::get('/select-lens/{id}',[
    'uses'  =>'EcommerceController@lensPrice',
    'as'    =>'select-lens'
]);
Route::get('/select-area/{id}',[
    'uses'  =>'EcommerceController@selectArea',
    'as'    =>'select-area'
]);
Route::get('/select-division/{id}',[
    'uses'  =>'EcommerceController@selectDivision',
    'as'    =>'select-division'
]);

Route::post('/asw',[
    'uses'  =>'EcommerceController@asw',
    'as'    =>'asw'
]);

//=================== search ==============
Route::post('/search',[
    'uses'      =>'EcommerceController@search',
    'as'        =>'search',
]);
//===================Cart==============
Route::post('/cart-add',[
    'uses'      =>'CartController@cartAdd',
    'as'        =>'cart-add',
]);

Route::get('/show-cart',[
    'uses'      =>'CartController@showCart',
    'as'        =>'show-cart',
]);

Route::post('/cart-update',[
    'uses'      =>'CartController@cartUpdate',
    'as'        =>'cart-update',
]);

Route::get('/cart-remove/{id}',[
    'uses'      =>'CartController@removeCart',
    'as'        =>'cart-remove',
]);

//=================== Newsletter Mail==============
Route::post('/send-mail',[
    'uses'      =>'MailController@send',
    'as'        =>'send-mail',
]);
//===================Customer==============
Route::get('/customer-registration',[
    'uses'      =>'CustomerController@index',
    'as'        =>'customer-registration',
]);
Route::get('/customer-login',[
    'uses'      =>'CustomerController@customerLogin',
    'as'        =>'customer-login',
]);
Route::post('/customer-login',[
    'uses'      =>'CustomerController@customerLoginCheck',
    'as'        =>'customer-login',
]);
Route::post('/new-customer',[
    'uses'      =>'CustomerController@saveCustomer',
    'as'        =>'new-customer',
]);


Route::get('/rating-star-one/{productId}/{customerId}',[
    'uses'      =>'RatingController@ratingStarOne',
    'as'        =>'rating-star-one',
]);
Route::get('/rating-star-two/{productId}/{customerId}',[
    'uses'      =>'RatingController@ratingStarTwo',
    'as'        =>'rating-star-two',
]);
Route::get('/rating-star-three/{productId}/{customerId}',[
    'uses'      =>'RatingController@ratingStarThree',
    'as'        =>'rating-star-three',
]);
Route::get('/rating-star-four/{productId}/{customerId}',[
    'uses'      =>'RatingController@ratingStarFour',
    'as'        =>'rating-star-four',
]);
Route::get('/rating-star-five/{productId}/{customerId}',[
    'uses'      =>'RatingController@ratingStarFive',
    'as'        =>'rating-star-five',
]);
Route::post('/new-review-comment',[
    'uses'      =>'RatingController@newReviewComment',
    'as'        =>'new-review-comment',
]);

Route::group(['middleware'=>'compareMiddleware'],function (){
    //===================compare==============
    Route::post('/new-compare',[
        'uses'      =>'CompareController@saveCompare',
        'as'        =>'new-compare',
    ]);
    Route::get('/compare',[
        'uses'      =>'CompareController@compare',
        'as'        =>'compare',
    ]);
    Route::get('/compare-remove/{id}',[
        'uses'      =>'CompareController@removeCompare',
        'as'        =>'compare-remove',
    ]);

});
Route::group(['middleware'=>'wishListMiddleware'],function (){
    //===================WishList==============
    Route::post('/new-wish-list',[
        'uses'      =>'WishListController@saveWishList',
        'as'        =>'new-wish-list',
    ]);
    Route::get('/wish-list',[
        'uses'      =>'WishListController@wishList',
        'as'        =>'wish-list',
    ]);
    Route::get('/wish-list-remove/{id}',[
        'uses'      =>'WishListController@removeWishList',
        'as'        =>'wish-list-remove',
    ]);

});
Route::group(['middleware'=>'customrMiddleware'],function (){

    Route::post('/update-customer',[
        'uses'      =>'CustomerController@updateCustomer',
        'as'        =>'update-customer',
    ]);
    Route::get('/customer-logout',[
        'uses'      =>'CustomerController@customerLogout',
        'as'        =>'customer-logout',
    ]);

    Route::get('/customer-dashboard',[
        'uses'      =>'CustomerController@customerDashboard',
        'as'        =>'customer-dashboard',
    ]);
    Route::get('/profile',[
        'uses'      =>'CustomerController@customerProfile',
        'as'        =>'profile',
    ]);

//===================Check out ==============
    Route::get('/checkout',[
        'uses'      =>'CheckoutController@index',
        'as'        =>'checkout',
    ]);
//===================shipping ==============
    Route::post('/shipping',[
        'uses'      =>'CheckoutController@saveShipping',
        'as'        =>'shipping',
    ]);
    //=================== order ==============
//Route::post('/new-order',[
//    'uses'      =>'CheckoutController@saveOrder',
//    'as'        =>'new-order',
//]);
    Route::get('/order-list',[
        'uses'      =>'CustomerController@orderList',
        'as'        =>'order-list',
    ]);
    Route::get('/order-details/{id}',[
        'uses'      =>'CustomerController@viewOrderInvoice',
        'as'        =>'order-details',
    ]);
    //=================== apply coupon code ==============
    Route::post('/apply-coupon', [
        'uses' => 'CouponController@applyCoupon',
        'as' => 'apply-coupon',
    ]);
});
//=================== payment Gateway ==============

Route::get('/payment','paymentController@index');

Route::post('/success','paymentController@success')->name('success');

Route::post('/fail','paymentController@fail')->name('fail');



Auth::routes([
    'register' => false,
    'reset' => false,
    'verify' => false,
    ]);

Route::group(['middleware'=>'auth'],function (){

    Route::get('/home', 'HomeController@index')->name('home');

//    Start Category

    Route::get('/add-category', [
        'uses'          =>'CategoryController@index',
        'as'            =>'add-category',
    ]);
    Route::post('/new-category', [
        'uses'          =>'CategoryController@saveCategory',
        'as'            =>'new-category',
    ]);
    Route::get('/published-category/{id}',[
        'uses'  =>'CategoryController@publishedCategory',
        'as'    =>'published-category'
    ]);

    Route::get('/unpublished-category/{id}',[
        'uses'  =>'CategoryController@unpublishedCategory',
        'as'    =>'unpublished-category'
    ]);
     Route::get('/edit-category/{id}',[
        'uses'  =>'CategoryController@editCategory',
        'as'    =>'edit-category'
    ]);
    Route::post('update-category',[
        'uses'  =>'CategoryController@updateCategory',
        'as'    =>'update-category'
    ]);

    Route::get('/delete-category/{id}',[
        'uses'  =>'CategoryController@deleteCategory',
        'as'    =>'delete-category'
    ]);

//    End Category

//    Start sub category
    Route::get('/sub-category',[
        'uses'      =>'SubCategoryController@index',
        'as'        =>'sub-category',
    ]);
    Route::post('/new-sub-category', [
        'uses'          =>'SubCategoryController@saveSubCategory',
        'as'            =>'new-sub-category',
    ]);
    Route::get('/manage-sub-category',[
        'uses'  =>'SubCategoryController@manageSubCategory',
        'as'    =>'manage-sub-category',
    ]);
    Route::get('/published-sub-category/{id}',[
        'uses'  =>'SubCategoryController@publishedSubCategory',
        'as'    =>'published-sub-category'
    ]);

    Route::get('/unpublished-sub-category/{id}',[
        'uses'  =>'SubCategoryController@unpublishedSubCategory',
        'as'    =>'unpublished-sub-category'
    ]);
    Route::get('/edit-sub-category/{id}',[
        'uses'  =>'SubCategoryController@editSubCategory',
        'as'    =>'edit-sub-category'
    ]);
    Route::post('/update-sub-category', [
        'uses'          =>'SubCategoryController@updateSubCategory',
        'as'            =>'update-sub-category',
    ]);

    Route::get('/delete-sub-category/{id}',[
        'uses'  =>'SubCategoryController@deleteSubCategory',
        'as'    =>'delete-sub-category'
    ]);

//    End sub category

//----------Start brands Module----------
    Route::get('/add-brand', [
        'uses'          =>'BrandController@index',
        'as'            =>'add-brand',
    ]);
    Route::post('/new-brand', [
        'uses'          =>'BrandController@saveBrand',
        'as'            =>'new-brand',
    ]);
    Route::get('/manage-brand',[
        'uses'  =>'BrandController@manageBrand',
        'as'    =>'manage-brand',
    ]);
    Route::get('/published-brand/{id}',[
        'uses'  =>'BrandController@publishedBrand',
        'as'    =>'published-brand'
    ]);

    Route::get('/unpublished-brand/{id}',[
        'uses'  =>'BrandController@unpublishedBrand',
        'as'    =>'unpublished-brand'
    ]);

    Route::get('/delete-brand/{id}',[
        'uses'  =>'BrandController@deleteBrand',
        'as'    =>'delete-brand'
    ]);

//----------End brands Module----------
//----------Start Supplier Module----------
    Route::get('/add-supplier', [
        'uses'          =>'SupplierController@index',
        'as'            =>'add-supplier',
    ]);
    Route::post('/new-supplier', [
        'uses'          =>'SupplierController@saveSupplier',
        'as'            =>'new-supplier',
    ]);
    Route::get('/manage-supplier',[
        'uses'  =>'SupplierController@manageSupplier',
        'as'    =>'manage-supplier',
    ]);
    Route::get('/published-supplier/{id}',[
        'uses'  =>'SupplierController@publishedSupplier',
        'as'    =>'published-supplier'
    ]);

    Route::get('/unpublished-supplier/{id}',[
        'uses'  =>'SupplierController@unpublishedSupplier',
        'as'    =>'unpublished-supplier'
    ]);

    Route::get('/delete-supplier/{id}',[
        'uses'  =>'SupplierController@deleteSupplier',
        'as'    =>'delete-supplier'
    ]);

//----------End Supplier Module----------

//----------Start Products Module----------
    Route::get('/add-product', [
        'uses'          =>'ProductController@addProduct',
        'as'            =>'add-product',
    ]);
    Route::post('/new-product', [
        'uses'          =>'ProductController@saveProduct',
        'as'            =>'new-product',
    ]);
    Route::get('/select-sub-category/{id}',[
        'uses'  =>'ProductController@selectSubCategoryByCategoryId',
        'as'    =>'select-sub-category'
    ]);


    Route::get('/manage-product',[
        'uses'  =>'ProductController@manageProduct',
        'as'    =>'manage-product',
    ]);
    Route::get('/edit-product/{id}',[
        'uses'  =>'ProductController@editProductInfo',
        'as'    =>'edit-product'
    ]);
    Route::get('/view-product/{id}',[
        'uses'  =>'ProductController@viewProductInfo',
        'as'    =>'view-product'
    ]);
    Route::post('/update-product',[
        'uses'  =>'ProductController@updateProductInfo',
        'as'    =>'update-product'
    ]);
    Route::get('/published-product/{id}',[
        'uses'  =>'ProductController@publishedProductInfo',
        'as'    =>'published-product'
    ]);

    Route::get('/unpublished-product/{id}',[
        'uses'  =>'ProductController@unpublishedProductInfo',
        'as'    =>'unpublished-product'
    ]);
    Route::get('/delete-product/{id}',[
        'uses'  =>'ProductController@deleteProductInfo',
        'as'    =>'delete-product'
    ]);
//----------End Products Module----------

    //===================Order==============
    Route::get('/manage-order',[
        'uses'      =>'OrderController@manageOrder',
        'as'        =>'manage-order',
    ]);

    Route::get('/pending-order',[
        'uses'      =>'OrderController@pendingOrder',
        'as'        =>'pending-order',
    ]);
    Route::get('/success-order',[
        'uses'      =>'OrderController@successOrder',
        'as'        =>'success-order',
    ]);
    Route::get('/cancel-order',[
        'uses'      =>'OrderController@cancelOrder',
        'as'        =>'cancel-order',
    ]);

    Route::get('/view-order/{id}',[
        'uses'      =>'OrderController@viewOrderDetails',
        'as'        =>'view-order',
    ]);
    Route::get('/edit-order/{id}',[
        'uses'      =>'OrderController@editOrder',
        'as'        =>'edit-order',
    ]);
    Route::post('/update-order',[
        'uses'      =>'OrderController@updateOrder',
        'as'        =>'update-order',
    ]);
    Route::get('/view-order-invoice/{id}',[
        'uses'      =>'OrderController@viewOrderInvoice',
        'as'        =>'view-order-invoice',
    ]);
    Route::get('/delete-order/{id}',[
        'uses'      =>'OrderController@deleteOrder',
        'as'        =>'delete-order',
    ]);
//     -----------------ADD SLIDER START-----------------
    Route::get('/add-slider', [
        'uses' => 'SliderController@addSlider',
        'as'   => 'add-slider',
    ]);
    Route::post('/new-slider',[
        'uses'  =>'SliderController@saveSlider',
        'as'    =>'new-slider',
    ]);


    Route::get('/view-slider/{id}',[
        'uses'  =>'SliderController@viewSlider',
        'as'    =>'view-slider'
    ]);

    Route::get('/edit-slider/{id}',[
        'uses'  =>'SliderController@editSlider',
        'as'    =>'edit-slider'
    ]);

    Route::post('/update-slider',[
        'uses'  =>'SliderController@updateSlider',
        'as'    =>'update-slider'
    ]);

    Route::get('/published-slider/{id}',[
        'uses'  =>'SliderController@publishedSlider',
        'as'    =>'published-slider'
    ]);

    Route::get('/unpublished-slider/{id}',[
        'uses'  =>'SliderController@unpublishedSlider',
        'as'    =>'unpublished-slider'
    ]);

    Route::get('/delete-slider/{id}',[
        'uses'  =>'SliderController@deleteSlider',
        'as'    =>'delete-slider'
    ]);
//     -----------------ADD SLIDER END-------------------
    // -----------------ADD Gallery START-----------------
    Route::get('/add-gallery', [
        'uses' => 'GalleryController@addGallery',
        'as' => 'add-gallery',
    ]);
    Route::post('/new-gallery', [
        'uses' => 'GalleryController@saveGallery',
        'as' => 'new-gallery',
    ]);

    Route::get('/manage-gallery', [
        'uses' => 'GalleryController@manageGallery',
        'as' => 'manage-gallery',
    ]);

    Route::get('/edit-gallery/{id}', [
        'uses' => 'GalleryController@editGallery',
        'as' => 'edit-gallery'
    ]);

    Route::post('/update-gallery', [
        'uses' => 'GalleryController@updateGallery',
        'as' => 'update-gallery'
    ]);

    Route::get('/published-gallery/{id}', [
        'uses' => 'GalleryController@publishedGallery',
        'as' => 'published-gallery'
    ]);

    Route::get('/unpublished-gallery/{id}', [
        'uses' => 'GalleryController@unpublishedGallery',
        'as' => 'unpublished-gallery'
    ]);

    Route::get('/delete-gallery/{id}', [
        'uses' => 'GalleryController@deleteGallery',
        'as' => 'delete-gallery'
    ]);
//     -----------------ADD Gallery END-------------------

    //     -----------------ADD Blog START-----------------

    Route::resource('/blog-category',BlogCategoryController::class,['names' => 'blog.category']);

    Route::get('/publication-blog-category/{id}', [
        'uses' => 'BlogCategoryController@publication',
        'as' => 'publication-blog-category'
    ]);
    Route::get('/edit-blog-category/{id}', [
        'uses' => 'BlogCategoryController@editBlogCategory',
        'as' => 'edit.blog.category'
    ]);
    Route::post('/update-blog-category', [
        'uses' => 'BlogCategoryController@updateBlogCategory',
        'as' => 'update.blog.category'
    ]);
    Route::resource('/blog',BlogController::class,['names' => 'blog']);
    Route::get('/blog-publication/{id}', [
        'uses' => 'BlogController@BlogStatus',
        'as' => 'blog.publication'
    ]);
    Route::get('/blog-edit/{id}', [
        'uses' => 'BlogController@BlogEdit',
        'as' => 'blog.edit'
    ]);
    Route::post('/blog-update', [
        'uses' => 'BlogController@BlogUpdate',
        'as' => 'blog.update'
    ]);
    Route::get('/blog-delete/{id}', [
        'uses' => 'BlogController@BlogDelete',
        'as' => 'blog.delete'
    ]);
//    Route::get('/add-blog', [
//        'uses' => 'BlogController@addBlog',
//        'as' => 'add-blog',
//    ]);
//
//    Route::post('/new-blog', [
//        'uses' => 'BlogController@saveBlog',
//        'as' => 'new-blog',
//    ]);
//
//    Route::get('/manage-blog', [
//        'uses' => 'BlogController@manageBlog',
//        'as' => 'manage-blog',
//    ]);
//
//    Route::get('/view-blog/{id}', [
//        'uses' => 'BlogController@viewBlog',
//        'as' => 'view-blog'
//    ]);
//
//    Route::get('/edit-blog/{id}', [
//        'uses' => 'BlogController@editBlog',
//        'as' => 'edit-blog'
//    ]);
//
//    Route::post('/update-blog', [
//        'uses' => 'BlogController@updateBlog',
//        'as' => 'update-blog'
//    ]);
//

//
//    Route::get('/unpublished-blog/{id}', [
//        'uses' => 'BlogController@unpublishedBlog',
//        'as' => 'unpublished-blog'
//    ]);
//
//    Route::get('/delete-blog/{id}', [
//        'uses' => 'BlogController@deleteBlog',
//        'as' => 'delete-blog'
//    ]);
//     -----------------ADD BLog END-------------------

//     -----------------ADD Page START-----------------
    Route::get('/add-page', [
        'uses' => 'PageController@addPage',
        'as' => 'add-page',
    ]);

    Route::post('/new-page', [
        'uses' => 'PageController@savePage',
        'as' => 'new-page',
    ]);

    Route::get('/manage-page', [
        'uses' => 'PageController@managePage',
        'as' => 'manage-page',
    ]);

    Route::get('/view-page/{id}', [
        'uses' => 'PageController@viewPage',
        'as' => 'view-page'
    ]);

    Route::get('/edit-page/{id}', [
        'uses' => 'PageController@editPage',
        'as' => 'edit-page'
    ]);

    Route::post('/update-page', [
        'uses' => 'PageController@updatePage',
        'as' => 'update-page'
    ]);

    Route::get('/published-page/{id}', [
        'uses' => 'PageController@publishedPage',
        'as' => 'published-page'
    ]);

    Route::get('/unpublished-page/{id}', [
        'uses' => 'PageController@unpublishedPage',
        'as' => 'unpublished-page'
    ]);

    Route::get('/delete-page/{id}', [
        'uses' => 'PageController@deletePage',
        'as' => 'delete-page'
    ]);
//     -----------------ADD page END-------------------

//===================View upload shopping list==============
    Route::get('/view-upload-shop',[
        'uses'      =>'ShopController@viewSploadShop',
        'as'        =>'view-upload-shop',
    ]);

    //===================Stock Management==============
    Route::get('/manage-stock',[
        'uses'      =>'StockController@index',
        'as'        =>'manage-stock',
    ]);
    Route::get('/edit-stock/{id}',[
        'uses'  =>'StockController@editStock',
        'as'    =>'edit-stock'
    ]);
    Route::post('/update-stock',[
        'uses'  =>'StockController@updateStock',
        'as'    =>'update-stock'
    ]);

    //===================Sells Report==============
    Route::get('/sells-report',[
        'uses'      =>'OrderController@sellsReport',
        'as'        =>'sells-report',
    ]);
    Route::get('/daily-sells-report',[
        'uses'      =>'OrderController@dailySellsReport',
        'as'        =>'daily-sells-report',
    ]);
    Route::get('/weekly-sells-report',[
        'uses'      =>'OrderController@weeklySellsReport',
        'as'        =>'weekly-sells-report',
    ]);
    Route::get('/monthly-sells-report',[
        'uses'      =>'OrderController@monthlySellsReport',
        'as'        =>'monthly-sells-report',
    ]);

    Route::post('/search-order-date',[
        'uses'  =>'OrderController@searchOrderDate',
        'as'    =>'search-order-date',
    ]);

    Route::get('/order-detail/{id}',[
        'uses'      =>'CustomerController@adminViewOrderInvoice',
        'as'        =>'order-detail',
    ]);

    //===================color==============
    Route::resource('/color',ColorController::class,['names' => 'color']);

    //===================size==============
    Route::resource('/size',SizeController::class,['names' => 'size']);
    //===================lens==============
    Route::resource('/lens-type',LensTypeController::class,['names' => 'lens-type']);
    Route::resource('/lens-price',LensPriceController::class,['names' => 'lens-price']);
    //===================flash-sale==============
    Route::resource('/flash-sale',FlashSaleController::class,['names' => 'flash-sale']);
    Route::get('/flash-sale-edit/{id}',[
        'uses'      =>'FlashSaleController@flashSaleEdit',
        'as'        =>'flash-sale-edit',
    ]);
    Route::get('/delete-flash-sale/{id}',[
        'uses'      =>'FlashSaleController@flashSaleDelete',
        'as'        =>'delete-flash-sale',
    ]);
    Route::post('/flash-sale-price',[
        'uses'      =>'FlashSaleController@flashSalePrice',
        'as'        =>'flash-sale-price',
    ]);
    //===================Shipping Rate==============
    Route::get('/shipping-rate',[
        'uses'      =>'ShippingRateController@index',
        'as'        =>'shipping-rate',
    ]);

    Route::post('/new-shipping-rate',[
        'uses'      =>'ShippingRateController@saveShippingRate',
        'as'        =>'new-shipping-rate',
    ]);
    Route::get('/publication-info/{id}',[
        'uses'      =>'ShippingRateController@publicationInfo',
        'as'        =>'publication-info',
    ]);
    Route::get('/delete/{id}',[
        'uses'      =>'ShippingRateController@delete',
        'as'        =>'delete',
    ]);
    Route::get('/edit/{id}',[
        'uses'      =>'ShippingRateController@edit',
        'as'        =>'edit',
    ]);
    Route::post('/update',[
        'uses'      =>'ShippingRateController@update',
        'as'        =>'update',
    ]);

    Route::get('/shipping-division',[
        'uses'      =>'ShippingRateController@division',
        'as'        =>'shipping-division',
    ]);
    Route::post('/new-division',[
        'uses'      =>'ShippingRateController@saveDivision',
        'as'        =>'new-division',
    ]);
    Route::get('/division-publication-info/{id}',[
        'uses'      =>'ShippingRateController@divisionPublicationInfo',
        'as'        =>'division-publication-info',
    ]);
    Route::get('/division-edit/{id}',[
        'uses'      =>'ShippingRateController@divisionEdit',
        'as'        =>'division-edit',
    ]);
    Route::post('/division-update',[
        'uses'      =>'ShippingRateController@divisionUpdate',
        'as'        =>'division-update',
    ]);

    Route::get('/free-shipping/{id}',[
        'uses'      =>'ShippingRateController@freeShipping',
        'as'        =>'free-shipping',
    ]);

//===================Logo ==============
    Route::get('/add-logo', [
        'uses' => 'LogoController@addLogo',
        'as' => 'add-logo',
    ]);
    Route::post('/new-logo', [
        'uses' => 'LogoController@saveLogo',
        'as' => 'new-logo',
    ]);
    Route::get('/view-logo/{id}', [
        'uses' => 'LogoController@viewLogo',
        'as' => 'view-logo'
    ]);

    Route::get('/edit-logo/{id}', [
        'uses' => 'LogoController@editLogo',
        'as' => 'edit-logo'
    ]);

    Route::post('/update-logo', [
        'uses' => 'LogoController@updateLogo',
        'as' => 'update-logo'
    ]);

    Route::get('/published-logo/{id}', [
        'uses' => 'LogoController@publishedLogo',
        'as' => 'published-logo'
    ]);

    Route::get('/unpublished-logo/{id}', [
        'uses' => 'LogoController@unpublishedLogo',
        'as' => 'unpublished-logo'
    ]);

    Route::get('/delete-logo/{id}', [
        'uses' => 'LogoController@deleteLogo',
        'as' => 'delete-logo'
    ]);

//===================Contact ==============
    Route::get('/add-contact', [
        'uses' => 'ContactController@addContact',
        'as' => 'add-contact',
    ]);
    Route::post('/new-contact', [
        'uses' => 'ContactController@saveContact',
        'as' => 'new-contact',
    ]);
    Route::get('/view-contact/{id}', [
        'uses' => 'ContactController@viewContact',
        'as' => 'view-contact'
    ]);

    Route::get('/edit-contact/{id}', [
        'uses' => 'ContactController@editContact',
        'as' => 'edit-contact'
    ]);

    Route::post('/update-contact', [
        'uses' => 'ContactController@updateContact',
        'as' => 'update-contact'
    ]);

    Route::get('/published-contact/{id}', [
        'uses' => 'ContactController@publishedContact',
        'as' => 'published-contact'
    ]);

    Route::get('/unpublished-contact/{id}', [
        'uses' => 'ContactController@unpublishedContact',
        'as' => 'unpublished-contact'
    ]);

    Route::get('/delete-contact/{id}', [
        'uses' => 'ContactController@deleteContact',
        'as' => 'delete-contact'
    ]);
//===================Newsletter ==============
    Route::get('/newsletter', [
        'uses' => 'ContactController@newsLetter',
        'as' => 'newsletter',
    ]);
//=================== coupon code ==============
    Route::get('/coupon-code', [
        'uses' => 'CouponController@index',
        'as' => 'coupon-code',
    ]);
    Route::post('/new-coupon', [
        'uses' => 'CouponController@saveCoupon',
        'as' => 'new-coupon',
    ]);
    Route::get('/coupon-status/{id}', [
        'uses' => 'CouponController@couponStatus',
        'as' => 'coupon-status',
    ]);
    Route::get('/edit-coupon/{id}', [
        'uses' => 'CouponController@editCoupon',
        'as' => 'edit-coupon',
    ]);
    Route::post('/update-coupon', [
        'uses' => 'CouponController@updateCoupon',
        'as' => 'update-coupon',
    ]);
    Route::get('/delete-coupon/{id}', [
        'uses' => 'CouponController@deleteCoupon',
        'as' => 'delete-coupon',
    ]);

    Route::get('/coupon-display', [
        'uses' => 'CouponController@couponDisplay',
        'as' => 'coupon-display',
    ]);
    Route::post('/coupon-display', [
        'uses' => 'CouponController@saveCouponDisplay',
        'as' => 'coupon-display',
    ]);
    Route::get('/coupon-display-status/{id}', [
        'uses' => 'CouponController@couponDisplayStatus',
        'as' => 'coupon-display-status',
    ]);
    Route::get('/edit-coupon-display/{id}', [
        'uses' => 'CouponController@editCouponDisplayStatus',
        'as' => 'edit-coupon-display',
    ]);
    Route::post('/update-coupon-display', [
        'uses' => 'CouponController@updateCouponDisplay',
        'as' => 'update-coupon-display',
    ]);
    Route::get('/delete-coupon-display/{id}', [
        'uses' => 'CouponController@deleteCouponDisplayStatus',
        'as' => 'delete-coupon-display',
    ]);
    Route::get('/subscribe-box', [
        'uses' => 'CouponController@subscribeBox',
        'as' => 'subscribe-box',
    ]);
    Route::post('/subscribe-box', [
        'uses' => 'CouponController@saveSubscribeBox',
        'as' => 'subscribe-box',
    ]);
    Route::get('/eidt-subscribe-box/{id}', [
        'uses' => 'CouponController@editSubscribeBox',
        'as' => 'edit-subscribe-box',
    ]);
    Route::post('/update-subscribe-box', [
        'uses' => 'CouponController@updateSubscribeBox',
        'as' => 'update-subscribe-box',
    ]);
    Route::get('/delete-subscribe-box/{id}', [
        'uses' => 'CouponController@deleteSubscribeBox',
        'as' => 'delete-subscribe-box',
    ]);
    Route::get('/status-subscribe-box/{id}', [
        'uses' => 'CouponController@statusSubscribeBox',
        'as' => 'status-subscribe-box',
    ]);
    Route::post('/subscriber', [
        'uses' => 'CouponController@saveSubscriber',
        'as' => 'subscriber',
    ]);
    Route::get('/subscriber-list', [
        'uses' => 'CouponController@subscriberlist',
        'as' => 'subscriber-list',
    ]);
    Route::get('/delete-subscriber/{id}', [
        'uses' => 'CouponController@deleteSubscriber',
        'as' => 'delete-subscriber',
    ]);
});




