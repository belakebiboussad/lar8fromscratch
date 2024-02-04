<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
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
            'name'=>'required|max:8',
//            'username'=>['required','max:255', Rule::unique('users', 'username')],
            'username'=>'required|max:255|unique:users,username',
            'email'=>'required|email|unique:users,email',
            'password'=>'required'
        ]);
        //$attributes['password'] = bcrypt($attributes['password']);
       $user = User::create($attributes);
       auth()->login($user);
             return redirect('/')->with('success', 'your account has been created');
    }
}
