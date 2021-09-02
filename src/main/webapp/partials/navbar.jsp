<%--
  Created by IntelliJ IDEA.
  User: shermanhall
  Date: 9/2/21
  Time: 11:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <style>
        nav{
            display: flex;
            justify-content: space-between;
            font-family: 'Darker Grotesque', sans-serif;
            font-weight: bold;
        }
    </style>
</head>

<nav class="navbar navbar-expand-lg navbar-light" style="background-color:#ffbee8">
    <a class="navbar-brand" href="#"><img src="https://www.wilsonhalldesigns.com/logos/logo1whd.PNG" height="100px" width="100px"> </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link active" href="/login.jsp">Login <span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="/profile.jsp">Profile</a>
            <a class="nav-item nav-link" href="#">Contact</a>
        </div>
    </div>
</nav>

