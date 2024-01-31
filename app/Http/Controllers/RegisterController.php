<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
class RegisterController extends Controller
{
    public function create()
    {
        return view('register.create');
    }
    public function store(Request $request)
    {
        $attributes = request()->validate([
            'name'=>'required|max:5',
            'username'=>'required|max:255',
            'email'=>'required|email',
            'password'=>'required'
        ]);
        //$attributes['password'] = bcrypt($attributes['password']);
        User::create($attributes);
        return redirect('/');
    }
}
