<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    // Show login form
    public function showLoginForm()
    {
        return view('auth.login');
    }

    // Login function
    public function login(Request $request)
    {
        // Validate the incoming request
        $credentials = $request->only('email', 'password');

        // Attempt to log in the user
        if (Auth::attempt($credentials)) {
            $user = Auth::user();

            // Redirect to the correct dashboard based on user role
            if ($user->is_admin) {
                return redirect()->route('admin.dashboard'); // If admin, redirect to admin dashboard
            } else {
                return redirect()->route('user.dashboard'); // If regular user, redirect to user dashboard
            }
        }

        // If login fails, return to the login page with an error
        return back()->withErrors(['email' => 'Invalid credentials.']);
    }

    // Logout function
    public function logout()
    {
        Auth::logout();
        return redirect()->route('login');
    }
}
