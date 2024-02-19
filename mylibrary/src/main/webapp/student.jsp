<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Book" %>
<%@ page import="model.Department" %>
<%@ page import="daoimp.BookDaoImp" %>
<%@ page import="dao.BookDao" %>
<%@ page import="daoimp.DepartmentDaoImp" %>
<%@ page import="dao.DepartmentDao" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Student</title>
    <style>
        body {
            background-image: url('back.jpg'); 
            background-size: cover; 
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        header {
            background-color: #333;
            padding: 10px;
            text-align: center;
            width: 100%;
        }

        h1 {
        	font-size: 40px;
            color: #ffffff;
            margin: 0;
        }

        nav {
            margin-top: 10px;
        }

        ul {
            list-style-type: none;
            padding: 0;
            display: flex;
            justify-content: center;
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
            text-align: center;
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

        input, select {
            padding: 8px;
            margin-bottom: 16px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Student</h1>
        <nav>
            <ul>
            <li><a href="#" onclick="location.href='Librarianselection.jsp'">Home</a></li>
      
            
            <li><a href="#" onclick="location.href='issuebook.jsp'">Issue Book</a></li>
            <li><a href="#" onclick="location.href='showIssuebook.jsp'">Show Issue Books</a></li>
            <li><a href="#" onclick="location.href='ReturnIssueBook.jsp'">Return Issue Book</a></li>
           
            
            </ul>
        </nav>
    </header>

    <div class="container">
        <form id="studentForm" action="StudentServlet" method="post">
            <label for="studentId">Student ID:</label>
            <input type="text" id="studentId" name="studentId" required>

            <label for="rollNo">Roll No:</label>
            <input type="text" id="rollNo" name="rollNo" required>

            <label for="studentName">Student Name:</label>
            <input type="text" id="studentName" name="studentName" required>
            
            <label for="studentCity">Student City:</label>
            <input type="text" id="studentCity" name="studentCity" required>
            
            <label for="book">Book:</label>
            <select id="book" name="book">
                <%
                    BookDao bookDao = new BookDaoImp();
                    List<Book> bookList = bookDao.getAllBook();
                    for (Book book : bookList) {
                %>
                    <option value="<%= book.getBookid() %>"><%= book.getBookName() %></option>
                <%
                    }
                %>
            </select>

            <label for="department">Department:</label>
            <select id="department" name="department">
                <%
                    DepartmentDao departmentDao = new DepartmentDaoImp();
                    List<Department> departmentList = departmentDao.getAllDepartment();
                    for (Department department : departmentList) {
                %>
                    <option value="<%= department.getDepartmentId() %>"><%= department.getDepartmentName() %></option>
                <%
                    }
                %>
            </select>

            <div class="button-container">
            <button class="button" type="button" onclick="submitForm('add')">Add Student</button>
            <button class="button" type="button" onclick="submitForm('show')">Show Students</button>
        </div>
    </form>
</div>

<script>
    function submitForm(action) {
        if (action === 'add') {
            // Add any additional validation or logic for "Add Book" button
            document.getElementById('studentForm').action = 'StudentServlet';
        } else if (action === 'show') {
            // Add any additional logic for "Show Books" button
            document.getElementById('studentForm').action = 'showStudents.jsp';
        }

        // Submit the form
        document.getElementById('studentForm').submit();
    }
</script>
</body>
</html>
