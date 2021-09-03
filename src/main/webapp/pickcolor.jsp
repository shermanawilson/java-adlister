<%--
  Created by IntelliJ IDEA.
  User: shermanhall
  Date: 9/3/21
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/links.jsp"/>
    <title>Pick Color</title>
</head>
<body>
<%--User is promted to enter their favorite color, have submit button--%>
<form method="POST" action="/pickcolor">
    <label for="favColor">What is your favorite color?</label>
    <input type="text" id="favColor" name="favColor"><br>
    <input type="submit" class="btn btn-primary">
</form>
</body>
</html>
