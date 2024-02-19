<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Add Book</title>
    <style>
        body {
            background-image: url('background.jpg'); /* Replace 'background.jpg' with your actual background image path */
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
        <h1>Book Management</h1>
        <nav>
            <ul>
            <li><a href="#" onclick="location.href='Adminselection.jsp'">Home</a></li>
            <li><a href="#" onclick="location.href='libbrarianSignup.jsp'">Librarian</a></li>
            <li><a href="#" onclick="location.href='index.jsp'">Book</a></li>
            <li><a href="#" onclick="location.href='saqib.jsp'">Show Books</a></li>
            <li><a href="#" onclick="location.href='department.jsp'">Departments</a></li>
            <li><a href="#" onclick="location.href='showDepartment.jsp'">Show Departments</a></li>
        
           
            
                
            </ul>
        </nav>
    </header>

    <div class="container">
        <h2>Add Book to Library</h2>
        <form id="bookForm" action="BookServlet" method="post">
            <label for="bookId">Book ID:</label>
            <input type="text" id="bookId" name="bookId" required>

            <label for="bookName">Book Name:</label>
            <input type="text" id="bookName" name="bookName" required>

            <label for="authorName">Author Name:</label>
            <input type="text" id="authorName" name="authorName" required>

            <div class="button-container">
                <button class="button" type="button" onclick="submitForm('add')">Add Book</button>
                <button class="button" type="button" onclick="submitForm('show')">Show Books</button>
            </div>
        </form>
    </div>

    <script>
        function submitForm(action) {
            if (action === 'add') {
                // Add any additional validation or logic for "Add Book" button
                document.getElementById('bookForm').action = 'BookServlet';
            } else if (action === 'show') {
                // Add any additional logic for "Show Books" button
                document.getElementById('bookForm').action = 'saqib.jsp';
            }

            // Submit the form
            document.getElementById('bookForm').submit();
        }
    </script>
</body>

</html>
