<?php

namespace App\Http\Controllers;

use App\Rating;
use Illuminate\Http\Request;

class RatingController extends Controller
{
    public function ratingStarOne($productId, $customerId){
        $abcd = Rating::where('product_id', $productId)
            ->where('customer_id',$customerId)
            ->first();
        if ($abcd == null){
            $rating =  new Rating();
            $rating->product_id= $productId;
            $rating->customer_id= $customerId;
            $rating->review= 1;
            $rating->save();
            return back()->with('message','Thanks For Rating');
        }
            else{
                $id =$abcd->id;
                $rating = Rating::find($id);
                $rating->review= 1;
                $rating->save();
                return back()->with('message','Thanks For Rating');
            }
    }
    public function ratingStarTwo($productId,$customerId){
        $abcd = Rating::where('product_id', $productId)
            ->where('customer_id',$customerId)
            ->first();
        if ($abcd == null){
            $rating =  new Rating();
            $rating->product_id= $productId;
            $rating->customer_id= $customerId;
            $rating->review= 2;
            $rating->save();
            return back()->with('message','Thanks For Rating');
        }
        else{
            $id =$abcd->id;
            $rating = Rating::find($id);
            $rating->review= 2;
            $rating->save();
            return back()->with('message','Thanks For Rating');
        }
    }
    public function ratingStarThree($productId,$customerId){
        $abcd = Rating::where('product_id', $productId)
            ->where('customer_id',$customerId)
            ->first();
        if ($abcd == null){
            $rating =  new Rating();
            $rating->product_id= $productId;
            $rating->customer_id= $customerId;
            $rating->review= 3;
            $rating->save();
            return back()->with('message','Thanks For Rating');
        }
        else{
            $id =$abcd->id;
            $rating = Rating::find($id);
            $rating->review= 3;
            $rating->save();
            return back()->with('message','Thanks For Rating');
        }
    }
    public function ratingStarFour($productId,$customerId){
        $rating =  new Rating();
        $abcd = Rating::where('product_id', $productId)
            ->where('customer_id',$customerId)
            ->first();
        if ($abcd == null){
            $rating =  new Rating();
            $rating->product_id= $productId;
            $rating->customer_id= $customerId;
            $rating->review= 4;
            $rating->save();
            return back()->with('message','Thanks For Rating');
        }
        else{
            $id =$abcd->id;
            $rating = Rating::find($id);
            $rating->review= 4;
            $rating->save();
            return back()->with('message','Thanks For Rating');
        }
    }
    public function ratingStarFive($productId,$customerId){
        $abcd = Rating::where('product_id', $productId)
            ->where('customer_id',$customerId)
            ->first();
        if ($abcd == null){
            $rating =  new Rating();
            $rating->product_id= $productId;
            $rating->customer_id= $customerId;
            $rating->review= 5;
            $rating->save();
            return back()->with('message','Thanks For Rating');
        }
        else{
            $id =$abcd->id;
            $rating = Rating::find($id);
            $rating->review= 5;
            $rating->save();
            return back()->with('message','Thanks For Rating');
        }
    }

    public function newReviewComment(Request $request){
        $rating=Rating::where('customer_id',$request->customer_id)
            ->where('product_id',$request->product_id)
            ->first();
        if ($rating){
            $rating->product_id= $request->product_id;
            $rating->customer_id= $request->customer_id;
            $rating->comments= $request->comments;
            $rating->save();
            return back()->with('message','Thank you for the Comment');
        }else{
            $rating=new Rating();
            $rating->product_id= $request->product_id;
            $rating->customer_id= $request->customer_id;
            $rating->comments= $request->comments;
            $rating->save();
            return back()->with('message','Thank you for the Comment');
        }

    }
}
