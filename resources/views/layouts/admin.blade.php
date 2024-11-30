<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Admin Dashboard') - YourCompanyName</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <style>
        [x-cloak] { display: none !important; }
    </style>
    @yield('extra_head')
</head>
<body class="font-sans bg-gray-100 text-gray-900 antialiased">
    <div class="flex h-screen">
        <!-- Sidebar -->
        <aside class="w-64 bg-indigo-700 text-white p-6">
            <h2 class="text-2xl font-bold mb-6">Admin Dashboard</h2>
            <nav>
                <ul class="space-y-2">
                    <li><a href="{{ route('admin.dashboard') }}" class="block py-2 px-4 rounded hover:bg-indigo-600 {{ request()->routeIs('admin.dashboard') ? 'bg-indigo-600' : '' }}">Dashboard</a></li>
                    <li><a href="{{ route('admin.generateBill') }}" class="block py-2 px-4 rounded hover:bg-indigo-600 {{ request()->routeIs('admin.generateBill') ? 'bg-indigo-600' : '' }}">Generate Bill</a></li>
                    <li><a href="{{ route('admin.manageUsers') }}" class="block py-2 px-4 rounded hover:bg-indigo-600 {{ request()->routeIs('admin.manageUsers') ? 'bg-indigo-600' : '' }}">Manage Users</a></li>
                    <li><a href="{{ route('admin.generatedBills') }}" class="block py-2 px-4 rounded hover:bg-indigo-600 {{ request()->routeIs('admin.generatedBills') ? 'bg-indigo-600' : '' }}">Generated Bills</a></li>
                </ul>
            </nav>
            <form action="{{ route('logout') }}" method="POST" class="mt-8">
                @csrf
                <button type="submit" class="w-full bg-indigo-800 text-white py-2 px-4 rounded-lg hover:bg-indigo-900 transition duration-200">Logout</button>
            </form>
        </aside>

        <!-- Main Content -->
        <main class="flex-1 p-8 overflow-y-auto">
            <h1 class="text-3xl font-semibold text-gray-800 mb-6">@yield('page_title')</h1>
            @yield('content')
        </main>
    </div>

    @yield('scripts')
</body>
</html>
