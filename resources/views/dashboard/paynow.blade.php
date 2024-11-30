@extends('layouts.dashboard')

@section('content')
    <div class="container mx-auto py-8">
        <h2 class="text-3xl font-semibold text-gray-800">Pay Bill</h2>

        <!-- Display success/error message -->
        @if(session('success'))
            <div class="alert alert-success mb-4 p-3 bg-green-500 text-white rounded">
                {{ session('success') }}
            </div>
        @elseif(session('error'))
            <div class="alert alert-error mb-4 p-3 bg-red-500 text-white rounded">
                {{ session('error') }}
            </div>
        @endif

        <div class="mt-6">
            <h3 class="text-xl font-semibold mb-4">Bill Details</h3>
            <div class="p-4 border border-gray-300 rounded-lg">
                <p><strong>Amount Due:</strong> ৳{{ $bill->amount_due }}</p>
                <p><strong>Due Date:</strong> {{ $bill->due_date->format('d-m-Y') }}</p>
                <p><strong>Status:</strong> {{ $bill->status }}</p>
            </div>
        </div>

        <!-- Payment Form -->
        <form action="{{ route('bills.pay') }}" method="POST" class="mt-6">
            @csrf
            <input type="hidden" name="bill_id" value="{{ $bill->id }}">

            <div class="mb-4">
                <label for="payment_method" class="block text-sm font-medium text-gray-700">Payment Method</label>
                <select name="payment_method" id="payment_method" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md">
                    <option value="nagad">Nagad</option>
                    <option value="bkash">Bkash</option>
                    <option value="rocket">Rocket</option>
                </select>
            </div>

            <div class="mb-4">
                <label for="mobile_number" class="block text-sm font-medium text-gray-700">Mobile Number</label>
                <input type="text" name="mobile_number" id="mobile_number" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md" required>
            </div>

            <div class="mb-4">
                <label for="payment_pin" class="block text-sm font-medium text-gray-700">Payment Pin</label>
                <input type="text" name="payment_pin" id="payment_pin" class="mt-1 block w-full px-3 py-2 border border-gray-300 rounded-md" required>
            </div>

            <div class="mb-4">
                <button type="submit" class="w-full bg-blue-600 text-white py-2 px-4 rounded-md hover:bg-blue-700">Submit Payment</button>
            </div>
        </form>
    </div>
@endsection
