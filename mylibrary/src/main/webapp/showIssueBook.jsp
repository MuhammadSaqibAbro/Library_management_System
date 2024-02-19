<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.BookIssue" %>
<%@ page import="dao.BookIssueDao" %>
<%@ page import="daoimp.BookIssueDaoImp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Issue List</title>
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

        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        .table-container {
            width: 80%;
            max-width: 800px;
            margin: 20px auto;
            overflow-x: auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            transition: background-color 0.3s;
        }

        th {
            background-color: #4caf50;
            color: #fff;
            position: sticky;
            top: 0;
        }

        tr:hover {
            background-color: #f0f0f0;
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
            <li><a href="#" onclick="location.href='Librarianselection.jsp'">Home</a></li>
      
            <li><a href="#" onclick="location.href='student.jsp'">Student</a></li>
            <li><a href="#" onclick="location.href='issuebook.jsp'">Issue Book</a></li>
            <li><a href="#" onclick="location.href='ReturnIssueBook.jsp'">Return Issue Book</a></li>
               
            </ul>
        </nav>
    </header>

    <div>
        <h2>Book Issue List</h2>

        <% 
            BookIssueDao bookIssueDao = new BookIssueDaoImp();
            List<BookIssue> bookIssueList = bookIssueDao.getAllBookIssue();

            if (bookIssueList != null && !bookIssueList.isEmpty()) {
        %>
            <div class="table-container">
                <table>
                    <thead>
                        <tr>
                            <th>Book ID</th>
                            <th>Student Id</th>
                            <th>Issue Date</th>
                            <th>Due Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (BookIssue bookIssue : bookIssueList) {
                        %>
                                <tr>
                                    <td><%= bookIssue.getBookId() %></td>
                                    <td><%= bookIssue.getStudentId() %></td>
                                    <td><%= bookIssue.getIssueDate() %></td>
                                    <td><%= bookIssue.getDueDate() %></td>
                                </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        <%
            } else {
        %>
            <p>No books available in the list.</p>
        <%
            }
        %>
    </div>

</body>
</html>
