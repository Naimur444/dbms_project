<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ElectricityUsageRecord;
use App\Models\Bill;  // Update to use Bill model
use App\Models\Payment;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $user = Auth::user();
        return view('dashboard.index', compact('user'));
    }

    public function usage()
    {
        $usage = ElectricityUsageRecord::where('user_id', Auth::id())->get();
        return view('dashboard.usage', compact('usage'));
    }

    public function bills()
    {
        $bills = Bill::where('user_id', Auth::id())->get();  // Use Bill model here
        return view('dashboard.bills', compact('bills'));
    }

    public function payments()
    {
        $payments = Payment::where('user_id', Auth::id())->get();
        return view('dashboard.payments', compact('payments'));
    }

    public function settings()
    {
        $user = Auth::user();
        return view('dashboard.settings', compact('user'));
    }

    public function updateSettings(Request $request)
    {
        // Validate the input data
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users,email,' . Auth::id(),
        ]);

        // Get the authenticated user and update their information
        $user = Auth::user();
        $user->name = $validated['name'];
        $user->email = $validated['email'];
        $user->save();

        // Redirect back with a success message
        return redirect()->route('dashboard.settings')->with('success', 'Profile updated successfully.');
    }

    public function payNow(Bill $bill)
{
    // If the bill is already paid, return an error message
    if ($bill->status === 'paid') {
        return redirect()->route('dashboard.bills')->with('error', 'This bill is already paid.');
    }

    return view('dashboard.paynow', compact('bill'));
}

public function processPayment(Request $request)
{
    // Retrieve the bill
    $bill = Bill::find($request->bill_id);

    // If the bill is already paid, return an error message
    if ($bill->status === 'paid') {
        return redirect()->route('dashboard.bills')->with('error', 'This bill is already paid.');
    }

    // Simulate payment gateway processing (payment is successful)
    $bill->status = 'paid';
    $bill->save();

    // Create a new record in the payments table
    Payment::create([
        'user_id' => Auth::id(),
        'bill_id' => $bill->id,
        'amount' => $bill->amount_due,
        'status' => 'successful',
    ]);

    // Return success message and redirect to bills page
    return redirect()->route('dashboard.bills')->with('success', 'Payment Successful!');
}
    
}
