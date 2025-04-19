<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<jsp:include page="header.jsp" />
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/register.css">
</head>
<body>
<div class="register-wrapper">
    <div class="register-card">
        <h1>Create Account</h1>
        <p class="subtitle">Sign up to get started</p>

        <form method="post" action="register.jsp">
            <input type="text" name="username" placeholder="Username" required>
            <input type="email" name="email" placeholder="Email address" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Register</button>
        </form>

        <div class="login-link">
            <p>Already have an account? <a href="login.jsp">Login here</a></p>
        </div>

        <%
            String uname = request.getParameter("username");
            String email = request.getParameter("email");
            String pass = request.getParameter("password");

            if (uname != null && email != null && pass != null) {
                String url = "jdbc:mysql://localhost:3316/userdb"; // use port 3316
                String dbUser = "root";
                String dbPass = "";

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection(url, dbUser, dbPass);
                    PreparedStatement pst = conn.prepareStatement("INSERT INTO users(username, email, password) VALUES (?, ?, ?)");
                    pst.setString(1, uname);
                    pst.setString(2, email);
                    pst.setString(3, pass);
                    pst.executeUpdate();

                    out.println("<p class='success-msg'>User registered successfully!</p>");

                    pst.close();
                    conn.close();
                } catch (Exception e) {
                    out.println("<p class='error-msg'>Database Error: " + e.getMessage() + "</p>");
                }
            }
        %>
    </div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
