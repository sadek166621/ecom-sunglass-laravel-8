<?php

namespace App\Providers;

use App\Blog;
use App\Brand;
use App\Category;
use App\Contact;
use App\CouponDisplay;
use App\Logo;
use App\Product;
use App\SubCategory;
use App\SubscribModal;
use View;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        View::composer ('frontend.include.headar',function ($view){
            $view->with('categories',Category::where('publication_status',1)->skip(0)->take(10)->get());
            $view->with('scategories',Category::where('publication_status',1)->skip(0)->take(4)->get());
            $view->with('categories1',Category::where('publication_status',1)->get());
            $view->with('categories2',Category::where('publication_status',1)->skip(10)->take(30)->get());
            $view->with('subCategories',SubCategory::where('publication_status',1)->get());
            $view->with('products2',Product::where('publication_status',1)->orderby('id','desc')->take(2)->get());
            $view->with('logo',Logo::where('publication_status',1)->orderby('id','desc')->take(1)->get());
            $view->with('contacts',Contact::where('publication_status',1)->orderby('id', 'desc')->take(1)->get());
            $view->with('coupons',CouponDisplay::where('publication_status',1)->orderby('id', 'desc')->take(1)->get());
        });

        View::composer ('frontend.home.home',function ($view){
            $view->with('categories',Category::where('publication_status',1)->get());
            $view->with('categories1',Category::where('publication_status',1)->get());
        });
        View::composer ('frontend.master',function ($view){
            $view->with('subscribModals',SubscribModal::where('publication_status',1)->orderby('id', 'desc')->take(1)->get());
        });

        View::composer ('frontend.home.home',function ($view){
            $view->with('subCategories',SubCategory::where('publication_status',1)->get());
        });

        View::composer ('frontend.include.footer',function ($view){
            $view->with('products',Product::where('publication_status',1)->orderby('id', 'desc')->take(2)->get());
            $view->with('contacts',Contact::where('publication_status',1)->orderby('id', 'desc')->take(1)->get());
        });

        View::composer ('frontend.include.footer',function ($view){
            $view->with('brands',Brand::where('publication_status',1)->orderby('id', 'desc')->get());
        });

        View::composer ('frontend.include.footer',function ($view){
            $view->with('blogs',Blog::where('publication_status',1)->orderby('id', 'desc')->take(5)->get());

        });

    }
}
