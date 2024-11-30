@extends('layouts.admin')

@section('title', 'Manage Users')

@section('page_title', 'Manage Users')

@section('content')
<div class="bg-white p-6 rounded-lg shadow-md">
    <table class="min-w-full table-auto">
        <thead>
            <tr class="bg-gray-200">
                <th class="py-2 px-4 border-b text-left">Name</th>
                <th class="py-2 px-4 border-b text-left">Email</th>
                <th class="py-2 px-4 border-b text-left">Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($users as $user)
                <tr>
                    <td class="py-2 px-4 border-b">{{ $user->name }}</td>
                    <td class="py-2 px-4 border-b">{{ $user->email }}</td>
                    <td class="py-2 px-4 border-b">
                        <form action="{{ route('admin.dashboard.deleteUser', $user->id) }}" method="POST" class="inline-block">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="text-red-600 hover:text-red-800 transition duration-200">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection

