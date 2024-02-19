<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 300px;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 16px;
        }

        button {
            flex: 1;
            padding: 10px;
            font-size: 16px;
            background-color: #3498db;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #2980b9;
        }

        .icon {
            margin-right: 8px;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Admin Login</h2>
        <form action="AdminAccessServlet" method="post">
            <label for="adminEmail">Email:</label>
            <input type="text" id="adminEmail" name="adminEmail" required>

            <label for="adminPassword">Password:</label>
            <input type="password" id="adminPassword" name="adminPassword" required>

            <div class="button-container">
                <button type="submit">
                    <span class="icon">&#x1F512;</span> Login
                </button>

                <button type="button" onclick="location.href='AdminSignup.jsp'">
                    <span class="icon">&#x1F4E9;</span> Signup
                </button>
            </div>
        </form>
    </div>
</body>
</html>
