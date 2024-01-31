<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('/new-upload-shopping',[
    'uses'  =>'ShopController@saveUploadShopping',
    'as'    =>'new-upload-shopping',
]);

Route::get('/details/{id}',[
    'uses'  =>'EcommerceController@details',
    'as'    =>'details'
]);

//Route::get('/menu/details/{id}',[
//    'uses'  =>'EcommerceController@details',
//    'as'    =>'details'
//]);

