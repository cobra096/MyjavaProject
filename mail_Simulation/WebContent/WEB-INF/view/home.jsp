<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: blue;">
<h1 align="center">Welcome to the Home Page</h1>
<hr>
<h3 align="right">${ sdto.getUserName() }</h3>
<h4>${msg }</h4>
<h4 align="right">
<a href="link4">Inbox</a>  ||  <a href="link5">Sent Items</a>  ||   <a href="link10">Draft</a>  ||   <a href="link6">Deleted Items</a>  ||   <a href="link7">Compose</a>  ||   <a href="link8">Changed Password</a>  ||  <a href="link9">Logout</a>
</h4>
</body>
</html>