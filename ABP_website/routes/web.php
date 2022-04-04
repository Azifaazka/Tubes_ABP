<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MainController;
use App\Http\Controllers\ContactFormController;
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