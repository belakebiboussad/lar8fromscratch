<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\Post1;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Contracts\Cache\LockTimeoutException;
use Illuminate\Support\Facades\DB;

class PostController extends Controller
{
    public function index()
    {

//        DB::listen(function ($query) {
//            logger($query->sql, $query->bindings);
//        });
//        $categoryPosts = Post::byCategory(1)->get();
//        dd($categoryPosts);
//        $posts = Post::latest();
//        if(request('search')) {
//            $posts->where('title', 'like', '%' . request('search') . '%')
//                    ->orwhere('body', 'like', '%' . request('search'). '%');
//        }
  //      dd(request()->only('search'));
        return view('posts.index', [
            'posts' => Post::latest()->filter(request(['search','category','author']))->get(),
//                  'posts' => Post::latest()->get(),
//            'categories' => Category::all(),
        ]);

    }

    public function show(Post $post)
    {
        return view('posts.show', [
            'post' => $post//Post::findOrFail($slug)
        ]);
    }

//    public function show(Post $post)
//    {
//
//        return view('show', [
//            'post'=>$post//Post::findOrFail($slug)
//        ]);
//    }
}
