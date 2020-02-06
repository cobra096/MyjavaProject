<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Login Page</h1>
<hr>
<h3 align="center">${msg }</h3>
<h1 align="center">
<form action="login" method="post">
Email :    <input type="email" name="email" placeholder="enter email">
Password : <input type="password" name="password" placeholder="enter password">
<input type="submit" value="Login">
</form>
<h4 align="center">
<a href="link1">Register</a>   ||  <a href="link3">Forget Password</a>
</h4>
</h1>
</body>
</html>