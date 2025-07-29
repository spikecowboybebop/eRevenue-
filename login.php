<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Create Account</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 font-sans">
  <div class="flex min-h-screen items-center justify-center">
    <div class="bg-white shadow-2xl rounded-3xl w-full max-w-5xl grid grid-cols-1 md:grid-cols-2 overflow-hidden">
      
      <!-- Left Side: Form -->
      <div class="p-10">
        <div class="mb-8">
          <img src="https://via.placeholder.com/40x40?text=A" alt="Logo" class="mb-4">
          <h1 class="text-3xl font-bold text-gray-900 mb-2">Create an account</h1>
          <p class="text-gray-600">Sign up now and unlock exclusive access!</p>
        </div>

        <form class="space-y-5">
          <div>
            <label class="block text-sm font-medium text-gray-700">Your name</label>
            <input type="text" placeholder="First Last" class="mt-1 w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-purple-500" />
          </div>

          <div>
            <label class="block text-sm font-medium text-gray-700">Email</label>
            <input type="email" placeholder="you@email.com" class="mt-1 w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-purple-500" />
          </div>

          <div>
            <label class="block text-sm font-medium text-gray-700">Password</label>
            <input type="password" class="mt-1 w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-purple-500" />
          </div>

          <button type="submit" class="w-full py-3 bg-purple-500 hover:bg-purple-600 text-white font-semibold rounded-md transition">Create Account</button>

          <button type="button" class="w-full py-3 bg-gray-100 hover:bg-gray-200 text-gray-800 font-semibold rounded-md transition">Sign in</button>
        </form>

        <p class="mt-6 text-sm text-gray-500">
          <span class="inline-block mr-2">📧</span> Help@Aura.com
        </p>
      </div>

      <!-- Right Side: Illustration -->
      <div class="bg-gradient-to-br from-purple-100 via-white to-pink-100 flex items-center justify-center p-6">
        <img src="Assets\login-illustration.jpg" alt="Illustration" class="max-w-full h-auto" />
      </div>
    </div>
  </div>
</body>
</html>
