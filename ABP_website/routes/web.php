<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MainController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ContactFormController;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\ArticletController;
use App\Http\Controllers\ReviewController;
use App\Http\Controllers\MuseumController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get("/", [MainController::class,'index']);
Route::get("/about", [MainController::class,'about']);
Route::get("/contact", [MainController::class,'contact']);
Route::get("/register", [MainController::class,'register']);
Route::get("/login", [MainController::class,'login']);

Route::post("/contact/send", [ContactFormController::class,'send']);
Auth::routes();

Route::get('/home', [App\Http\Controllers\MainController::class, 'index'])->name('home');
Route::get('admin/home', [MainController::class, 'adminHome'])->name('admin.home')->middleware('is_admin');
Route::get("/article", [MainController::class,'article']);
Route::get("/article/{slug}", [ArticletController::class,'show']);
Route::resource('/articlepage', ArticletController::class);
Route::post('/articlepage/store', 'ArticletController@store')->name('articlepage.store');
Route::get("/crudarticle", [ArticletController::class,'article']);
Route::view("description",'description');

// Review
Route::get("/reviewpage", [ReviewController::class,'reviewpage']);
Route::get("/adminreviewpage", [ReviewController::class,'adminreviewpage']);
Route::get("/createreview", [ReviewController::class,'createreview']);  
Route::post("/store",[ReviewController::class, 'store']);  
Route::get("/delete/{id}", [ReviewController::class,'delete']);
Route::get("/reviewpage/{id}", [ReviewController::class,'reviewpage']);


// Museum
Route::get("/CRUDreview", [MuseumController::class,'CRUDadmin'])->name('CRUDreview');
Route::get("/tambahreview", [MuseumController::class,'tambahreview']);
Route::get("/userview", [MuseumController::class,'userview'])->name('userview');
Route::post("/insertdata", [MuseumController::class,'insertdata']);

Route::get("/tampilkandata/{id}", [MuseumController::class,'tampilkandata']);
Route::post("/updatedata/{id}", [MuseumController::class,'updatedata']);

Route::get("/delete/{id}", [MuseumController::class,'delete']);

Route::get("/userview/{id}", [MuseumController::class,'show']);
Route::post('/createreview/store', 'MuseumController@addreview')->name('createreview.addreview');
Route::get("/userview/{id}/allreview", [MuseumController::class,'showcomment']);
Route::post("/userview/{id}/allreview", "MuseumController@addcomment")->name('allreview.addcomment');
Route::get("/CRUDreview/{id}", [MuseumController::class,'showadmin']);
Route::get("/CRUDreview/{id}/adminreview", [MuseumController::class,'showcommentadmin']);
Route::get("/CRUDreview/{id}/adminreview/delete/{id_comment}", [MuseumController::class,'deletecomment']);

