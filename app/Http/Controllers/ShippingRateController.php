<?php

namespace App\Http\Controllers;

use App\Division;
use App\FreeShipping;
use App\shippingRate;
use Illuminate\Http\Request;
use DB;

class ShippingRateController extends Controller
{
    public function index(){
        return view('admin.shipping.index',[
            'divisions'=>Division::all(),
            'shippings'=>DB::table('shipping_rates')
            ->join('divisions', 'shipping_rates.division_id', '=','divisions.id')
            ->select('shipping_rates.*','divisions.division')
            ->get(),
        ]);
    }
    public function saveShippingRate(Request $request){
        $shipping=new shippingRate();
        $shipping->division_id=$request->division_id;
        $shipping->state=$request->state;
        $shipping->rate=$request->rate;
        $shipping->publication_status=$request->publication_status;
        $shipping->save();
        return back();
    }
    public function publicationInfo($id){
        $shipping= shippingRate::find($id);
        if ($shipping->publication_status == 1 ){
            $shipping->publication_status = 0;
            $shipping->save();
            return back()->with('message','Info Update Successfully');
        }else{
            $shipping->publication_status = 1;
            $shipping->save();
            return back()->with('message','Info Update Successfully');
        }
    }
    public function delete($id){
        $shipping= shippingRate::find($id);
        $shipping->delete();
        return back()->with('message','Delete Successfully');
    }
    public function edit($id){
        return view('admin.shipping.edit',[
            'shipping'=>shippingRate::find($id),
            'divisions'=>Division::all(),
        ]);
    }
    public function update(Request $request){
        $shipping=shippingRate::find($request->id);
        $shipping->division_id=$request->division_id;
        $shipping->state=$request->state;
        $shipping->rate=$request->rate;
        $shipping->publication_status=$request->publication_status;
        $shipping->save();
        return redirect('/shipping-rate')->with('message','Info Update Successfully');
    }
    public function division(){
        return view('admin.shipping.division',[
            'shippings'=>Division::all()
        ]);
    }
    public function saveDivision(Request $request){
        $division=new Division();
        $division->division =$request->division;
        $division->publication_status =$request->publication_status;
        $division->save();
        return back()->with('message','Info Save Successfully');
    }
    public function divisionPublicationInfo($id){
        $shipping= Division::find($id);
        if ($shipping->publication_status == 1 ){
            $shipping->publication_status = 0;
            $shipping->save();
            return back()->with('message','Info Update Successfully');
        }else{
            $shipping->publication_status = 1;
            $shipping->save();
            return back()->with('message','Info Update Successfully');
        }
    }
    public function divisionEdit($id){
        return view('admin.shipping.division-edit',[
            'shipping'=>Division::find($id),
        ]);
    }
    public function divisionUpdate(Request $request){
        $division=Division::find($request->id);
        $division->division =$request->division;
        $division->publication_status =$request->publication_status;
        $division->save();
        return redirect('/shipping-division')->with('message','Info Update Successfully');
    }
    public function freeShipping($id){
        $freeShipping =FreeShipping::find($id);
        if ($freeShipping->free_shipping == 1 ){
            $freeShipping->free_shipping = 0;
            $freeShipping->save();
            return back();
        }else{
            $freeShipping->free_shipping = 1;
            $freeShipping->save();
            return back();
        }

    }


}
