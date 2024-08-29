<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reset Password</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 100vh;
        }
        header {
            width: 100%;
            background-color: #ff6f61;
            padding: 15px 0;
            text-align: center;
            color: white;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
        }
        .reset-password-container {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 100px; /* Offset for fixed header */
            width: 350px;
        }
        .reset-password-container h2 {
            margin-bottom: 20px;
            color: #ff6f61;
        }
        .reset-password-container form {
            display: flex;
            flex-direction: column;
        }
        .reset-password-container form input[type="email"],
        .reset-password-container form input[type="password"],
        .reset-password-container form input[type="submit"] {
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 16px;
        }
        .reset-password-container form input[type="submit"] {
            background-color: #ff6f61;
            color: white;
            border: none;
            cursor: pointer;
        }
        .reset-password-container form input[type="submit"]:hover {
            background-color: #e65c50;
        }
    </style>
    <!-- Include Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<!-- Include Header -->
<header>
    <jsp:include page="header.jsp" />
</header>

<div class="reset-password-container">
    <h2>Reset Your Password</h2>
    <form action="update-password.jsp" method="post">
    Enter your email:<br>
        <input type="email" name="email" placeholder="Enter your email" required>
          Enter your old password:
        <input type="password" name="old_password" placeholder="Enter old password" required>
         Enter your new password: <input type="password" name="password" placeholder="Enter new password" required>
       Re Enter your password: <input type="password" name="confirm_password" placeholder="Confirm new password" required>
        <input type="hidden" name="token" value="<%= request.getParameter("token") %>">
        <input type="submit" value="Reset Password">
    </form>
</div>

<!-- Include Footer -->
<jsp:include page="footer.jsp" />

</body>
</html>