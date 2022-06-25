<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MuseumController;
use App\Http\Controllers\ArticletController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//API route for register new user
Route::post('/register', [App\Http\Controllers\API\AuthController::class, 'register']);
//API route for login user
Route::post('/login', [App\Http\Controllers\API\AuthController::class, 'login']);

//Protecting Routes
Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::get('/profile', function(Request $request) {
        return auth()->user();
    });

    // API route for logout user
    Route::post('/logout', [App\Http\Controllers\API\AuthController::class, 'logout']);
});

Route::get("/museums/{id}", [MuseumController::class,'tampilkandataapi']);
Route::post('/museum', [MuseumController::class,'insertdataapi']);
Route::get("/museums", [MuseumController::class,'CRUDadminapi']);
Route::post("/museums/{id}", [MuseumController::class,'updatedata']);
Route::delete("/museums/{id}", [MuseumController::class,'delete']);

Route::get("/museums/{id}/allreview", [MuseumController::class,'showcommentapi']);
Route::post("/museums/{id}/allreview", [MuseumController ::class,'addcommentapi']);

Route::get("/articles/{slug}", [ArticletController::class,'show']);
Route::post('/article', [ArticletController::class,'storeapi']);
Route::get("/articles", [ArticletController::class,'indexapi']);
Route::get("/articles/{slug}", [ArticletController::class,'update']);
Route::get("/articles/{slug}", [ArticletController::class,'destroy']);