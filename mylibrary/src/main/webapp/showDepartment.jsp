<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%@ page import="java.util.List" %>
<%@ page import="model.Department" %>
<%@ page import="dao.DepartmentDao" %>
<%@ page import="daoimp.DepartmentDaoImp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Department List</title>
    <style>
        body {
            background-image: url('back.jpg'); 
            background-size: cover; 
            background-color: #f4f4f4;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 100vh;
        }

        header {
            background-color: #333;
            padding: 10px;
            text-align: center;
            width: 100%;
            box-sizing: border-box;
        }

        h1 {
        	font-size: 40px;
            color: #ffffff;
            margin: 0;
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
            width: 80%;
            max-width: 800px;
            margin-top: 20px;
        }

        h2 {
            color: #333;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            border-radius: 10px;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            transition: background-color 0.3s;
        }

        th {
            background-color: #333;
            color: #fff;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        p {
            color: #777;
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
        <h1>Department List</h1>
        <nav>
            <ul>
            <li><a href="#" onclick="location.href='Adminselection.jsp'">Home</a></li>
            <li><a href="#" onclick="location.href='libbrarianSignup.jsp'">Librarian</a></li>
            <li><a href="#" onclick="location.href='index.jsp'">Book</a></li>
            <li><a href="#" onclick="location.href='saqib.jsp'">Show Books</a></li>
            <li><a href="#" onclick="location.href='department.jsp'">Departments</a></li>
          
            </ul>
        </nav>
    </header>

    <div class="container">
       

        <% 
            DepartmentDao departmentDao = new DepartmentDaoImp();
            List<Department> departmentList = departmentDao.getAllDepartment();

            if (departmentList != null && !departmentList.isEmpty()) {
        %>
            <table>
                <thead>
                    <tr>
                        <th>Department ID</th>
                        <th>Department Name</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Department departmentloop : departmentList) {
                    %>
                            <tr>
                                <td><%= departmentloop.getDepartmentId() %></td>
                                <td><%= departmentloop.getDepartmentName() %></td>
                            </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        <%
            } else {
        %>
            <p>No Department available in the list.</p>
        <%
            }
        %>
    </div>

</body>
</html>
