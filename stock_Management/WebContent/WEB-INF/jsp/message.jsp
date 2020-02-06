<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Welcome To Stock Management</h1>
<hr>
<h1 align="right">
<form action="search" method="post">
<input type="search" name="search">
<input type="submit" value="search">
</form>
</h1>
<h2 align="center">*${msg }</h2>
<h3 align="right">
<a href="addpro">Add Product</a>   ||   <a href="modyproduct">Modify Product</a>   ||    <a href="home">home page</a>
</h3>
</body>
</html>