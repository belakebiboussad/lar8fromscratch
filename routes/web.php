<?php

use App\Http\Controllers\WelcomeController;
use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use \App\Http\Controllers\PostController;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use Spatie\YamlFrontMatter\YamlFrontMatter;
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
Route::get('/',[PostController::class, 'index'])->name('home');
Route::get('/posts/{post}',[PostController::class, 'show']);
Route::get('/products', [ProductController::class, 'index']);
Route::post('/products/create', [ProductController::class, 'create'])->name('createProduct');
//Route::post('/createProducts', [ProductController::class, 'create']);
//Route::resource('products', ProductController::class);//Route::get('/welcome',[WelcomeController::class,'index']);
Route::get('welcome',[WelcomeController::class, 'index']);

//Route::get('categories/{category:slug}',function(Category $category){
//    return view('posts',[
//        'posts'=> $category->posts,//->load(['category','author']),
//        'currentCategory'=>$category,
//        'categories'=>Category::all()
//    ]);
//})->name('category');
Route::get('authors/{author:username}',function(User $author){
    return view('posts',[
        'posts'=> $author->posts->load('category','author'),
        'categories'=>Category::all()
    ]);
});
