@extends('layouts.dashboard')

@section('content')

<h2 class="text-2xl font-semibold mb-4">Bills</h2>

<!-- Success/Error Message -->
@if(session('success'))
    <div class="alert alert-success mb-4 p-3 bg-green-500 text-white rounded">
        {{ session('success') }}
    </div>
@elseif(session('error'))
    <div class="alert alert-error mb-4 p-3 bg-red-500 text-white rounded">
        {{ session('error') }}
    </div>
@endif

<!-- Bills Table -->
<table class="table-auto w-full mt-2">
    <thead>
        <tr>
            <th class="border px-4 py-2">Amount Due</th>
            <th class="border px-4 py-2">Due Date</th>
            <th class="border px-4 py-2">Status</th>
            <th class="border px-4 py-2">Action</th>
        </tr>
    </thead>
    <tbody>
        @foreach($bills as $bill)
            <tr>
                <td class="border px-4 py-2">৳{{ $bill->amount_due }}</td>
                <td class="border px-4 py-2">{{ $bill->due_date->format('d-m-Y') }}</td>
                <td class="border px-4 py-2">{{ $bill->status }}</td>
                <td class="border px-4 py-2">
                    @if($bill->status == 'unpaid')
                        <a href="{{ route('bills.paynow', $bill->id) }}" class="text-white bg-blue-600 px-4 py-2 rounded-md">Pay Now</a>
                    @else
                        Paid
                    @endif
                </td>
            </tr>
        @endforeach
    </tbody>
</table>

@endsection
