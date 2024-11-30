@extends('layouts.dashboard')

@section('content')
    <h2 class="text-2xl font-semibold mb-4">Payment History</h2>
    <table class="table-auto w-full mt-2">
        <thead>
            <tr>
                <th class="border px-4 py-2">Payment Amount</th>
                <th class="border px-4 py-2">Payment Date</th>
                <th class="border px-4 py-2">Status</th>
            </tr>
        </thead>
        <tbody>
            @foreach($payments as $payment)
                <tr>
                    <td class="border px-4 py-2">৳{{ $payment->amount }}</td>
                    <td class="border px-4 py-2">{{ $payment->created_at->format('d-m-Y') }}</td>
                    <td class="border px-4 py-2">{{ $payment->status }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
