<?php

namespace App\Http\Controllers;

use App\Models\Post;
//use App\Models\Comment;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function store(Post $post)
    {
        //validation
        request()->validate([
            'body'=>'required'
        ]);
        $post->comments()->create([
            'user_id'=>request()->user()->id,
            'body'=>request('body')
        ]);
        return back();
    }
}
