<!DOCTYPE html>
<html>
<head>
    <title>Speed Notifier</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #00c6ff, #0072ff); /* Blue gradient background */
            color: #333;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 100%;
            max-width: 600px;
            padding: 20px;
            background-color: #fff;
            color: #333;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        h1 {
            margin-bottom: 20px;
            color: #0072ff;
        }
        .message, .error {
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
        }
        .message {
            background-color: #d4edda;
            color: #155724;
        }
        .error {
            background-color: #f8d7da;
            color: #721c24;
        }
        form {
            margin: 20px 0;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], select {
            width: calc(100% - 22px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            padding: 10px;
            font-size: 16px;
            color: #fff;
            background-color: #0072ff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .go-back-btn {
            margin-top: 20px;
        }
        .go-back-btn a {
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #0072ff;
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
        <h1>Speed Notifier</h1>
        <form action="SpeedNotifierServlet" method="post">
            <label for="gpfcode">GPF Code:</label>
            <input type="text" id="gpfcode" name="gpfcode" required>
            <label for="action">Action:</label>
            <select id="action" name="action">
                <option value="on">Turn On</option>
                <option value="off">Turn Off</option>
            </select>
            <input type="submit" value="Submit">
        </form>

        <div id="messageDiv" class="message"></div>
        <div id="errorDiv" class="error"></div>

        <div class="go-back-btn">
            <a href="home.jsp">Go Back</a>
        </div>

        <script>
            function updateSpeedStatus() {
                fetch('SpeedStatusServlet')
                    .then(response => response.json())
                    .then(data => {
                        document.getElementById('messageDiv').innerText = data.message;
                    })
                    .catch(error => {
                        console.error('Error fetching speed status:', error);
                        document.getElementById('messageDiv').innerText = 'Failed to retrieve speed status.';
                    });
            }

            setInterval(updateSpeedStatus, 15000); // Update every 15 seconds

            window.onload = updateSpeedStatus; // Initial call
        </script>
    </div>
</body>
</html>
