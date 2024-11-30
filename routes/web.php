<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\LogoutController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\AdminController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('login', [LoginController::class, 'login']);
Route::get('register', [RegisterController::class, 'showRegisterForm'])->name('register');
Route::post('register', [RegisterController::class, 'register']);
Route::post('logout', [LogoutController::class, 'logout'])->name('logout');

Route::middleware('auth')->group(function () {
    Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard.index');
    Route::get('dashboard/usage', [DashboardController::class, 'usage'])->name('dashboard.usage');
    Route::get('dashboard/bills', [DashboardController::class, 'bills'])->name('dashboard.bills');
    Route::get('dashboard/payments', [DashboardController::class, 'payments'])->name('dashboard.payments');
    Route::get('dashboard/settings', [DashboardController::class, 'settings'])->name('dashboard.settings');
    Route::get('dashboard/profile', [ProfileController::class, 'edit'])->name('dashboard.profile');
    Route::post('dashboard/settings', [DashboardController::class, 'updateSettings'])->name('settings.update');
    Route::post('bills/pay', [DashboardController::class, 'processPayment'])->name('bills.pay');
    Route::get('bills/pay/{bill}', [DashboardController::class, 'payNow'])->name('bills.paynow');

});



// admin routes
Route::prefix('admin')->middleware(['auth', 'is_admin'])->group(function () {
    Route::get('/dashboard', [AdminController::class, 'dashboard'])->name('admin.dashboard');
    Route::get('/generate-bill', [AdminController::class, 'generateBillPage'])->name('admin.generateBill');
    Route::post('/generate-bill', [AdminController::class, 'generateBill'])->name('admin.generateBill.post');
    Route::get('/manage-users', [AdminController::class, 'manageUsers'])->name('admin.manageUsers');
    Route::delete('/delete-user/{id}', [AdminController::class, 'deleteUser'])->name('admin.dashboard.deleteUser');
    
    // New route to view all generated bills
    Route::get('/generated-bills', [AdminController::class, 'viewGeneratedBills'])->name('admin.generatedBills');
    Route::delete('/delete-bill/{id}', [AdminController::class, 'deleteBill'])->name('admin.dashboard.deleteBill');

});