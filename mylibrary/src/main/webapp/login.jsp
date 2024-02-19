<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-9C6g/8kGc1pYm2ay9eXe7Rjo63lJvP3rfZT/7vnvGv+X4ZXNLlUn0K1od5BYthzJW4zYFb6ep7Vf8ko9IaKPhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f3f3f3;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  .login-box {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    padding: 20px;
    text-align: center;
    max-width: 400px;
    width: 100%;
  }

  .login-title {
    font-size: 32px;
    font-weight: bold;
    margin-bottom: 20px;
    color: #333;
  }

  .login-page-title {
    font-size: 24px;
    margin-bottom: 20px;
    color: #555;
  }

  .button-container {
    display: flex;
    justify-content: center;
  }

  .login-button {
    padding: 10px 20px;
    margin: 0 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    text-transform: uppercase;
    transition: all 0.3s ease;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .login-button:hover {
    transform: translateY(-3px);
  }

  .admin-button {
    background-color: #007bff;
    color: #fff;
  }

  .librarian-button {
    background-color: #28a745;
    color: #fff;
  }

  /* Icon styles */
  .button-icon {
    margin-right: 5px;
  }
</style>
</head>
<body>

<div class="login-box">
  <h3>Library Management System</h3>
  <h2 class="login-page-title">Login Page</h2>
  <div class="button-container">
    <button class="login-button admin-button" onclick="adminLogin()"><i class="fas fa-user-shield button-icon"></i>Admin</button>
    <button class="login-button librarian-button" onclick="librarianLogin()"><i class="fas fa-user button-icon"></i>Librarian</button>
  </div>
</div>

<script>
  function adminLogin() {
    console.log("Admin login clicked");
    // Redirect to the admin.jsp page
    window.location.href = "Admin.jsp";
  }

  function librarianLogin() {
    console.log("Librarian login clicked");
    // Add your librarian login logic here
    window.location.href = "libbrarian.jsp";
  }
</script>

</body>
</html>
