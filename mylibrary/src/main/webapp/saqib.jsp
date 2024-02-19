<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Book" %>
<%@ page import="dao.BookDao" %>
<%@ page import="daoimp.BookDaoImp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Book List</title>
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
            font-size: 16px;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #ffcc00;
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
    <h1>Book List</h1>
    <nav>
        <ul>
        <li><a href="#" onclick="location.href='Adminselection.jsp'">Home</a></li>
        <li><a href="#" onclick="location.href='libbrarianSignup.jsp'">Librarian</a></li>
        <li><a href="#" onclick="location.href='index.jsp'">Book</a></li>
      
        <li><a href="#" onclick="location.href='department.jsp'">Departments</a></li>
        <li><a href="#" onclick="location.href='showDepartment.jsp'">Show Departments</a></li>
        </ul>
    </nav>
</header>

<div>
   

    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>Book ID</th>
                    <th>Book Name</th>
                    <th>Author Name</th>
                </tr>
            </thead>
            <tbody>
                <%
                    BookDao bookDao = new BookDaoImp();
                    List<Book> bookList = bookDao.getAllBook();

                    for (Book book : bookList) {
                %>
                        <tr>
                            <td><%= book.getBookid() %></td>
                            <td><%= book.getBookName() %></td>
                            <td><%= book.getBookAuthorName() %></td>
                        </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>

    <%
        if (bookList == null || bookList.isEmpty()) {
    %>
        <p>No books available in the list.</p>
    <%
        }
    %>
</div>

</body>
</html>
