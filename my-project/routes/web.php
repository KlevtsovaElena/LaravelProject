<?php
//чтобы получить доступ из нашей странички
header('Access-Control-Allow-Origin: *');
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('news');
});

Route::get('/news', function () {
    return view('news');
});
