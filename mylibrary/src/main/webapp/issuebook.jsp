<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Book" %>
<%@ page import="daoimp.BookDaoImp" %>
<%@ page import="dao.BookDao" %>

<%@ page import="model.Student" %>
<%@ page import="daoimp.StudentDaoImp" %>
<%@ page import="dao.StudentDao" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Issue Book</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
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
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            display: grid;
            gap: 15px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        select,
        input[type="date"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
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

        i {
            margin-right: 5px;
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
    
      
            
           
            <li><a href="#" onclick="location.href='showIssuebook.jsp'">Show Issue Books</a></li>
            
            <li><a href="#" onclick="location.href='ReturnIssueBook.jsp'">Return Issue Book</a></li>
                
            </ul>
        </nav>
    </header>

    <div class="container">

        <h2><i class="fas fa-book"></i> Issue Book</h2>

        <form id="issuebookForm" action="BookIssueServlet" method="post">

            <!-- Book ID (Combo Box) -->
            <label for="bookId"><i class="fas fa-book"></i> Book ID:</label>
            <select id="bookId" name="bookId">
            <%
                BookDao bookDao = new BookDaoImp();
                List<Book> bookList = bookDao.getAllBook();
                for (Book book : bookList) {
            %>
                <option value="<%= book.getBookid() %>"><%= book.getBookid() %></option>
            <%
                }
            %>
            </select>

            <br>

            <!-- Student ID (Combo Box) -->
            <label for="studentId"><i class="fas fa-user"></i> Student ID:</label>
            <select id="studentId" name="studentId">
            <%
                StudentDao studentDao = new StudentDaoImp();
                List<Student> studentList = studentDao.getAllStudents();
                for (Student student : studentList) {
            %>
                <option value="<%= student.getStudentId() %>"><%= student.getRollNo()  %></option>
            <%
                }
            %>
            </select>

            <br>

            <!-- Issue Date (Assuming it's a date input) -->
            <label for="issueDate"><i class="fas fa-calendar-alt"></i> Issue Date:</label>
            <input type="date" id="issueDate" name="issueDate" required>

            <br>

            <!-- Due Date (Assuming it's a date input) -->
            <label for="dueDate"><i class="fas fa-calendar-alt"></i> Due Date:</label>
            <input type="date" id="dueDate" name="dueDate" required>

            <br>
            <div class="button-container">
            <button class="button" type="button" onclick="submitForm('add')">Issue Book</button>
            <button class="button" type="button" onclick="submitForm('show')">Show Issue Book</button>
        </div>
    </form>
</div>

<script>
    function submitForm(action) {
        if (action === 'add') {
            document.getElementById('issuebookForm').action = 'BookIssueServlet';
        } else if (action === 'show') {
            document.getElementById('issuebookForm').action = 'showIssueBook.jsp';
        }
        document.getElementById('issuebookForm').submit();
    }
</script>
</body>
</html>
