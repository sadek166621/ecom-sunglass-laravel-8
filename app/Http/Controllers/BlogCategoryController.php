<?php

namespace App\Http\Controllers;

use App\BlogCategory;
use Illuminate\Http\Request;

class BlogCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.blog.blog-category',[
            'categories'=> BlogCategory::all()
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
        $blogCategory = new BlogCategory();
        $blogCategory->blog_category_name =$request->blog_category_name;
        $blogCategory->publication_status =$request->publication_status;
        $blogCategory->save();
        return back()->with('message','Blog Category Save Successfully');
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
//    public function show($id)
//    {
//        $blogCategory= BlogCategory::find($id);
//        if ($blogCategory->publication_status == 1 ){
//            $blogCategory->publication_status = 0;
//            $blogCategory->save();
//            return redirect( route('blog.category.index') )->with('message','Blog Category Update Successfully');
//        }else{
//            $blogCategory->publication_status = 1;
//            $blogCategory->save();
//            return redirect( route('blog.category.index') )->with('message','Blog Category Update Successfully');
//        }
//    }
    public function publication($id)
    {
        $blogCategory= BlogCategory::find($id);
        if ($blogCategory->publication_status == 1 ){
            $blogCategory->publication_status = 0;
            $blogCategory->save();
            return redirect( route('blog.category.index') )->with('message','Blog Category Update Successfully');
        }else{
            $blogCategory->publication_status = 1;
            $blogCategory->save();
            return redirect( route('blog.category.index') )->with('message','Blog Category Update Successfully');
        }
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
//    public function edit($id)
//    {
//        return view('admin.blog.edit-blog-category',[
//            'category'=> BlogCategory::findOrFail($id)
//        ]);
//    }
    public function editBlogCategory($id)
    {
        return view('admin.blog.edit-blog-category',[
            'category'=> BlogCategory::findOrFail($id)
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
//    public function update(Request $request, $id)
//    {
//        $blogCategory= BlogCategory::find($id);
//        $blogCategory->blog_category_name =$request->blog_category_name;
//        $blogCategory->publication_status =$request->publication_status;
//        $blogCategory->save();
//        return redirect( route('blog.category.index') )->with('message','Blog Category Update Successfully');
//    }
    public function updateBlogCategory(Request $request)
    {
        $blogCategory= BlogCategory::find($request->blog_category_id);
        $blogCategory->blog_category_name =$request->blog_category_name;
        $blogCategory->publication_status =$request->publication_status;
        $blogCategory->save();
        return redirect( route('blog.category.index') )->with('message','Blog Category Update Successfully');
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
