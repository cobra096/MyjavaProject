<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1 align="center">Deleted Mail</h1>
<hr>
<h4 align="right">
<a href="link4">Inbox</a>  ||  <a href="link5">Sent Items</a>  ||   <a href="link10">Draft</a>  ||   <a href="link7">Compose</a>  ||   <a href="link8">Changed Password</a>  ||  <a href="link9">Logout</a>
</h4>

<h4>${msg }</h4>
</div>
<div align="center">
<table border="1">
<tr><th>Message</th><th>delete</th></tr>
<c:forEach var="dto" items="${list}">
<tr><td>${dto.getMessage() }</td><td><a href="perdelete?id=+${dto.getId() }+">delete</a></td></tr>
</c:forEach>
</table>
</div>
</body>
</html>