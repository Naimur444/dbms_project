@extends('layouts.admin')

@section('title', 'Generate Bill')

@section('page_title', 'Generate Bill for User')

@section('content')
<div class="bg-white p-8 rounded-lg shadow-md">
    <form action="{{ route('admin.generateBill.post') }}" method="POST">
        @csrf
        <div class="space-y-6">
            <div>
                <label for="user_id" class="block text-gray-600">Select User</label>
                <select name="user_id" id="user_id" class="mt-2 p-3 border rounded-lg w-full">
                    <option value="" disabled selected>Select a user</option>
                    @foreach($users as $user)
                        <option value="{{ $user->id }}">{{ $user->name }} ({{ $user->email }})</option>
                    @endforeach
                </select>
            </div>
            <div>
                <label for="usage_rate" class="block text-gray-600">Enter Usage Rate (in units)</label>
                <input type="number" name="usage_rate" id="usage_rate" class="mt-2 p-3 border rounded-lg w-full" required>
            </div>
            <div>
                <button type="submit" class="w-full bg-indigo-600 text-white py-3 rounded-lg hover:bg-indigo-700 transition duration-200">Generate Bill</button>
            </div>
        </div>
    </form>
</div>
@endsection
