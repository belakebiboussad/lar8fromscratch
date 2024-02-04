<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class SessionController extends Controller
{
    public function create()
    {
        return view('auth.login');
    }
    public function store()
    {
//        validation
        $attributes = \request()->validate([
            'email'=>'required|email',
            'password'=>'required'
            ]);
//         attempt to authenticate
        if(auth()->attempt($attributes)){
            throw ValidationException::withMessages([
                'email' =>'your provided credentiels could not be verified'
            ]);
        }
        session()->regenerate();
        return redirect('/')->with('success', 'welcome');
    }
    public function destroy()
    {
        auth()->logout();
        return redirect('/')->with('sucess', 'Goodbye');
    }
}
