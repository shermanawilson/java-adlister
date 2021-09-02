<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: shermanhall
  Date: 9/2/21
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>

<%--Login Form Goes Here--%>
<form action="/login.jsp" method="POST">
    <label for="username">Username</label><br>
    <input type="text" id="username" name="username"><br>
    <label for="password">Password</label><br>
    <input type="password" id="password" name="password"><br>
    <button type="submit">Submit</button>
</form>

<%

    request.getParameter("username");

//    When i use the if statement this is how I wil redirect to the the login form


    response.sendRedirect("/profile.jsp");

%>




</body>
<jsp:include page="partials/navbar.jsp"/>
<jsp:include page="partials/links.jsp" />
</html>
