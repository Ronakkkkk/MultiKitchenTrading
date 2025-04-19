<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Portfolio</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/portfolio.css">
</head>
<body>
	<header>
    <div class="container">
      <h1>Meet Our Team</h1>
      <p>Passionate. Creative. Driven.</p>
    </div>
  </header>
	 <section class="team">
	    <div class="container">
	      <div class="team-grid">
	
	        <!-- Profile Card 1 -->
	        <div class="profile-card">
	          <img src="${pageContext.request.contextPath}/resources/images/pp.png" alt="User 1">
	          <h2>John Doe</h2>
	          <p class="role">Front-End Developer</p>
	          <p>Skilled in HTML, CSS, and JavaScript. Passionate about UI/UX design.</p>
	          <div class="social-icons">
	            <a href="#"><i class="fab fa-facebook-f"></i></a>
	            <a href="#"><i class="fab fa-instagram"></i></a>
	            <a href="#"><i class="fab fa-github"></i></a>
	          </div>
	        </div>
	
	        <!-- Profile Card 2 -->
	        <div class="profile-card">
	          <img src="${pageContext.request.contextPath}/resources/images/pp.png" alt="User 1">
	          <h2>Jane Smith</h2>
	          <p class="role">UI/UX Designer</p>
	          <p>Expert in Figma and Adobe XD. Loves making things beautiful and functional.</p>
	          <div class="social-icons">
	            <a href="#"><i class="fab fa-facebook-f"></i></a>
	            <a href="#"><i class="fab fa-instagram"></i></a>
	            <a href="#"><i class="fab fa-github"></i></a>
	          </div>
	        </div>
	
	        <!-- Profile Card 3 -->
	        <div class="profile-card">
	          <img src="${pageContext.request.contextPath}/resources/images/pp.png" alt="User 1">
	          <h2>Michael Lee</h2>
	          <p class="role">Back-End Developer</p>
	          <p>Builds fast, scalable APIs with Node.js and MongoDB.</p>
	          <div class="social-icons">
	            <a href="#"><i class="fab fa-facebook-f"></i></a>
	            <a href="#"><i class="fab fa-instagram"></i></a>
	            <a href="#"><i class="fab fa-github"></i></a>
	          </div>
	        </div>
	
	        <!-- Profile Card 4 -->
	        <div class="profile-card">
	          <img src="${pageContext.request.contextPath}/resources/images/pp.png" alt="User 1">
	          <h2>Emily Zhang</h2>
	          <p class="role">Project Manager</p>
	          <p>Organizes chaos into deliverables. Master of Trello and deadlines.</p>
	          <div class="social-icons">
	            <a href="#"><i class="fab fa-facebook-f"></i></a>
	            <a href="#"><i class="fab fa-instagram"></i></a>
	            <a href="#"><i class="fab fa-github"></i></a>
	          </div>
	        </div>
	
	      </div>
	    </div>
  </section>
  <jsp:include page="footer.jsp" />
</body>
</html>