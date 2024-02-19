<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Library Management System</title>
    <style>
        body {
            background-image: url('back.jpg');
            background-size: cover;
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        header {
            background-color: #333;
            padding: 20px;
            text-align:center;
        }

        h1 {
            color: #ffffff;
            margin: 0;
        }

        nav {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
            width: 100%;
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
    </style>
</head>

<body>
    <header>
        <h1>Library Management System</h1>
        <nav>
        <a href="Adminselection.jsp">Home</a>
        <a href="libbrarianSignup.jsp">Librarian</a>
        <a href="index.jsp">Add Book</a>
        <a href="saqib.jsp">Show Books</a>
        <a href="department.jsp">Department</a>
        <a href="showDepartment.jsp"> Show Department</a>

    </nav>
    </header>


</body>

</html>
