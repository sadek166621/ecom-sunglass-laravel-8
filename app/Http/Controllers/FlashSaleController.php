<?php

namespace App\Http\Controllers;

use App\FlashSale;
use App\FlashSaleItem;
use App\Product;
use Illuminate\Http\Request;
use DB;
use phpDocumentor\Reflection\Types\Null_;

class FlashSaleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.flash-sale.index', [
            'allPublishedProducts' => Product::Where('publication_status', 1)->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.flash-sale.manage', [
            'flashSales' => FlashSale::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */

    private function asd(Request $request){
        $flash = new FlashSale();
        $flash->cam_name = $request->cam_name;
        $flash->cam_date = $request->cam_date;
        $flash->cam_time = $request->cam_time;
        $flash->publication_status = 1;
        $flash->save();
        $flashId = $flash->id;
//        return $flashId;
        $flash_sale_items = count($request->flash_sale_item);
        if ($flash_sale_items !== null) {
            for ($i = 0; $i < $flash_sale_items; $i++) {
                $flashSaleItem = new FlashSaleItem();
                $flashSaleItem->flash_id = $flashId;
                $flashSaleItem->product_id = $request->flash_sale_item[$i];
                $flashSaleItem->flash_sale_item = $request->flash_sale_item[$i];
                $flashSaleItem->save();
            }
        }
    }
    private function asw($request,$flashId){
        $flash_sale_items = count($request->flash_sale_item);
        if ($flash_sale_items !== null) {
            for ($i = 0; $i < $flash_sale_items; $i++) {
                $flashSaleItem = new FlashSaleItem();
                $flashSaleItem->flash_id = $flashId;
                $flashSaleItem->product_id = $request->flash_sale_item[$i];
                $flashSaleItem->flash_sale_item = $request->flash_sale_item[$i];
                $flashSaleItem->save();
                $flash_sale_prices = count($request->flash_sale_price);
                if ($ast=!is_null($flash_sale_prices)) {
                    for ($j=0; $j<$ast; $j++) {
                        $flashSaleItem2 =FlashSaleItem::find($flashId);
                        $flashSaleItem2->flash_sale_price = 50;
                        $flashSaleItem2->save();
                    }
                }
            }
        }
    }
    private function art($request,$flashId){
//        $flash_sale_prices = count($request->flash_sale_price);
//        $fls = array_filter($flash_sale_prices, function($fls) {
//            return trim($fls) !== "";
//        });
        $flash_sale_prices = count($request->flash_sale_price);
//        $astt =array_filter($flash_sale_prices,'strlen');
//        print_r($astt);
//        $astt=$flash_sale_prices!==null;
//        if ($ast=!is_null($flash_sale_prices)) {
//            for ($j=0; $j<$ast; $j++) {
//                $flashSaleItem2 =FlashSaleItem::find($flashId);
//                $flashSaleItem2->flash_sale_price = 50;
//                $flashSaleItem2->save();
//            }
//        }
    }

    public function store(Request $request)
    {
        $flashId=$this->asd($request);
//        $this->asw($request,$flashId);
//        $this->art($request,$flashId);
        return back();
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    public function flashSaleDelete($id){
        $flashSale = FlashSale::find($id);
        $flashSale->delete();
        $flashSaleItems = FlashSaleItem::where('flash_id', $id)->get();
        foreach ($flashSaleItems as $flashSaleItem) {
            $flashSaleItem->delete();
        }
        return back();

    }
    public function flashSaleEdit($id){
        $allPublishedProducts = DB::table('flash_sale_items')
            ->join('flash_sales', 'flash_sale_items.flash_id', '=','flash_sales.id')
            ->join('products', 'flash_sale_items.product_id', '=','products.id')
            ->select('products.*','products.id','flash_sales.cam_name','flash_sales.cam_date','flash_sales.cam_time','flash_sale_items.id','flash_sale_items.flash_id','flash_sale_items.product_id','flash_sale_items.flash_sale_item','flash_sale_items.flash_sale_price')
            ->where('flash_sale_items.flash_id',$id)
            ->get();
        $allPublishedProductsID = DB::table('flash_sale_items')
            ->join('products', 'flash_sale_items.product_id', '=','products.id')
            ->select('products.id','flash_sale_items.flash_id')
            ->where('flash_sale_items.flash_id',$id)
            ->get();
//        return $allPublishedProductsID;
        return view('admin.flash-sale.price', [
            'allPublishedProducts' => $allPublishedProducts,
            'allPublishedProductsID' => $allPublishedProductsID,
        ]);
    }
    public function flashSalePrice(Request $request){
//        return $request;
//        $flash_sale_prices = count($request->flash_sale_price);
        $prices=FlashSaleItem::where('flash_id',$request->flash_id)
//            ->where('flash_sale_price',null)
            ->get();
//        return $prices;
//        foreach ($request->all() as $rq){
//            return $rq['flash_id'];
//        }

//        return $request->flash_id;
//        $ppr=FlashSaleItem::find($request->flash_sale_price);
//        for($i=0;$i<$flash_sale_prices;$i++){
//            $prices->flash_sale_price=$request->flash_sale_price[$i];
//            $prices->save();
//        }
//        foreach ($prices as $price){
//        $flash_sale_prices2=$request->flash_sale_price;
//        if ($flash_sale_prices2!=null){

            foreach ($prices as $price) {
                $price->flash_sale_price=$price;
                $price->delete();
            }
            $this->asss($request);

//        }


//        }
        return back();
    }
    private function asss($request) {
        $fids=count($request->flash_id);
        for ($i=0;$i<$fids;$i++){
            $prc=new FlashSaleItem();
            $prc->flash_id=$request->flash_id[$i];
            $prc->product_id=$request->product_id[$i];
            $prc->flash_sale_item=$request->flash_sale_item[$i];
            $prc->flash_sale_price=$request->flash_sale_price[$i];
            $prc->save();
        }
//            foreach ($fids as $fid){
//                $prc=new FlashSaleItem();
//                $prc->flash_id=$rq['flash_id'];
//                $prc->product_id=$rq['product_id'];
//                $prc->flash_sale_item=$rq['flash_sale_item'];
//                $prc->flash_sale_price=$rq['flash_sale_price'];
//                $prc->save();
//            }


    }



    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }


}
