<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BaggageController;
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
Route::post('/addBaggage', [BaggageController::class, 'store']);
Route::get('/getDetails', [BaggageController::class, 'index']);
Route::get('/getBaggage/{baggage_id}', [BaggageController::class, 'show']);
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
