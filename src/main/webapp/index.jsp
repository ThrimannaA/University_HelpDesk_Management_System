<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>Help Desk</title>
    <style>

.headname{
  background-color: rgb(0, 64, 128); /* Background color */
  padding: 20px; /* Spacing around the content */
  text-align: center;
  margin-bottom: 20px;
}

.headname {
  color: rgb(228, 228, 228); /* Text color */
  font-size: 36px; /* Font size */
  font-family: "Arial", sans-serif; /* Font family */
}

.navbar {
   
     background: linear-gradient(to left, rgb(62, 158, 255), rgb(0, 99, 198));
     text-align: center;
     padding: 10px ;
     border-radius: 15px;
}

.navbar a {
    color: #fff;
    text-decoration: none;
    font-size: 16px;
    font-weight: bold;
    padding: 10px 15px;
    transition: 0.3;
}


.navbar a:hover {
    color: rgba(51, 51, 51, 0.7)
    
}

.logo-name {
    font-size: 24px; 
    font-weight: bold;
    color: #333; 
    text-decoration: none;
}

.logo-name:hover {
    color: #007BFF; 
}

header {
    background: #007BFF;
    color: #fff;
    padding: 25px 0;
}

.login{
	text-align: right;
}

nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

ul {
    list-style: none;
    display: flex;
    gap: 20px;
    margin: 0;
}

li {
    font-size: 18px;
}

a {
    text-decoration: none;
    color: #fff;
    transition: color 0.3s;
}

a:hover {
    color: #ddd;
}


html, body, h1, h2, h3, p, ul, li, a {
    margin: 0;
    padding: 0;
    border: 0;
}

body {
    font-family: 'Muli', sans-serif;
    background-color:#f5f5f5;
    color:  rgb(0, 0, 0);
    line-height: 1.6;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

/* Header Styles */
.hero {
    background-image: url('your-image.jpg');
    background-size: cover;
    color: rgb(0, 0, 0);
    text-align: center;
    padding: 20px 0;
}

.hero h1 {
    font-size: 36px;
    font-weight: 700;
}

.hero h3 {
    font-size: 24px;
    font-weight: 400;
}

/* About Us Styles */
.about {
    background: #fff;
    padding: 40px;
    text-align: center;
}

/* Service Styles */
.services {
    background: #f2f2f2;
    padding: 40px;
    text-align: center;
}

.service-cards {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    margin-top: 20px;
}

.service-card {
    flex: 1;
    background: #fff;
    border: 1px solid #e0e0e0;
    border-radius: 5px;
    padding: 20px;
    margin: 10px;
    text-align: center;
}

.service-card h3 {
    font-size: 20px;
    font-weight: 600;
    color: #333;
}

.service-card p {
    font-size: 16px;
    color: #777;
}

/* Submit a Ticket Styles */
.submit-ticket {
    background: #fff;
    padding: 40px;
    text-align: center;
}

.btn {
    display: inline-block;
    padding: 10px 20px;
    background: #007BFF;
    color: #fff;
    border: none;
    border-radius: 5px;
    text-decoration: none;
    font-size: 18px;
    font-weight: 600;
    margin-top: 20px;
}

/* Frequently Asked Questions Styles */
.faq {
    background: #f2f2f2;
    padding: 40px;
    text-align: center;
}

.faq-card {
    background: #fff;
    border: 1px solid #e0e0e0;
    border-radius: 5px;
    padding: 20px;
    text-align: center;
    font-size: 24px;
    font-weight: 600;
    color: #007BFF;
}

/* Contact Us Styles */
.contact {
    background: #fff;
    padding: 40px;
    text-align: center;
}

/* Footer Styles */
footer {
    background: #007BFF;
    color: #fff;
    text-align: center;
    padding: 20px 0;
}

.footer-links li {
    display: inline;
    margin: 0 10px;
}

.social-icons a {
    font-size: 20px;
    color: #fff;
    margin: 0 10px;
}

/* Media Queries for responsiveness */
@media (max-width: 768px) {
    .service-card {
        flex: 0 0 100%;
    }
}
</style>
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="index.css"> <!-- Link your custom CSS file -->
</head>
<body>

 <header>
		<div class="headname">Student Help Desk</div>
        <nav class="navbar">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#">View Articles</a></li>
                <li><a href="#faq">FAQ</a></li>
                <li><a href="feedback-home.jsp">Feedback</a></li>
                <li>
                    <div>
                        <!-- check for the user type -->
                        <c:if test="${sessionScope.name == null}">
                            <a class="login" href="login.jsp">Login</a>
                        </c:if>
                        <c:if test="${sessionScope.name != null}">
                            <a class="uk-button uk-button-small uk-text-bold" href="acc.jsp">${sessionScope.name}</a>
                        </c:if>
                    </div>
                    <li><a href="staffLogin.jsp">Staff Login</a></li>
                </li>
            </ul>
        </nav>
   
        
</header>
 
    <div class="hero">
     <div class="container">
            <h1>Welcome to Online Help Desk</h1>
            <h3>Better solutions for your problems</h3>
        </div>
     </div>     <!-- About Us -->
 
    <section class="about">
        <div class="container">
            <h2>About Us</h2>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maiores quaerat nihil delectus sequi! Quas, reiciendis provident natus quidem dolorum voluptatum autem magnam. Ipsum dolor facere nihil sapiente sunt porro earum.</p>
        </div>
    </section>
    
    <!-- Services -->
    <section class="services">
        <div class="container">
            <h2>Services</h2>
            <div class="service-cards">
                <div class="service-card" href="insertticket.jsp"  >
                    <h3>Add Tickets</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore ducimus cumque, id nesciunt sapiente error ad, quos pariatur.</p>
                </div>
                <div class="service-card">
                    <h3>View Articles</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore ducimus cumque, id nesciunt sapiente error ad, quos pariatur.</p>
                </div>
                <div class="service-card">
                    <h3>Look For FAQs</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore ducimus cumque, id nesciunt sapiente error ad, quos pariatur.</p>
                </div>
                <div class="service-card">
                    <h3>Contact Our Team</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore ducimus cumque, id nesciunt sapiente error ad, quos pariatur.</p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Submit a Ticket -->
    <section class="submit-ticket">
        <div class="container">
            <h2>Submit a Ticket</h2>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Maiores quaerat nihil delectus sequi! Quas, reiciendis provident natus quidem dolorum voluptatum autem magnam. Ipsum dolor facere nihil sapiente sunt porro earum.</p>
            <a class="btn" href="insertticket.jsp">Submit a Ticket</a>
        </div>
    </section>
    
    <!-- Frequently Asked Questions -->
    <section class="faq">
        <div class="container">
            <div class="faq-card">
                <h3>Frequently Asked Questions</h3>
            </div>
        </div>
    </section>
    
    <!-- Contact Us -->
    <section class="contact">
        <div class="container">
            <h2>See our feedbacks.</h2>
            <p>Our team is just an email away and ready to answer your questions</p>
            <a class="btn" href="feedbackView-home.jsp">Feedback page</a>
        </div>
    </section>
    
    <!-- Footer -->
    <footer>
        <div class="container">
            <ul class="footer-links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#faq">FAQ</a></li>
                <li><a href="#">View Articles</a></li>
            </ul>
            <div class="social-icons">
                <a href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                <a href="https://www.facebook.com/"><i class="fab fa-facebook"></i></a>
                <a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
            </div>
            <p>&copy; Copyright Help desk. All Rights Reserved</p>
        </div>
    </footer>
</body>
</html>
