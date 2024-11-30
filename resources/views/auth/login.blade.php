<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Electricity Bill Management System</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Adding a subtle background image and ensuring it's responsive */
        .bg-login {
            background-image: url('https://www.powergrid.in/sites/default/files/inline-images/our-business-bg.jpg'); /* Replace this with an electricity-related background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
    </style>
</head>

<body class="bg-login text-gray-900 font-sans flex items-center justify-center min-h-screen">

    <!-- Dark overlay to ensure text is readable on top of the image -->
    <div class="absolute inset-0 bg-black opacity-40"></div>

    <div class="relative w-full max-w-sm p-8 bg-white rounded-lg shadow-lg z-10">
        <div class="text-center mb-6">
            <h2 class="text-2xl font-semibold">Login</h2>
            <p class="text-sm text-gray-500">Manage your electricity bills with ease</p>
        </div>

        <form action="{{ url('login') }}" method="POST" id="loginForm" class="space-y-6">
            @csrf
            <div>
                <label for="email" class="block text-sm font-medium text-gray-700">Email Address</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required
                    class="w-full px-4 py-3 mt-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500 bg-gray-50 text-gray-900 placeholder-gray-500">
            </div>

            <div>
                <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required
                    class="w-full px-4 py-3 mt-2 rounded-lg border border-gray-300 focus:outline-none focus:ring-2 focus:ring-blue-500 bg-gray-50 text-gray-900 placeholder-gray-500">
            </div>

            <button type="submit"
                class="w-full py-3 px-4 bg-blue-600 text-white rounded-lg text-lg font-semibold hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500">
                Log In
            </button>
        </form>

        <div class="text-center mt-4">
            <p class="text-sm text-gray-500">Don't have an account? <a href="{{ url('register') }}"
                    class="text-blue-600 hover:text-blue-700 font-medium">Register here</a></p>
        </div>

    </div>

</body>

</html>
