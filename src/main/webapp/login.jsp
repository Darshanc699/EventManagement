<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - 7teen Events</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('background.jpg') no-repeat center center fixed; /* Replace with your background image */
            background-size: cover;
            height: 100vh;
            margin: 0;
            display: flex;
            flex-direction: column; /* Stack elements vertically */
            align-items: center;
            overflow: hidden; /* Prevents scrollbars during animation */
        }
        header {
            width: 100%;
            background-color: #ff6f61;
            padding: 15px 0;
            text-align: center;
            color: white;
            position: fixed; /* Fixed header at the top */
            top: 0;
            left: 0;
            z-index: 1000;
        }
        .main-content {
            margin-top: 100px; /* Adjust margin to prevent overlap with fixed header */
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
        }
        .welcome-text {
            margin-top: 20px;
            color: #ff6f61;
            font-size: 36px;
            font-weight: bold;
            opacity: 0;
            transform: translateX(-100%); /* Start off-screen to the left */
            animation: slideInFromLeft 2s ease-out forwards;
        }
        .login-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
            margin-top: 30px; /* Add margin to separate from welcome text */
        }
        .login-container h1 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #ff6f61;
        }
        .login-container input[type="email"],
        .login-container input[type="password"] {
            border-radius: 8px;
            transition: border-color 0.3s ease;
        }
        .login-container button {
            border-radius: 8px;
            background-color: #ff6f61;
            color: white;
            font-size: 18px;
            cursor: pointer;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }
        .login-container button:hover {
            background-color: #e65c50;
        }
        .login-container .forgot-password {
            margin-top: 15px;
            font-size: 14px;
        }
        .login-container .forgot-password a {
            color: #ff6f61;
            text-decoration: none;
            font-weight: bold;
        }
        .login-container .forgot-password a:hover {
            text-decoration: underline;
        }
        .register-container {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
        }
        .register-container a {
            color: #ff6f61;
            text-decoration: none;
            font-weight: bold;
        }
        .register-container a:hover {
            text-decoration: underline;
        }
        /* Animation keyframes */
        @keyframes slideInFromLeft {
            from {
                transform: translateX(-100%);
                opacity: 0;
            }
            to {
                transform: translateX(0);
                opacity: 1;
            }
        }
    </style>
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<!-- Include Header -->
<header>
    <jsp:include page="header.jsp" />
</header>

<!-- Main Content -->
<div class="main-content">
    <!-- Welcome Text -->
    <div class="welcome-text">
        Welcome to Login Page
    </div>

    <!-- Login Container -->
    <div class="login-container">
    <% if (request.getAttribute("status") != null) {%>
 <div id="msg"> <%= request.getAttribute("status")%></div>
 <%}%>
    
        <h1>Login to 7teen Events</h1>
        <form action="loginAction.jsp" method="post">
            <div class="form-group">
                <input type="email" name="email" class="form-control" placeholder="Email Address" required>
            </div>
            <div class="form-group">
                <input type="password" name="password" class="form-control" placeholder="Password" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Login</button>
            <div class="forgot-password">
                <a href="forgot pass.jsp">Forgot Password?</a>
                /<a href="reset.jsp">Reset pin</a>
            </div>
        </form>
        <div class="register-container">
            Don't have an account? <a href="register.jsp">Register Now</a>
        </div>
    </div>
</div>

<!-- Include Footer -->
<jsp:include page="footer.jsp" />

</body>
</html>