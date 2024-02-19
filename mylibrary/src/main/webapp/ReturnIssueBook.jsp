<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Return Issued Book</title>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: url('back.jpg') center/cover no-repeat fixed;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        header {
            background-color: #333;
            padding: 10px;
            text-align: center;
            width: 100%;
        }

        h1 {
            color: #ffffff;
            margin: 0;
        }

        nav {
            display: flex;
            justify-content: center;
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
            width: 300px;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin-top: 20px;
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

        button {
            background-color: #4caf50;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        .icon {
            margin-right: 8px;
            font-size: 20px;
        }
    </style>
</head>

<body>
    <header>
        <h1>Library Management System</h1>
        <nav>
            <ul>
            <li><a href="#" onclick="location.href='Librarianselection.jsp'">Home</a></li>

            <li><a href="#" onclick="location.href='student.jsp'">Add Students</a></li>
            <li><a href="#" onclick="location.href='issuebook.jsp'">Issue Book</a></li>
            <li><a href="#" onclick="location.href='showIssuebook.jsp'">Show Issue Books</a></li>
            </ul>
        </nav>
    </header>

    <div class="container">
        <h2>Return Issued Book</h2>
        <form action="ReturnIssueBookServlet" method="post">
            <label for="bookId">Book ID:</label>
            <input type="text" id="bookId" name="bookId" required>

            <label for="userId">User ID:</label>
            <input type="text" id="userId" name="userId" required>

            <label for="returnDate">Return Date:</label>
            <input type="date" id="returnDate" name="returnDate" required>

            <button type="submit">
                <span class="icon">&#x1F4E6;</span> Return Book
            </button>
        </form>
    </div>
</body>

</html>
