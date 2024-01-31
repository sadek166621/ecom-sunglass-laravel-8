<?php

namespace App\Http\Middleware;

use Closure;
use Session;

class CompareMiddleware
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
            return redirect('/customer-login')->with('message','We are very sorry because we can not add this product to your compare list. To add product in compares list  need to register the Site.');
        }
    }
}
