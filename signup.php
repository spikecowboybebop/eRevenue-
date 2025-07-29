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
        <div class="mb-6">
          <div class="mt-6 flex items-center space-x-2">
            <img width="50" height="50" src="https://img.icons8.com/isometric-line/50/bank.png" alt="bank"/>
          </div>
          <h1 class="text-3xl font-bold text-gray-900 mb-2">Create an account</h1>
          <p class="text-gray-600">Sign up now and unlock exclusive access!</p>
        </div>

        <!-- Progress Bar -->
        <div class="mb-6">
          <div class="flex justify-between mb-1 text-sm text-gray-600">
            <span>Step <span id="stepNumber">1</span> of 3</span>
          </div>
          <div class="w-full bg-gray-200 h-2 rounded-full overflow-hidden">
            <div id="progress" class="h-full bg-purple-600 transition-all duration-300" style="width: 33%;"></div>
          </div>
        </div>

        <!-- Multi-Step Form -->
        <form id="multiStepForm">
          <!-- Step 1 -->
          <div class="step" id="step-1">
            <label class="block text-sm font-medium mb-1">Full Name</label>
            <input type="text" class="w-full mb-4 px-4 py-2 border rounded-md"/>

            <label class="block text-sm font-medium mb-1">NID Number</label>
            <input type="email" class="w-full mb-4 px-4 py-2 border rounded-md"/>

            <label class="block text-sm font-medium mb-1">TIN Number</label>
            <input type="email" class="w-full mb-4 px-4 py-2 border rounded-md"/>

            <div class="flex justify-end">
              <button type="button" onclick="nextStep()"
                      class="bg-purple-600 text-white px-6 py-2 rounded-md hover:bg-purple-700">Next</button>
            </div>
          </div>

          <!-- Step 2 -->
          <div class="step hidden" id="step-2">
            <label class="block text-sm font-medium mb-1">Date of Birth</label>
            <input type="email" class="w-full mb-4 px-4 py-2 border rounded-md"/>

            <label class="block text-sm font-medium mb-1">Email</label>
            <input type="email" class="w-full mb-4 px-4 py-2 border rounded-md"/>

            <label class="block text-sm font-medium mb-1">Phone</label>
            <input type="email" class="w-full mb-4 px-4 py-2 border rounded-md"/>

            <div class="flex justify-between">
              <button type="button" onclick="prevStep()"
                      class="bg-gray-300 text-gray-800 px-6 py-2 rounded-md hover:bg-gray-400">Back</button>
              <button type="button" onclick="nextStep()"
                      class="bg-purple-600 text-white px-6 py-2 rounded-md hover:bg-purple-700">Next</button>
            </div>
          </div>

          <!-- Step 3 -->
          <div class="step hidden" id="step-3">
            <label class="block text-sm font-medium mb-1">Occupation</label>
            <input type="email" class="w-full mb-4 px-4 py-2 border rounded-md"/>

            <label class="block text-sm font-medium mb-1">Address</label>
            <input type="email" class="w-full mb-4 px-4 py-2 border rounded-md"/>

            <label class="block text-sm font-medium mb-1">Password</label>
            <input type="password" class="w-full mb-4 px-4 py-2 border rounded-md"/>

            <div class="flex justify-between">
              <button type="button" onclick="prevStep()"
                      class="bg-gray-300 text-gray-800 px-6 py-2 rounded-md hover:bg-gray-400">Back</button>
              <button type="submit"
                      class="bg-green-600 text-white px-6 py-2 rounded-md hover:bg-green-700">Submit</button>
            </div>
          </div>
        </form>

        <!-- Mail Icon Info -->
        <p class="mt-6 text-base text-gray-600 mb-1">Need help?</p>
        <div class="mt-2 flex items-center space-x-2">
          <img src="https://img.icons8.com/tiny-glyph/16/new-post.png" alt="Mail Icon" class="w-4 h-4" />
          <span class="text-base text-gray-700">help@erevenue.bd</span>
        </div>
      </div>

      <!-- Right Side: Illustration -->
      <div class="bg-gradient-to-br from-purple-100 via-white to-pink-100 flex items-center justify-center p-6">
        <img src="Assets\login-illustration.jpg" alt="Illustration" class="max-w-full h-auto" />
      </div>
    </div>
  </div>

  <!-- JavaScript for Multi-Step Logic -->
  <script>
    let currentStep = 1;

    function showStep(step) {
      document.querySelectorAll('.step').forEach((el, idx) => {
        el.classList.toggle('hidden', idx !== step - 1);
      });
      document.getElementById('progress').style.width = `${step * 33.33}%`;
      document.getElementById('stepNumber').innerText = step;
    }

    function nextStep() {
      if (currentStep < 3) {
        currentStep++;
        showStep(currentStep);
      }
    }

    function prevStep() {
      if (currentStep > 1) {
        currentStep--;
        showStep(currentStep);
      }
    }
  </script>
</body>
</html>
