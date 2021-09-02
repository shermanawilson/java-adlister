<%--
  Created by IntelliJ IDEA.
  User: shermanhall
  Date: 9/2/21
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setAttribute("username", request.getParameter("username")); %>
<%request.setAttribute("password", request.getParameter("password")); %>
<html>
<head>
    <jsp:include page="partials/links.jsp"/>
    <title>Login</title>
<style>
#textInfo {
    display: flex;
    justify-content: center;
    flex-direction: column;
    color: deepskyblue;
}
body {
    background-image: url("https://images.pexels.com/photos/7232493/pexels-photo-7232493.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260");
    background-size: cover;

}
</style>
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>
<%--Login Form Goes Here--%>
<div id="textInfo">
    <h1>Welcome To Your Login Page!</h1>




    <form action="/login.jsp" method="POST">
        <label for="username">Username</label><br>
        <input type="text" id="username" name="username"><br>
        <label for="password">Password</label><br>
        <input type="password" id="password" name="password"><br>
        <button type="submit">Submit</button>
    </form>

</div>


<c:choose>
    <c:when test="${username == 'admin' && password == 'password'}">
        <% response.sendRedirect("/profile.jsp"); %>
    </c:when>
</c:choose>



<jsp:include page="partials/footer.jsp" />
</body>


</html>
