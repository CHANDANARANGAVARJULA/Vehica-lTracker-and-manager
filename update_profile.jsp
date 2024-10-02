<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 80%;
            margin: auto;
        }
        .update-form {
            margin-top: 20px;
        }
        .update-form label {
            margin: 10px 0;
            display: block;
        }
        .update-form input[type="text"], .update-form input[type="submit"] {
            padding: 10px;
            margin: 5px 0;
            width: 100%;
        }
        .update-form input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        .update-form input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update Profile</h1>

        <!-- Update profile form -->
        <div class="update-form">
            <form action="UpdateProfileServlet" method="post">
                <label for="firstname">First Name:</label>
                <input type="text" id="firstname" name="firstname" value="${firstname}" required>

                <label for="lastname">Last Name:</label>
                <input type="text" id="lastname" name="lastname" value="${lastname}" required>

                <label for="age">Age:</label>
                <input type="text" id="age" name="age" value="${age}" required>

                <label for="sex">Sex:</label>
                <input type="text" id="sex" name="sex" value="${sex}" required>

                <label for="vehiclenumber">Vehicle Number:</label>
                <input type="text" id="vehiclenumber" name="vehiclenumber" value="${vehiclenumber}" required>

                <label for="gpfcode">GPF Code:</label>
                <input type="text" id="gpfcode" name="gpfcode" value="${gpfcode}" required>

                <label for="address">Address:</label>
                <input type="text" id="address" name="address" value="${address}" required>

                <input type="submit" value="Update Profile">
            </form>
        </div>

        <!-- Link to return to profile page -->
        <div>
            <a href="profile.jsp">Back to Profile</a>
        </div>
    </div>
</body>
</html>
