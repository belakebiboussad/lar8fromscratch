<?php

use App\Http\Controllers\NewsletterController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SessionController;
use App\Http\Controllers\WelcomeController;
use \App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CommentController;


//use Spatie\YamlFrontMatter\YamlFrontMatter;
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
Route::post('newsletter', NewsletterController::class);
/*Route::post('newsletter', function(Newsletter $newsletter) {
    request()->validate(['email'=>'required|email']);

    try {
        $newsletter->subscribe(request('email'));
    } catch (\Exception $e) {
        throw ValidationException::withMessages([
            'email'=>"this mail could not be added to our newsletter list"
        ]);
    }
    return redirect('/')->with("success",'you are now signed up for our newsletter');
});
*/
Route::get('/',[PostController::class, 'index'])->name('home');
Route::get('/posts/{post}',[PostController::class, 'show']);
Route::post('posts/{post:slug}/comments',[CommentController::class, 'store']);
Route::get('/products', [ProductController::class, 'index']);
Route::post('/products/create', [ProductController::class, 'create'])->name('createProduct');
//Route::post('/createProducts', [ProductController::class, 'create']);//Route::resource('products', ProductController::class);//Route::get('/welcome',[WelcomeController::class,'index']);
Route::get('welcome',[WelcomeController::class, 'index']);
Route::get('register',[RegisterController::class, 'create'])->middleware('guest');
Route::post('register',[RegisterController::class, 'store'])->middleware('guest');
Route::get('login',[SessionController::class, 'create'])->middleware('guest');
Route::post('login',[SessionController::class, 'store']);
Route::post('logout',[SessionController::class, 'destroy']);
Route::get('/flex',[WelcomeController::class, 'getflex']);
