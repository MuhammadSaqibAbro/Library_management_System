<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Student" %>
<%@ page import="dao.StudentDao" %>
<%@ page import="daoimp.StudentDaoImp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
    <style>
        body {
        	background-image: url('back.jpg'); 
            background-size: cover; 
            background-color: white; /* Light Blue Background */
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #001f3f; /* Dark Blue Text */
        }
        header {
            background-color: #333;
            padding: 10px;
            text-align: center;
        }

        h1 {
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


        h2 {
            color: #001f3f; /* Dark Blue Text */
            text-align: center;
        }

        table {
            width: 80%;
            max-width: 800px;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            border-radius: 10px;
            color: #001f3f; /* Dark Blue Text */
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            transition: background-color 0.3s;
        }

        th {
            background-color: #001f3f; /* Dark Blue Header Background */
            color: #fff;
        }

        tr:hover {
            background-color: #003366; /* Darker Blue Hover Background */
            cursor: pointer;
        }

        p {
            color: #777;
            text-align: center;
        }
    </style>
</head>
<body>
<header>
<h1>Library Management System</h1>
<nav>
    <ul>
        <li><a href="#" onclick="location.href='index.jsp'">Home</a></li>
        <li><a href="#" onclick="location.href='book.jsp'">Books</a></li>
        <li><a href="#" onclick="location.href='department.jsp'">Departments</a></li>
        <li><a href="#" onclick="location.href='student.jsp'">Student Book Issues</a></li>
    </ul>
</nav>
</header>

<div>
    <h2>Student List</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Roll No</th>
                <th>Name</th>
                <th>City</th>
                <th>Book</th>
                <th>Department</th>
            </tr>
        </thead>
        <tbody>
            <%
                StudentDao studentDao = new StudentDaoImp();
                List<Student> studentList = studentDao.getAllStudents();

                if (studentList != null && !studentList.isEmpty()) {
                    for (Student studentloop : studentList) {
            %>
                        <tr onclick="getRowId('<%= studentloop.getStudentId() %>')">
                            <td><h4><%= studentloop.getStudentId() %></h4></td>
                            <td><h4><%= studentloop.getRollNo() %></h4></td>
                            <td><h4><%= studentloop.getStudentName() %></h4></td>
                            <td><h4><%= studentloop.getCity() %></h4></td>
                            <td><h4><%= studentloop.getBookissue() %></h4></td>
                            <td><h4><%= studentloop.getDepartment() %></h4></td>
                        </tr>
            <%
                    }
                } else {
            %>
                <p>No Students available in the list.</p>
            <%
                }
            %>
        </tbody>
    </table>

    <script>
        var clickedRowId;

        function getRowId(studentId) {
            clickedRowId = studentId;
            alert("Clicked Row ID stored in variable: " + clickedRowId);

            
        }
    </script>

</div>


</body>
</html>
