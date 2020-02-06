<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Update Product</h1>
<hr>
${msg }
<h1 align="right">
<form action="search" method="post">
<input type="search" name="search">
<input type="submit" value="search">
</form>
</h1>
<h3 align="right">
<a href="addpro">Add Product</a>   ||   <a href="modyproduct">Modify Product</a>   ||   <a href="home">Home</a>
</h3>
<h1 align="center">Enter Product Details</h1>
<center>
<fieldset style="width: 200px">
<h2 align="center">
<form action="updateproduct" method="post">
           <input type="hidden" name="pid" value="${dto.getPid() }"><br>
Product Name: <input type="text" name="pName" value="${dto.getpName() }"><br>
Category:     <input type="text" name="category" value="${dto.getCategory() }"><br>
Company:      <input type="text" name="cName" value="${dto.getcName() }"><br>
Quantity:     <input type="number" name="quantity" value="${dto.getQuantity() }"><br>
Price:        <input type="number" name="price" value="${dto.getPrice() }"><br>
<input type="submit" value="Update">
</form>
</h2>
</fieldset>
</center>
</body>
</html>