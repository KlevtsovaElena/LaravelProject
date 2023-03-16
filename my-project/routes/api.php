<?php
//чтобы получить доступ из нашей странички
header('Access-Control-Allow-Origin: *');
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;
use App\Models\News;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/news', function () {
    return News::getDataDB();
});

Route::get('/news/condition', function () {
    return News::getDataCondition();
});

Route::post('/news/update', function(){
    return News::quantityUpdate();
});


Route::get('/envTest', function(){
    return News::getEnvTest();
});





