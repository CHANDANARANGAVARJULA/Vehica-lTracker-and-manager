<!DOCTYPE html>
<html>
<head>
    <title>Location Notifier</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            max-width: 400px;
            width: 100%;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        input[type="text"], input[type="submit"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
        .go-back-btn {
            margin-top: 20px;
        }
        .go-back-btn a {
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #007BFF;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            cursor: pointer;
        }
        .go-back-btn a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Location Notifier</h1>
        <form action="LocationTrackerServlet" method="post">
            <label for="gpfcode">GPF Code:</label>
            <input type="text" id="gpfcode" name="gpfcode" required>
            <label for="vehiclenumber">Vehicle Number:</label>
            <input type="text" id="vehiclenumber" name="vehiclenumber" required>
            <input type="submit" value="OK">
        </form>
        <div class="go-back-btn">
            <a href="home.jsp">Go Back</a>
        </div>
    </div>
</body>
</html>
