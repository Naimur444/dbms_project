@extends('layouts.admin')

@section('title', 'Generated Bills')

@section('page_title', 'Generated Bills')

@section('content')
<div class="bg-white p-6 rounded-lg shadow-md">
    <table class="min-w-full table-auto">
        <thead>
            <tr class="bg-gray-200">
                <th class="py-2 px-4 border-b text-left">User</th>
                <th class="py-2 px-4 border-b text-left">Amount Due</th>
                <th class="py-2 px-4 border-b text-left">Due Date</th>
                <th class="py-2 px-4 border-b text-left">Status</th>
                <th class="py-2 px-4 border-b text-left">Actions</th>
            </tr>
        </thead>
        <tbody>
            @forelse($bills as $bill)
                <tr>
                    <td class="py-2 px-4 border-b">{{ $bill->user->name }}</td>
                    <td class="py-2 px-4 border-b">৳{{ number_format($bill->amount_due, 2) }}</td>
                    <td class="py-2 px-4 border-b">{{ $bill->due_date->format('Y-m-d') }}</td>
                    <td class="py-2 px-4 border-b">
                        <span class="px-2 py-1 text-xs font-semibold rounded-full {{ $bill->status == 'paid' ? 'bg-green-200 text-green-800' : ($bill->status == 'unpaid' ? 'bg-yellow-200 text-yellow-800' : 'bg-red-200 text-red-800') }}">
                            {{ ucfirst($bill->status) }}
                        </span>
                    </td>
                    <td class="py-2 px-4 border-b">
                        <form action="{{ route('admin.dashboard.deleteBill', $bill->id) }}" method="POST" class="inline-block">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="text-red-600 hover:text-red-800 transition duration-200">Delete</button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="5" class="py-4 text-center text-gray-600">No bills generated yet.</td>
                </tr>
            @endforelse
        </tbody>
    </table>
</div>
@endsection

