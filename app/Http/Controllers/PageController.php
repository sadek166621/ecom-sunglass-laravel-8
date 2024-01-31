<?php

namespace App\Http\Controllers;

use App\Page;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function shippingReturns(){
        return view('frontend.page.page',[
            'page'=> Page::where('publication_status',1 && 'shipping_returns',1)->orderby('id', 'desc')->take(1)->first(),
        ]);
    }

    public function secureShopping(){
        return view('frontend.page.page',[
            'page'=> Page::where('publication_status',1 && 'secure_shopping',1)->orderby('id', 'desc')->take(1)->first(),
        ]);
    }

    public function Creative(){
        return view('frontend.page.page',[
            'page'=> Page::where('publication_status',1 && 'creative',1)->orderby('id', 'desc')->take(1)->first(),
        ]);
    }

    public function deliveryInformation(){
        return view('frontend.page.page',[
            'page'=> Page::where('publication_status',1 && 'delivery_information',1)->orderby('id', 'desc')->take(1)->first(),
        ]);
    }

    public function privacyPolicy(){
        return view('frontend.page.page',[
            'page'=> Page::where('publication_status',1 && 'privacy_policy',1)->orderby('id', 'desc')->take(1)->first(),
        ]);
    }

    public function Conditions(){
        return view('frontend.page.page',[
            'page'=> Page::where('publication_status',1 && 'conditions',1)->orderby('id', 'desc')->take(1)->first(),
        ]);
    }

    public function frequentlyQuestions(){
        return view('frontend.page.page',[
            'page'=> Page::where('publication_status',1 && 'frequently_questions',1)->orderby('id', 'desc')->take(1)->first(),
        ]);
    }




    public function addPage(){
        $page = Page::orderby('id','desc')->get();
        return view('admin.page.add-page',[
            'page' =>$page
        ]);
    }
    private function savebasicsliderInfo(Request $request){
        $this->validate($request, [

        ]);
        $page = new Page();
        $page->description= $request->description;
        $page->shipping_returns= $request->shipping_returns;
        $page->secure_shopping= $request->secure_shopping;
        $page->creative= $request->creative;
        $page->delivery_information= $request->delivery_information;
        $page->privacy_policy= $request->privacy_policy;
        $page->conditions= $request->conditions;
        $page->frequently_questions= $request->frequently_questions;
        $page->publication_status= $request->publication_status;
        $page->save();
    }

    public function savePage(Request $request){
        $this->savebasicsliderInfo($request);
        return redirect('/add-page')->with('message','page save Successfully');
    }
    public function viewPage($id){
        $page = Page::find($id);
        return view('admin.page.view-page',[
            'page' =>$page
        ]);

    }
    public function editPage($id){
        $page = Page::find($id);
        return view('admin.page.edit-page',[
            'page' =>$page
        ]);

    }
    private function updateSliderBasicInfo($request, $imageUrl=null){
        $page= Page::find($request->page_id);
        $page->description= $request->description;
        $page->shipping_returns= $request->shipping_returns;
        $page->secure_shopping= $request->secure_shopping;
        $page->creative= $request->creative;
        $page->delivery_information= $request->delivery_information;
        $page->privacy_policy= $request->privacy_policy;
        $page->conditions= $request->conditions;
        $page->frequently_questions= $request->frequently_questions;
        $page->publication_status= $request->publication_status;
        $page->save();
    }

    public  function  updatePage(Request $request){
        $this->updateSliderBasicInfo($request);
        return redirect('/add-page')->with('message','Info update Successfully');
    }
    public function publishedPage($id){
        $page = Page::find($id);
        $page->publication_status= 0;
        $page->save();
        return redirect('/add-page')->with('message','Info unpublished Successfully');
    }
    public function unpublishedPage($id){
        $page = Page::find($id);
        $page->publication_status= 1;
        $page->save();
        return redirect('/add-page')->with('message','Info published Successfully');
    }
    public function deletePage($id){
        $page = Page::find($id);
        $page->delete();
        return redirect('/add-page')->with('message','Info delete Successfully');
    }
}
