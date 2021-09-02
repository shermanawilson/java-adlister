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
    margin: 30px;
    text-align: center;
    font-family: 'Darker Grotesque', sans-serif;
}
body {
    background-image: url("https://images.pexels.com/photos/5878481/pexels-photo-5878481.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260");
    background-size: cover;


}
</style>
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>
<%--Login Form Goes Here--%>
<div id="textInfo">
    <h1>Welcome To Your Login Page!</h1>

    <c:if test="${error}">
        <p>Username or password invalid</p>
    </c:if>

<div class="form-group">
    <form action="/Login" method="POST">
        <label for="username">Username</label><br>
        <input class="form-control" type="text" id="username" name="username"><br>
        <label for="password">Password</label><br>
        <input class="form-control" type="password" id="password" name="password"><br>
        <button class="btn btn-primary btn-block" type="submit">Submit</button>
    </form>
</div>
</div>


<%--<c:choose>--%>
<%--    <c:when test="${username == 'admin' && password == 'password'}">--%>
<%--        <% response.sendRedirect("/profile.jsp"); %>--%>
<%--    </c:when>--%>
<%--</c:choose>--%>



<jsp:include page="partials/footer.jsp" />
</body>


</html>
