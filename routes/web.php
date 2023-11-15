<?php

use App\Http\Controllers\WelcomeController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Models\Post;
use Spatie\YamlFrontMatter\YamlFrontMatter;
use \Illuminate\Support\Facades\File;
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
    /*return view('posts',[  'posts'=> Post::all() ]); */
    return view('posts',[
      'posts'=> Post::all()
  ]);
});
Route::get('az', function () {
    $func = function(int $value): int {
        return $value * 2;
    };
    dd(array_map($func,range(1, 5)));
});
Route::get('/posts/{post}', function($slug) {
    return view('post', [
        'post'=>Post::findOrFail($slug)
    ]);
});
Route::get('/products', [ProductController::class, 'index']);
Route::post('/products/create', [ProductController::class, 'create'])->name('createProduct');
//Route::post('/createProducts', [ProductController::class, 'create']);
//Route::resource('products', ProductController::class);
//Route::get('/welcome',[WelcomeController::class,'index']);
Route::get('welcome',[WelcomeController::class, 'index']);
