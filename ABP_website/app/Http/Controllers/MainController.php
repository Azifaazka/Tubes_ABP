<?php

namespace App\Http\Controllers;
use App\Models\Article;
use Illuminate\Http\Request;

class MainController extends Controller
{
    public function index(){
        return view('home');
    }
    public function about(){
        return view('about');
    }
    public function contact(){
        return view('contact');
    }
    public function register(){
        return view('register');
    }
    public function login(){
        return view('login');
    }
    public function article(){
        $data = Article::all();
        return view('article', ['data'=>$data]);
    }
    public function articledescription($slug){
        return view('articledescription')
            ->with('post', Article::where('slug', $slug)->first());
    }

}
