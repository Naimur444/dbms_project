@extends('layouts.dashboard')

@section('content')
    <h2 class="text-2xl font-semibold mb-4">Profile Settings</h2>
    <form action="{{ route('dashboard.profile.update') }}" method="POST">
        @csrf
        @method('PATCH')
        <div class="mb-4">
            <label for="name" class="block text-sm font-semibold">Name</label>
            <input type="text" name="name" id="name" value="{{ $user->name }}" class="w-full px-3 py-2 border border-gray-300 rounded-md" required>
        </div>
        <div class="mb-4">
            <label for="email" class="block text-sm font-semibold">Email</label>
            <input type="email" name="email" id="email" value="{{ $user->email }}" class="w-full px-3 py-2 border border-gray-300 rounded-md" required>
        </div>
        <button type="submit" class="bg-blue-500 text-white py-2 rounded-md w-full">Update Profile</button>
    </form>
@endsection
