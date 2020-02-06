<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1 style="color: blue">Show Inbox</h1>
</div>
<h4 align="right">
<a href="link4">Inbox</a>  ||  <a href="link5">Sent Items</a>  ||   <a href="link10">Draft</a>  ||   <a href="link6">Deleted Items</a>  ||   <a href="link7">Compose</a>  ||   <a href="link8">Changed Password</a>  ||  <a href="link9">Logout</a>
</h4>
<hr>
<div align="center">
<table border="1">
<tr><th>From</th><td>${dto.getFromId() }</td></tr>
<tr><th>Subject</th><td>${dto.getSubject() }</td></tr>
<tr><th>Message</th><td>${dto.getMessage() }</td></tr>
</table>
</div> 
</body>
</html>