<?php

use App\Http\Controllers\WelcomeController;
use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Models\Post1;
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
    return view('posts',[  //'posts'=> Post::with('category')->get()
        'posts'=> Post::latest()->get(),
        'categories'=>Category::all()
    ]);

})->name('home');
Route::get('/posts/{post}', function(Post $post) {

    return view('post', [
        'post'=>$post//Post::findOrFail($slug)
    ]);

});
Route::get('/products', [ProductController::class, 'index']);
Route::post('/products/create', [ProductController::class, 'create'])->name('createProduct');
//Route::post('/createProducts', [ProductController::class, 'create']);
//Route::resource('products', ProductController::class);
//Route::get('/welcome',[WelcomeController::class,'index']);
Route::get('welcome',[WelcomeController::class, 'index']);

Route::get('categories/{category:slug}',function(Category $category){
    return view('posts',[
        'posts'=> $category->posts,
        'currentCategory'=>$category,
        'categories'=>Category::all()
    ]);
})->name('category');
Route::get('authors/{author:username}',function(User $author){
    return view('posts',[
        'posts'=> $author->posts,
        'categories'=>Category::all()
    ]);
});
