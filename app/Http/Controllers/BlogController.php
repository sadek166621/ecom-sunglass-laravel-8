<?php

namespace App\Http\Controllers;

use App\Blog;
use App\BlogCategory;
use Illuminate\Http\Request;
use DB;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
//        $blog =DB::table('blogs')
//            ->join('blogcategories', 'blogs.blog_category_id', '=', 'blogcategories.id')
//            ->select('blogcategories.*','blogs.*')
//            ->get();
//        return $blog;

        return view('admin.blog.blog',[
            'blogs'=>DB::table('blogs')
                ->join('blog_categories', 'blogs.blog_category_id', '=', 'blog_categories.id')
                ->select('blog_categories.blog_category_name','blogs.*')
                ->get(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.blog.add-blog',[
            'categories'=>BlogCategory::where('publication_status',1)->get()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [

        ]);
        $blog = new Blog();
        $blog->blog_category_id= $request->blog_category_id;
        $blog->header= $request->header;
        $blog->slug=$this->make_slug($request);
        $blog->description= $request->description;
        $blog->image= $this->saveBlogImageInfo($request);
        $blog->author= $request->author;
        $blog->publication_status= $request->publication_status;
        $blog->save();
        return redirect( route('blog.index') )->with('message','Blog Save Successfully');
    }
    private  function make_slug($request) {
        if ($request->slug){
            $str =$request->slug;
            return preg_replace('/\s+/u', '-', trim($str));
        }
        $str =$request->header;
        return preg_replace('/\s+/u', '-', trim($str));
    }
    private function saveBlogImageInfo($request){

//        $this->validate($request, [
//            'image' => 'required|image|mimes:jpeg,PNG,png,jpg,JPG,gif,svg|max:20480'
//        ]);
        $image = $request->file('image');
        $imageName = 'blog'.'-'.rand() . '.' . $image->extension();
        $directory = 'admin/upload-image/blog-image/';
        $imageUrl = $directory.$imageName;
        $image->move($directory, $imageName);
        return $imageUrl;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
//    public function show($id)
//    {
//        $blog= Blog::find($id);
//        if ($blog->publication_status == 1 ){
//            $blog->publication_status = 0;
//            $blog->save();
//            return redirect( route('blog.index') )->with('message','Blog Update Successfully');
//        }else{
//            $blog->publication_status = 1;
//            $blog->save();
//            return redirect( route('blog.index') )->with('message','Blog Update Successfully');
//        }
//    }
    public function BlogStatus($id)
    {
        $blog= Blog::find($id);
        if ($blog->publication_status == 1 ){
            $blog->publication_status = 0;
            $blog->save();
            return redirect( route('blog.index') )->with('message','Blog Status Successfully');
        }else{
            $blog->publication_status = 1;
            $blog->save();
            return redirect( route('blog.index') )->with('message','Blog Status Successfully');
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
//        return view('admin.blog.edit-blog',[
//            'blog'=> Blog::findOrFail($id),
//            'categories'=>BlogCategory::where('publication_status',1)->get()
//        ]);
//    }
    public function BlogEdit($id)
    {
        return view('admin.blog.edit-blog',[
            'blog'=> Blog::findOrFail($id),
            'categories'=>BlogCategory::where('publication_status',1)->get()
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
//        $this->validate($request, [
//
//        ]);
//        $blog = Blog::find($id);
//        $blog->blog_category_id= $request->blog_category_id;
//        $blog->header= $request->header;
//        $blog->slug=$this->make_slug($request);
//        $blog->description= $request->description;
//        if ($request->image){
//            unlink($blog->image);
//            $blog->image= $this->saveBlogImageInfo($request);
//        }
//        $blog->author= $request->author;
//        $blog->publication_status= $request->publication_status;
//        $blog->save();
//        return redirect( route('blog.index') )->with('message','Blog Save Successfully');
//
//    }
    public function BlogUpdate(Request $request)
    {
        $this->validate($request, [

        ]);
        $blog = Blog::find($request->blog_id);
        $blog->blog_category_id= $request->blog_category_id;
        $blog->header= $request->header;
        $blog->slug=$this->make_slug($request);
        $blog->description= $request->description;
        if ($request->image){
            unlink($blog->image);
            $blog->image= $this->saveBlogImageInfo($request);
        }
        $blog->author= $request->author;
        $blog->publication_status= $request->publication_status;
        $blog->save();
        return redirect( route('blog.index') )->with('message','Blog Update Successfully');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $blog = Blog::find($id);
        if ($blog->image){
            unlink($blog->image);
            $blog->delete();
            return redirect( route('blog.index') )->with('message','Blog Deleted');
        }else{
            $blog->delete();
            return redirect( route('blog.index') )->with('message','Blog Deleted');
        }

    }
    public function BlogDelete($id)
    {
        $blog = Blog::find($id);
        if ($blog->image){
            unlink($blog->image);
            $blog->delete();
            return redirect( route('blog.index') )->with('message','Blog Deleted');
        }else{
            $blog->delete();
            return redirect( route('blog.index') )->with('message','Blog Deleted');
        }

    }
}
