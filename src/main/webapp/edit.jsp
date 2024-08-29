<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile - 7teen Events</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: url('background.jpg') no-repeat center center fixed; /* Replace with your background image */
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            flex-direction: column; /* Aligns content below header */
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
        .edit-profile-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
            animation: fadeIn 1s ease-in;
            margin-top: 100px; /* Offset for fixed header */
        }
        .edit-profile-container h1 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #ff6f61;
        }
        .edit-profile-container input {
            border-radius: 8px;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }
        .edit-profile-container input:focus {
            border-color: #ff6f61;
            box-shadow: 0 0 5px rgba(255, 111, 97, 0.5);
        }
        .edit-profile-container button {
            border-radius: 8px;
            background-color: #ff6f61;
            color: white;
            font-size: 18px;
            cursor: pointer;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }
        .edit-profile-container button:hover {
            background-color: #e65c50;
        }
        .edit-profile-container .form-group {
            margin-bottom: 20px;
        }
        footer {
            width: 100%;
            background-color: #ff6f61;
            padding: 10px 0;
            text-align: center;
            color: white;
            position: fixed;
            bottom: 0;
            left: 0;
            z-index: 1000;
        }
        /* Fade-in effect keyframes */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>

<!-- Include Header -->
<header>
    <jsp:include page="header.jsp" />
</header>

<div class="edit-profile-container">
    <h1>Edit Profile</h1>
    <form id="editProfileForm" action="editProfileAction.jsp" method="post">
        <div class="form-group">
            <input type="text" id="name" name="name" class="form-control" placeholder="Name" required>
        </div>
        <div class="form-group">
            <input type="email" id="email" name="email" class="form-control" placeholder="Email Address" required>
        </div>
        <div class="form-group">
            <input type="tel" id="phone" name="phone" class="form-control" placeholder="Phone Number" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block">Save Changes</button>
    </form>
</div>

<!-- Include Footer -->
<footer>
    <jsp:include page="footer.jsp" />
</footer>

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

<script>
$(document).ready(function() {
    $('#editProfileForm').on('submit', function(event) {
        event.preventDefault();

        // Clear previous messages
        $('.form-control').removeClass('is-invalid');

        var email = $('#email').val();
        var phone = $('#phone').val();

        // Basic validation
        if (!validateEmail(email)) {
            $('#email').addClass('is-invalid');
            return;
        }

        if (!validatePhone(phone)) {
            $('#phone').addClass('is-invalid');
            return;
        }

        // Submit form
        $(this).unbind('submit').submit();
    });

    function validateEmail(email) {
        var re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return re.test(email);
    }

    function validatePhone(phone) {
        var re = /^\d{10}$/; // Simple validation for 10 digit phone number
        return re.test(phone);
    }
});
</script>

</body>
</html>