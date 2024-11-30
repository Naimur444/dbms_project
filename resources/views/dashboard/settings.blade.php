@extends('layouts.dashboard')

@section('content')

<div class="container mx-auto px-6 py-12 bg-white shadow-lg rounded-lg">

    <h1 class="text-3xl font-semibold text-gray-800 mb-6">Account Settings</h1>

    <!-- Display success message if the profile is updated successfully -->
    @if(session('success'))
        <div class="alert alert-success bg-green-100 text-green-800 border border-green-400 rounded p-4 mb-6">
            {{ session('success') }}
        </div>
    @endif

    <!-- Settings Form -->
    <form method="POST" action="{{ route('settings.update') }}">
        @csrf

        <!-- Name Field -->
        <div class="mb-6">
            <label for="name" class="form-label block text-lg font-medium text-gray-700 mb-2">Name</label>
            <input type="text" class="form-control w-full px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500" id="name" name="name" value="{{ auth()->user()->name }}">
        </div>

        <!-- Email Field -->
        <div class="mb-6">
            <label for="email" class="form-label block text-lg font-medium text-gray-700 mb-2">Email</label>
            <input type="email" class="form-control w-full px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-blue-500" id="email" name="email" value="{{ auth()->user()->email }}">
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-primary bg-blue-600 text-white hover:bg-blue-700 py-2 px-6 rounded-md shadow-md transition duration-300 ease-in-out">Save Changes</button>

    </form>

</div>

@endsection
