<?php

namespace App\Http\Middleware;

use Closure;
use Session;

class WishListMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Session::get('customerId'))
            return $next($request);
        else{
            return redirect('/customer-login')->with('message','We are very sorry because we can not add this product to your Wish list. To add product in wish list  need to register the Site.');
        }
    }
}
