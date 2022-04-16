<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\reviewModel;

class ReviewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function reviewpage(){
        $data = reviewModel::all();
        return view('user.reviews.reviewpage', ['data'=>$data]);
    }
    public function adminreviewpage(){
        $data = reviewModel::all();
        return view('admin.reviews.adminreviewpage', ['data'=>$data]);
    } 
    public function createreview(){
        return view('user.reviews.createreview');
    }
    public function index()
    {
        $data = reviewModel::all();
        return view('user.reviews.reviewpage', ['data'=>$data]);
    }


    public function store(Request $request)
    {
        reviewModel::create($request->all());
        return redirect('/reviewpage')->with('message', 'Your review has been added!');
    }
    
    public function delete($id){
        $data = reviewModel::Find($id);
        $data->delete();
        return redirect('/adminreviewpage')->with('message', 'review has been deleted!');
    }
}
?>