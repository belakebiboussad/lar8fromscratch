<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {

        return view('posts',[  //'posts'=> Post::with('category')->get()
            'posts'=> Post::latest()->filter()->get(),
            'categories'=>Category::all()
        ]);
    }
    public function show(Post $post)
    {
        return view('post', [
            'post'=>$post//Post::findOrFail($slug)
        ]);
    }
}
