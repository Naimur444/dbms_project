<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Electricity Bill Management System</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Background image for the registration page */
        .bg-register {
            background-image: url('https://www.flashchargebatteries.com/wp-content/uploads/2014/05/electricity-grid600x400.jpg'); /* Replace this with an electricity-related background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
    </style>
</head>

<body class="bg-register text-gray-900 font-sans flex items-center justify-center min-h-screen">

    <!-- Dark overlay to improve text readability -->
    <div class="absolute inset-0 bg-black opacity-40"></div>

    <div class="relative bg-white p-6 rounded-lg shadow-lg w-96 z-10">
        <h2 class="text-2xl font-bold mb-4 text-center">Create an Account</h2>
        <form action="{{ url('register') }}" method="POST">
            @csrf
            <div class="mb-4">
                <label for="name" class="block text-sm font-semibold">Name</label>
                <input type="text" name="name" id="name" class="w-full px-3 py-2 border border-gray-300 rounded-md" required>
            </div>
            <div class="mb-4">
                <label for="email" class="block text-sm font-semibold">Email</label>
                <input type="email" name="email" id="email" class="w-full px-3 py-2 border border-gray-300 rounded-md" required>
            </div>
            <div class="mb-4">
                <label for="password" class="block text-sm font-semibold">Password</label>
                <input type="password" name="password" id="password" class="w-full px-3 py-2 border border-gray-300 rounded-md" required>
            </div>
            <div class="mb-4">
                <label for="password_confirmation" class="block text-sm font-semibold">Confirm Password</label>
                <input type="password" name="password_confirmation" id="password_confirmation" class="w-full px-3 py-2 border border-gray-300 rounded-md" required>
            </div>
            <button type="submit" class="w-full bg-blue-500 text-white py-2 rounded-md hover:bg-blue-600">Register</button>
        </form>
    </div>

</body>

</html>
