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
    <jsp:include page="partials/links.jsp"/>
    <title>Profile</title>
    <style>
        #textProfile{
            color: dimgrey;
            text-align: center;
            font-family: 'Darker Grotesque', sans-serif;
        }
        body {
            background-image: url("https://images.pexels.com/photos/5878521/pexels-photo-5878521.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260");
            background-size: cover;

        }
    </style>
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>

<div id="textProfile">
    <h1>Welcome to Your Profile!</h1>
</div>



<jsp:include page="partials/footer.jsp"/>
</body>
</html>
