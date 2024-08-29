<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Registration</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            height: 100vh;
            margin: 0;
        }
        .header {
            background-color: #ff6f61; /* Eye-catching coral color */
            color: white;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            position: fixed;
            top: 0;
            z-index: 1000;
        }
        .header .logo {
            display: flex;
            align-items: center;
        }
        .header .logo img {
            height: 50px;
            margin-right: 15px;
        }
        .header .nav-bar {
            display: flex;
            align-items: center;
        }
        .header .nav-bar a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        .header .nav-bar a:hover {
            background-color: #e65c50; /* Slightly darker coral for hover */
            border-radius: 5px;
        }
      .animated-message-container {
    width: 100%;
    overflow: hidden;
    background: #ffeedf; /* Light coral background */
    color: #ff6f61; /* Text color */
    padding: 15px 0;
    position: fixed;
    top: 60px; /* Adjust for fixed header */
    z-index: 900; /* Behind header */
    text-align: center; /* Center the animation container */
}

.animated-message {
    display: inline-block;
    white-space: nowrap;
    font-size: 20px;
    font-weight: bold;
    animation: scrollText 15s linear infinite;
    position: relative; /* Position relative for proper translation */
}

@keyframes scrollText {
    0% {
        left: -100%; /* Start from the left outside of the viewport */
    }
    100% {
        left: 100%; /* End far to the right outside of the viewport */
    }
}
      
        .registration-container {
            background: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            margin-top: 160px; /* Adjust for fixed header and animated message */
        }
        .registration-container h1 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #ff6f61;
        }
        .registration-container input[type="text"],
        .registration-container input[type="email"],
        .registration-container input[type="password"] {
            border-radius: 8px;
            transition: border-color 0.3s ease;
        }
        .registration-container button {
            border-radius: 8px;
            background-color: #ff6f61;
            color: white;
            font-size: 18px;
            cursor: pointer;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }
        .registration-container button:hover {
            background-color: #e65c50;
        }
        .strength-message {
            font-size: 14px;
            margin-bottom: 10px;
        }
        .weak-password {
            color: red;
        }
        .strong-password {
            color: green;
        }
        .login-container {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }
        .login-container a {
            color: #ff6f61;
            text-decoration: none;
            font-weight: bold;
        }
        .login-container a:hover {
            text-decoration: underline;
        }
    </style>
    <!-- jQuery and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#password, #confirmPassword').on('keyup', function () {
                const password = $('#password').val();
                let strength = 0;

                if (password.length >= 8) strength += 1;
                if (password.match(/[a-z]+/)) strength += 1;
                if (password.match(/[A-Z]+/)) strength += 1;
                if (password.match(/[0-9]+/)) strength += 1;
                if (password.match(/[\W_]+/)) strength += 1;

                if (strength <= 2) {
                    $('#password, #confirmPassword').removeClass('is-valid').addClass('is-invalid');
                    $('#strengthMessage').text('Weak password').removeClass().addClass('strength-message weak-password');
                } else if (strength <= 4) {
                    $('#password, #confirmPassword').removeClass('is-valid').addClass('is-invalid');
                    $('#strengthMessage').text('Moderate password').removeClass().addClass('strength-message text-warning');
                } else {
                    $('#password, #confirmPassword').removeClass('is-invalid').addClass('is-valid');
                    $('#strengthMessage').text('Strong password').removeClass().addClass('strength-message strong-password');
                }
            });
        });
    </script>
</head>
<body>

<!-- Custom Header -->
<div class="header">
    <div class="logo">
        <img src="Preview.png" alt="7teen Events Logo"> 
    </div>
    <div class="nav-bar">
        <a href="home.jsp">Home</a>
        <a href="home.jsp#servicesSection">Services</a> 
        <a href="home.jsp#eventsSection">Events</a> 
        <a href="about.jsp">About Us</a>
        <a href="contact.jsp">Contact</a>
    </div>
</div>

<!-- Animated Welcome Message -->
<div class="animated-message-container">
    <div class="animated-message">Welcome to our 7teen registration place</div>
</div>

<div class="registration-container">
<% if (request.getAttribute("status") != null) {%>
 <div id="msg"> <%= request.getAttribute("status")%></div>
 <%}%>


    <h1>Register for Event</h1>
    <form action="Event_management" method="post">
        <div class="form-group">
            <input type="text" name="name" class="form-control" placeholder="Full Name" required>
        </div>
        
        <div class="form-group">
            <input type="number" name="phone" class="form-control" placeholder="phone number" required>
        </div>
        
        <div class="form-group">
            <input type="email" name="email" class="form-control" placeholder="Email Address" required>
        </div>
        <div class="form-group">
            <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
        </div>
        <div class="form-group">
            <input type="password" name="confirmPassword" id="confirmPassword" class="form-control" placeholder="Confirm Password" required>
        </div>
        <div id="strengthMessage" class="strength-message"></div>
        <div class="form-check mb-3">
            <input type="checkbox" name="terms" class="form-check-input" required>
            <label class="form-check-label" for="terms">I agree to the <a href="#">terms and conditions</a>.</label>
        </div>
        <button type="submit" name= "register" class="btn btn-primary btn-block">Register Now</button>
    </form>
    <div class="login-container">
        Already have an account? <a href="login.jsp">Login</a>
    </div>
</div>

</body>
</html>