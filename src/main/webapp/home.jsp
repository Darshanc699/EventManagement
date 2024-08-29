<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>7teen Events - Home</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f9f9f9;
            color: #333;
            padding-bottom: 60px; /* Space for the footer */
        }
        .hero-section {
            background-image: url('hero-background.jpg'); /* Replace with your image path */
            background-size: cover;
            background-position: center;
            color: white;
            padding: 100px 20px;
            text-align: center;
            box-shadow: inset 0 0 0 2000px rgba(0, 0, 0, 0.5);
        }
        .hero-section h1 {
            font-size: 48px;
            margin: 0;
            font-weight: bold;
        }
        .hero-section p {
            font-size: 20px;
            margin: 10px 0 30px;
        }
        .hero-section .cta-button {
            background-color: #ff6f61;
            color: white;
            padding: 15px 30px;
            font-size: 18px;
            text-decoration: none;
            border-radius: 50px;
            transition: background-color 0.3s ease;
        }
        .hero-section .cta-button:hover {
            background-color: #e65c50;
        }
        .services-section,
        .events-section {
            padding: 60px 20px;
            text-align: center;
        }
        .services-section {
            background-color: #fff;
        }
        .services-section h2 {
            font-size: 36px;
            margin-bottom: 40px;
            color: #ff6f61;
        }
        .services-container {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        .service-box {
            background-color: #f4f4f9;
            padding: 20px;
            border-radius: 10px;
            width: 300px;
            margin: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .service-box img {
            width: 300px;
            height: 270px;
            margin-bottom: 20px;
        }
        .service-box h3 {
            font-size: 24px;
            margin-bottom: 10px;
            color: #333;
        }
        .service-box p {
            font-size: 16px;
            color: #777;
        }
        .events-section {
            background-color: #ff6f61;
            color: white;
        }
        .events-section h2 {
            font-size: 36px;
            margin-bottom: 40px;
        }
        .event-box {
            background-color: white;
            color: #333;
            padding: 20px;
            border-radius: 10px;
            width: 300px;
            margin: 20px;
            display: inline-block;
            text-align: left;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .event-box h3 {
            font-size: 24px;
            margin-bottom: 10px;
        }
        .event-box p {
            font-size: 16px;
            margin-bottom: 10px;
        }
        .event-box .event-date {
            font-weight: bold;
            color: #ff6f61;
        }
        #footer {
            display: none; /* Hide footer initially */
            position: fixed; /* Fix footer at the bottom */
            bottom: 0;
            width: 100%;
            background-color: #333; /* Adjust according to your design */
            color: white;
            text-align: center;
            padding: 10px;
            box-shadow: 0 -2px 5px rgba(0, 0, 0, 0.2);
        }
    </style>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

<jsp:include page="header.jsp" />

<!-- Hero Section -->
<div class="hero-section">
    <h1>Welcome to 7teen Events</h1>
    <p>Your trusted partner in creating unforgettable experiences.</p>
    <a href="register.jsp" class="cta-button">Get Started</a>
</div>

<!-- Services Section -->
<div id="servicesSection" class="services-section">
    <h2>Our Services</h2>
    <div class="services-container">
        <div class="service-box">
            <img src="ce.jfif" alt="Corporate Events"> <!-- Replace with your icons -->
            <h3>Corporate Events</h3>
            <p>We organize professional corporate events that leave a lasting impression on your clients and team.</p>
        </div>
        <div class="service-box">
            <img src="me.jpg" alt="Weddings">
            <h3>Weddings</h3>
            <p>Make your special day truly unforgettable with our comprehensive wedding planning services.</p>
        </div>
        <div class="service-box">
            <img src="pi.jfif" alt="Private Parties">
            <h3>Private Parties</h3>
            <p>From birthdays to anniversaries, we create personalized private parties that your guests will love.</p>
        </div>
    </div>
</div>

<!-- Events Section -->
<div id="eventsSection" class="events-section">
    <h2>Upcoming Events</h2>
    <div class="events-container">
        <div class="event-box">
            <h3>Annual Tech Fest</h3>
            <p class="event-date">September 15, 2024</p>
            <p>Join us for the biggest tech event of the year, showcasing the latest innovations and trends.</p>
        </div>
        <div class="event-box">
            <h3>Summer Gala</h3>
            <p class="event-date">August 25, 2024</p>
            <p>A night of elegance and entertainment, perfect for networking and making new connections.</p>
        </div>
        <div class="event-box">
            <h3>Charity Ball</h3>
            <p class="event-date">October 12, 2024</p>
            <p>Support a great cause while enjoying a night of music, dining, and dancing.</p>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />

<script>
$(document).ready(function() {
    var $footer = $('#footer');
    
    $(window).scroll(function() {
        if ($(this).scrollTop() > 100) { // Adjust the value as needed
            $footer.fadeIn(); // Show footer with fade-in effect
        } else {
            $footer.fadeOut(); // Hide footer with fade-out effect
        }
    });
});
</script>

</body>
</html>