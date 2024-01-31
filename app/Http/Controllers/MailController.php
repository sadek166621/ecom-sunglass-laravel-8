<?php

namespace App\Http\Controllers;

use App\Newsletter;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;


class MailController extends Controller
{
    public function send(Request $request){
       $newsletter = new Newsletter();
       $newsletter->email=$request->email;
       $newsletter->save();
        Mail::send('mail.mail',[
            'data'=>$request->message
        ],function ($message) use ($request){
            $message->to($request->email);
//            $message->form($request->email);
            $message->subject($request->subject);
        });
        return back()->with('message','thanks For your Subscribe');
    }
}
