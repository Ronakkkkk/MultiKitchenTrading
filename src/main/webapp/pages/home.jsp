<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<html>
<head>
    <title>Home | MySite</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/home.css">
</head>
<body>

<div class="hero">
    <div class="hero-content">
        <h1>Welcome to Multi Trading</h1>
        <p>Your place to create, connect, and grow — beautifully and simply.</p>
        <div class="hero-buttons">
            <a href="register.jsp" class="btn primary">Get Started</a>
            <a href="login.jsp" class="btn secondary">Login</a>
        </div>
    </div>
</div>

<section class="features">
    <h2 class="section-title">Why Choose Us?</h2>
    <div class="feature-grid">
        <div class="feature-card">
            <h3>Fast and Easy</h3>
            <p>Simple to use and lightning fast — so you can focus on what matters.</p>
        </div>
        <div class="feature-card">
            <h3>Beautiful UI</h3>
            <p>Elegant and minimal design to make your experience feel magical.</p>
        </div>
        <div class="feature-card">
            <h3>Safe and Secure</h3>
            <p>Your data is protected with strong encryption and best practices.</p>
        </div>
    </div>
</section>

<section class="about">
    <h2>About Us</h2>
    <p>MySite is a modern platform built with simplicity and power in mind. Whether you're registering, logging in, or browsing, we aim to deliver joy in every click.</p>
</section>

<jsp:include page="footer.jsp" />
</body>
</html>
