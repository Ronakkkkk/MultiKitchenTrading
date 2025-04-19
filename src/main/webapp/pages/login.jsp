<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<jsp:include page="header.jsp" />
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
<div class="login-container">
    <div class="login-box">
        <h2>Login</h2>
        <p class="subheading">Access your account</p>

        <form method="post" action="login.jsp">
            <label>Username</label>
            <input type="text" name="username" required>

            <label>Password</label>
            <input type="password" name="password" required>

            <button type="submit">Login</button>
        </form>

        <div class="register-link">
            <p>Don't have an account? <a href="register.jsp">Register Now</a></p>
        </div>

        <%
            String uname = request.getParameter("username");
            String pwd = request.getParameter("password");

            if (uname != null && pwd != null) {
                String url = "jdbc:mysql://localhost:3316/userdb"; // use port 3316
                String dbUser = "root";
                String dbPass = "";

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection conn = DriverManager.getConnection(url, dbUser, dbPass);

                    String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
                    PreparedStatement pst = conn.prepareStatement(sql);
                    pst.setString(1, uname);
                    pst.setString(2, pwd);

                    ResultSet rs = pst.executeQuery();

                    if (rs.next()) {
                        out.println("<p class='success-msg'>Login successful! Welcome, " + rs.getString("username") + "</p>");
                    } else {
                        out.println("<p class='error-msg'>Invalid username or password</p>");
                    }

                    rs.close();
                    pst.close();
                    conn.close();
                } catch (Exception e) {
                    out.println("<p class='error-msg'>Error: " + e.getMessage() + "</p>");
                }
            }
        %>
    </div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
