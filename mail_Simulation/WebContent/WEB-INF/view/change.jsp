<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Changed Password Form</h1>
<hr>
<h4 align="right">
<a href="link4">Inbox</a>  ||  <a href="link5">Sent Items</a>  ||   <a href="link10">Draft</a>  ||   <a href="link6">Deleted Items</a>  ||   <a href="link7">Compose</a>  ||   <a href="link9">Logout</a>
</h4>
<h1 align="center">
${msg }
<form action="change" method="post">
NewPassword : <input type="password" name="password" placeholder="enter password">
ConfPassword : <input type="password" name="cpassword" placeholder="enter password">
<input type="submit" name="Submit">
</form>
</h1>
</body>
</html>