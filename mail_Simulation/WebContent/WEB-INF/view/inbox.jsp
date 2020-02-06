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
<h1 align="center"">Inbox Page</h1>
<hr>
<h4 align="right">
<a href="link5">Sent Items</a>  ||   <a href="link10">Draft</a>  ||   <a href="link6">Deleted Items</a>  ||   <a href="link7">Compose</a>  ||   <a href="link8">Changed Password</a>  ||  <a href="link9">Logout</a>
</h4>
<div align="center">
<table border="1">
<tr><th>From</th><th>Subject<th>delete</th></tr>
<c:forEach var="dto" items="${list}">
<tr><td><a href="showInbox?id=+${dto.getId() }+">${dto.getFromId() }</a></td><td>  ${dto.getSubject() }</td><td><a href="delete?id=+${dto.getId() }+">delete</a></td></tr>
</c:forEach>
</table>
</div>
</body>
</html>