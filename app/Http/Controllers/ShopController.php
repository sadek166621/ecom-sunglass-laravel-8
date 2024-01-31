<?php

namespace App\Http\Controllers;

use App\UploadShop;
use Illuminate\Http\Request;
use function GuzzleHttp\Promise\all;

class ShopController extends Controller
{
    private function savebasicsliderInfo(Request $request){
        $this->validate($request, [
            'phone' => 'required|string|min:1',
        ]);
        $slider = new UploadShop();
        $slider->phone= $request->phone;
        $slider->image= $this->uploadShopImageInfo($request);
        $slider->save();
    }
    private function uploadShopImageInfo($request){

        $this->validate($request, [
            'image' => 'required|image|mimes:jpeg,png,jpg,JPG,gif,svg|max:10480'
        ]);
        $image = $request->file('image');
        $imageName = rand() . '.' . $image->getClientOriginalExtension();
        $directory = 'image/upload_shop/';
        $imageUrl = $directory.$imageName;
        $image->move($directory, $imageName);
        return $imageUrl;
    }

    public function saveUploadShopping(Request $request){
        $this->savebasicsliderInfo($request);
        return redirect('/')->with('message','Your shop request send Successfully');
    }

    public function viewSploadShop(){

        return view('admin.shop.view-shop',[
            'shops'=> UploadShop::orderby('id','desc')->get()

        ]);
    }
}
