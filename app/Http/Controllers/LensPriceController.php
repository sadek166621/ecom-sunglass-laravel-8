<?php

namespace App\Http\Controllers;

use App\LensPrice;
use App\LensType;
use Illuminate\Http\Request;
use DB;

class LensPriceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return  view('admin.lens.lens-price',[
            'lenses'=>LensType::all(),
            'lenses2'=>LensPrice::all(),
//            'lenses2'=>DB::table('lens_prices')
//                ->join('lens_types', 'lens_prices.lens_id', '=', 'lens_types.id')
//                ->select('lens_prices.*', 'lens_types.lens_type')
//                ->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $lens=new LensPrice();
        $lens->lens_id=$request->lens_id;
        $lens->lens_price=$request->lens_price;
        $lens->publication_status=$request->publication_status;
        $lens->save();
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

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
