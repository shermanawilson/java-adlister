<%--
  Created by IntelliJ IDEA.
  User: shermanhall
  Date: 9/3/21
  Time: 2:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/links.jsp"/>
    <title>Guess</title>
</head>
<body>
<form action="/guess" method="POST">

  <label for="guess">Guess A Number!</label>
  <input type="number" min="1" max="3" name="guess_num" id="guess">
    <input type="submit">

</form>
</body>
</html>
