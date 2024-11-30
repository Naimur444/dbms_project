<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class LogoutController extends Controller
{
    public function logout()
    {
        // Log the user out
        Auth::logout();

        // Clear the session to avoid CSRF issues
        session()->flush();

        // Redirect the user to the login page
        return redirect()->route('login');
    }
}

