<?php

namespace App\Http\Controllers;
use App\Models\CRUDadmin;
use Illuminate\Http\Request;
use Faker\Factory as Faker;
use App\Models\reviewModel;

class MuseumController extends Controller
{
    public function CRUDadmin()
    {
        $data = CRUDadmin::all();
        return view('admin.museums.CRUDreview',['data'=>$data]);
    }
    public function tambahreview()
    {
       return view('admin.museums.tambahreview');
    }

    public function userview()
    {
        $data = CRUDadmin::all();
        return view('user.museums.userview',['data'=>$data]);

    }
    public function showcomment($id){
        $hasil = CRUDadmin::find($id);
        $komen = reviewModel::all();
        return view('user.museums.allreview', ['hasil'=>$hasil, 'komen'=>$komen, 'id'=>$id]);
    }

    public function showcommentadmin($id){
        $hasil = CRUDadmin::find($id);
        $komen = reviewModel::all();
        return view('admin.museums.adminreview', ['hasil'=>$hasil, 'komen'=>$komen, 'id'=>$id]);
    }
    
    public function insertdata(Request $REQUEST)
    {
        //   dd($REQUEST->all());
        $REQUEST->validate([
            'image' => 'required|mimes:jpg,png,jpeg|max:5048'
        ]);
        $data = CRUDadmin::create($REQUEST->all());
           if($REQUEST->hasFile('image')){
               $REQUEST->file('image')->move('image/', $REQUEST->file('image')->getClientOriginalName());
               $data->image = $REQUEST->file('image')->getClientOriginalName();
               $data->save();
           }
           return redirect('/CRUDreview')->with('success', 'Your data has been added!');
    }

    public function tampilkandata($id){
        $data =  CRUDadmin::find($id);
        // dd($data);
        return view('admin.museums.tampildata', compact('data'));
    }

    public function updatedata(request $REQUEST, $id){
        // dd($REQUEST->all());
        $data = CRUDadmin::find($id);
        $data->update($REQUEST->all());
        return redirect('/CRUDreview')->with('success', 'Your data has been updated!');
    }
    
    public function delete($id){
        $data =  CRUDadmin::find($id);
        $data->delete();
        return redirect('/CRUDreview')->with('success', 'Your data has been deleted!');
    }
    public function show($id)
    {
        return view('user.museums.description')
            ->with('data', CRUDadmin::where('id', $id)->first());
    }
    public function showadmin($id)
    {
        return view('admin.museums.descriptionadmin', ['data'=>CRUDadmin::where('id', $id)->first(), 'id'=>$id]);
    }
    public function addcomment(Request $REQUEST, $id){
        $faker = Faker::create();
        $hasil = CRUDadmin::find($id);
        $user = new reviewModel();
        $user->name = $REQUEST->name;
        $user->comment = $REQUEST->comment;
        $user->ratings = $REQUEST->ratings;
        $user->id_museum = $REQUEST->id;
        $user->profile = $faker->imageUrl($width = 50, $height = 50);
        $user->save();
        return redirect()->action('MuseumController@userview', ['id'=> $id]);
    }
    public function deletecomment($id, $id_comment){
        reviewModel::where('id',$id_comment)->delete();
        // echo "asep ganteng";
        return redirect('/CRUDreview/'.$id.'/adminreview')->with('success', 'Your data has been deleted!');
    }
}
