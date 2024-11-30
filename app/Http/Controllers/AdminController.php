<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Bill;
use App\Models\Payment;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    // Show the Dashboard with stats
    public function dashboard()
    {
        $users = User::all();
        $totalUsers = $users->count();
        
        // Total Due Bills
        $dueBills = Bill::where('status', 'unpaid')->sum('amount_due');
        
        // Total Payments (from the payments table)
        $successfulPayments = Payment::sum('amount');

        // Charts Data
        $paymentsChartData = Payment::selectRaw('DATE(payment_date) as date, sum(amount) as total_paid')
            ->groupBy('date')
            ->orderBy('date', 'asc')
            ->get();

        $dueBillsChartData = Bill::where('status', 'unpaid')
            ->selectRaw('DATE(due_date) as date, sum(amount_due) as total_due')
            ->groupBy('date')
            ->orderBy('date', 'asc')
            ->get();

        return view('admin.dashboard', compact('users', 'totalUsers', 'dueBills', 'successfulPayments', 'paymentsChartData', 'dueBillsChartData'));
    }

    // Generate Bill Page
    public function generateBillPage()
    {
        $users = User::all();
        return view('admin.generate-bill', compact('users'));
    }

    // Handle Bill Generation
    public function generateBill(Request $request)
    {
        // Validation
        $request->validate([
            'user_id' => 'required|exists:users,id',
            'usage_rate' => 'required|numeric|min:0',
        ]);

        $user = User::findOrFail($request->user_id);
        $usageRate = $request->usage_rate;

        // Assume $6.5 per unit
        $amountDue = $usageRate * 6.5;

        // Create a Bill
        Bill::create([
            'user_id' => $user->id,
            'amount_due' => $amountDue,
            'due_date' => now()->addMonth(),
            'status' => 'unpaid',
        ]);

        return redirect()->route('admin.dashboard')->with('success', 'Bill generated successfully!');
    }

    // Manage Users Page
    public function manageUsers()
    {
        $users = User::all();
        return view('admin.manage-users', compact('users'));
    }

    // Delete a user
    public function deleteUser($id)
    {
        $user = User::findOrFail($id);
        $user->delete();

        return redirect()->route('admin.manageUsers')->with('success', 'User deleted successfully!');
    }
    public function viewGeneratedBills()
    {
        // Get all the generated bills with related user details
        $bills = Bill::all();  // Eager load the 'user' relationship
        // Return the view and pass the bills data
        return view('admin.generated-bills', compact('bills')); // Pass $bills to the view
    }
        public function deleteBill($id)
    {
        // Find the bill by its ID and delete it
        $bill = Bill::findOrFail($id);
        $bill->delete();

        return redirect()->route('admin.generatedBills')->with('success', 'Bill deleted successfully!');
    }
}
