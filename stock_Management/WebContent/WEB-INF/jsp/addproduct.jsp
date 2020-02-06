<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Product add Page</h1>
<hr>
<h3 align="right">
<form action="search" method="post">
<input type="search" name="search">
<input type="submit" value="search">
</form>
</h3>
<h3 align="right">
<a href="addpro">Add Product</a>   ||   <a href="modyproduct">Modify Product</a>   ||   <a href="home">Home</a>
</h3>
${msg}
<h1 align="center">Enter Product Details</h1>
<center>
<fieldset style="width: 200px">
<h2 align="center">
<form action="addproduct" method="post">

Product Name: <input type="text" name="pName">
Category:     <input type="text" name="category">
Company:      <input type="text" name="cName">
Quantity:     <input type="number" name="quantity">
Price:        <input type="number" name="price">
<input type="submit" value="Add">
</form>
</h2>
</fieldset>
</center>
</body>
</html>