@extends('layouts.dashboard')

@section('content')
<div class="container mx-auto px-4 py-8">
    <h1 class="text-3xl font-bold text-gray-800 mb-8">Dashboard</h1>
    
    <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
        <!-- User Profile Card -->
        <div class="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden">
            <div class="bg-gray-50 p-4 border-b border-gray-200">
                <h2 class="text-xl font-semibold text-gray-800">Welcome back</h2>
            </div>
            <div class="p-6">
                <div class="flex items-center mb-4">
                    <img src="https://ui-avatars.com/api/?name={{ urlencode($user->name) }}&color=7F9CF5&background=EBF4FF" alt="{{ $user->name }}" class="w-16 h-16 rounded-full mr-4">
                    <div>
                        <h3 class="text-xl font-semibold text-gray-800">{{ $user->name }}</h3>
                        <p class="text-gray-600">{{ $user->email }}</p>
                    </div>
                </div>
                <a href="{{ route('dashboard.profile') }}" class="block w-full text-center bg-gray-800 hover:bg-gray-700 text-white font-semibold py-2 px-4 rounded-md transition duration-300">
                    Edit Profile
                </a>
            </div>
        </div>

        <!-- Quick Links Card -->
        <div class="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden col-span-2">
            <div class="bg-gray-50 p-4 border-b border-gray-200">
                <h2 class="text-xl font-semibold text-gray-800">Quick Links</h2>
            </div>
            <div class="p-6 grid grid-cols-2 gap-4">
                @php
                    $quickLinks = [
                        ['route' => 'dashboard.usage', 'name' => 'Electricity Usage', 'icon' => 'fas fa-bolt'],
                        ['route' => 'dashboard.bills', 'name' => 'Bills', 'icon' => 'fas fa-file-invoice-dollar'],
                        ['route' => 'dashboard.payments', 'name' => 'Payments', 'icon' => 'fas fa-credit-card'],
                        ['route' => 'dashboard.settings', 'name' => 'Settings', 'icon' => 'fas fa-cog'],
                    ];
                @endphp

                @foreach ($quickLinks as $link)
                    <a href="{{ route($link['route']) }}" class="flex items-center p-4 bg-gray-50 rounded-md hover:bg-gray-100 transition duration-300">
                        <i class="{{ $link['icon'] }} text-2xl text-gray-600 mr-3"></i>
                        <span class="text-gray-800 font-medium">{{ $link['name'] }}</span>
                    </a>
                @endforeach
            </div>
        </div>
    </div>

    <!-- Additional Sections -->
    <div class="mt-8 grid grid-cols-1 md:grid-cols-2 gap-6">
        <!-- Recent Activity -->
        <div class="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden">
            <div class="bg-gray-50 p-4 border-b border-gray-200">
                <h2 class="text-xl font-semibold text-gray-800">Recent Activity</h2>
            </div>
            <div class="p-6">
                <ul class="space-y-4">
                    <li class="flex items-center">
                        <span class="w-2 h-2 bg-green-500 rounded-full mr-2"></span>
                        <span class="text-gray-600">Payment made - ৳150.00</span>
                        <span class="ml-auto text-sm text-gray-500">2 days ago</span>
                    </li>
                    <li class="flex items-center">
                        <span class="w-2 h-2 bg-yellow-500 rounded-full mr-2"></span>
                        <span class="text-gray-600">New bill generated</span>
                        <span class="ml-auto text-sm text-gray-500">5 days ago</span>
                    </li>
                    <li class="flex items-center">
                        <span class="w-2 h-2 bg-blue-500 rounded-full mr-2"></span>
                        <span class="text-gray-600">Profile updated</span>
                        <span class="ml-auto text-sm text-gray-500">1 week ago</span>
                    </li>
                </ul>
            </div>
        </div>

        <!-- Usage Summary -->
        <div class="bg-white rounded-lg shadow-sm border border-gray-200 overflow-hidden">
            <div class="bg-gray-50 p-4 border-b border-gray-200">
                <h2 class="text-xl font-semibold text-gray-800">Usage Summary</h2>
            </div>
            <div class="p-6">
                <div class="flex items-center justify-between mb-4">
                    <span class="text-gray-600">This Month</span>
                    <span class="text-2xl font-bold text-gray-800">450 kWh</span>
                </div>
                <div class="w-full bg-gray-200 rounded-full h-2.5 mb-4">
                    <div class="bg-gray-600 h-2.5 rounded-full" style="width: 75%"></div>
                </div>
                <p class="text-sm text-gray-500">75% of your average monthly usage</p>
            </div>
        </div>
    </div>
</div>
@endsection