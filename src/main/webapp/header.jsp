<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>7teen Events - Event Management</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
        }
        .header {
            background-color: #ff6f61; /* Eye-catching coral color */
            color: white;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .header .logo {
            display: flex;
            align-items: center;
        }
        .header .logo img {
            height: 50px;
            margin-right: 15px;
        }
        .header .logo .site-title {
            font-size: 24px;
            font-weight: bold;
            color: white;
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
    </style>
</head>
<body>

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

</body>
</html>