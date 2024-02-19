<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Librarian SignUp</title>
    <style>
        body {
            background-image: url('back.jpg');
            background-size: cover;
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            padding: 10px;
            text-align: center;
        }

        h1 {
            font-size: 40px;
            color: #ffffff;
        }

        nav {
            display: flex;
            justify-content: flex-start;
            margin-top: 10px;
        }

        ul {
            list-style-type: none;
            padding: 0;
            display: flex;
        }

        li {
            margin-right: 20px;
        }

        a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            font-size: 18px;
            padding: 10px 20px;
            border-radius: 5px;
            transition: color 0.3s ease, background-color 0.3s ease;
        }

        a:hover {
            background-color: #ff66b2; /* Pink color on hover */
            color: #fff;
        }

        .container {
            width: 50%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .button-container {
            display: flex;
            justify-content: center;
            margin-top: 30px;
        }

        .button {
            padding: 15px 30px;
            font-size: 18px;
            margin: 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #45a049;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 8px;
        }

        input {
            padding: 8px;
            margin-bottom: 16px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Librarian SignUp</h1>
        <nav>
            <ul>
            <li><a href="#" onclick="location.href='Adminselection.jsp'">Home</a></li>
         
            <li><a href="#" onclick="location.href='index.jsp'">Book</a></li>
            <li><a href="#" onclick="location.href='saqib.jsp'"> Show Books</a></li>
            <li><a href="#" onclick="location.href='department.jsp'">Departments</a></li>
            <li><a href="#" onclick="location.href='showDepartment.jsp'">Show Departments</a></li>
            
            </ul>
        </nav>
    </header>

    <div class="container">
        <form id="librarianForm" action="LibrarianServlet" method="post">
            <label for="librarianEmail">Email:</label>
            <input type="text" id="librarianEmail" name="librarianEmail" required>

            <label for="librarianPassword">Password:</label>
            <input type="password" id="librarianPassword" name="librarianPassword" required>

            <div class="button-container">
                <button class="button" type="submit">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>
