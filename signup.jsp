<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #007BFF; /* Blue background color */
            color: #fff;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            width: 100%;
            max-width: 600px;
            padding: 20px;
            background-color: #fff;
            color: #333;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"],
        input[type="password"],
        select {
            margin-bottom: 15px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .input-hint {
            font-size: 0.8em;
            color: #777;
            margin-top: -10px;
            margin-bottom: 10px;
        }

        .error-message {
            color: red;
            font-size: 0.8em;
            margin-top: -10px;
            margin-bottom: 10px;
        }

        input[type="submit"] {
            padding: 10px;
            font-size: 16px;
            color: #fff;
            background-color: #007BFF;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .login-link {
            text-align: center;
            margin-top: 10px;
        }

        .login-link a {
            color: #007BFF;
            text-decoration: none;
            font-weight: bold;
        }

        .login-link a:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        function validateForm(event) {
            let isValid = true;

            // Clear previous error messages
            document.querySelectorAll('.error-message').forEach(el => el.textContent = '');

            // GPF Code validation
            const gpfcode = document.getElementById('gpfcode');
            if (gpfcode.value.length !== 6) {
                displayError(gpfcode, 'GPF code should be 6 digits.');
                isValid = false;
            }

            // Name validation
            const name = document.getElementById('name');
            if (name.value.trim() === '') {
                displayError(name, 'Name is required.');
                isValid = false;
            }

            // Age validation
            const age = document.getElementById('age');
            if (age.value.trim() === '' || isNaN(age.value) || age.value <= 0) {
                displayError(age, 'Enter a valid age.');
                isValid = false;
            }

            // Sex validation
            const sex = document.getElementById('sex');
            if (sex.value === '') {
                displayError(sex, 'Select your sex.');
                isValid = false;
            }

            // Username validation
            const username = document.getElementById('username');
            if (username.value.trim() === '') {
                displayError(username, 'Username is required.');
                isValid = false;
            }

            // Password validation
            const password = document.getElementById('password');
            const passwordPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=!]).{8,}$/;
            if (!passwordPattern.test(password.value)) {
                displayError(password, 'Password must be at least 8 characters long, include one capital letter, one special character, and one number.');
                isValid = false;
            }

            // Vehicle Number validation
            const vehiclenumber = document.getElementById('vehiclenumber');
            if (vehiclenumber.value.length !== 10) {
                displayError(vehiclenumber, 'Vehicle number should be 10 characters long.');
                isValid = false;
            }

            if (!isValid) {
                event.preventDefault();
            }
        }

        function displayError(element, message) {
            const errorElement = document.createElement('div');
            errorElement.classList.add('error-message');
            errorElement.textContent = message;
            element.parentElement.appendChild(errorElement);
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Register</h1>
        <form action="RegisterServlet" method="post" onsubmit="validateForm(event)">
            <label for="gpfcode">GPF Code:</label>
            <input type="text" id="gpfcode" name="gpfcode" required>
            <div class="input-hint">GPF code should be 6 digits.</div>

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            <div class="input-hint">Enter your full name.</div>

            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required>
            <div class="input-hint">Enter your age.</div>

            <label for="sex">Sex:</label>
            <select id="sex" name="sex" required>
                <option value="" disabled selected>Select your sex</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select>
            <div class="input-hint">Select your gender.</div>

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            <div class="input-hint">Choose a unique username.</div>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <div class="input-hint">Password must be at least 8 characters long, include one capital letter, one special character, and one number.</div>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address">
            <div class="input-hint">Enter your address.</div>

            <label for="vehiclenumber">Vehicle Number:</label>
            <input type="text" id="vehiclenumber" name="vehiclenumber" required>
            <div class="input-hint">Vehicle number should be 10 characters long.</div>

            <input type="submit" value="Register">
        </form>
        <p class="login-link">Do you have an account? <a href="login.jsp">Sign in</a></p>
    </div>
</body>
</html>
