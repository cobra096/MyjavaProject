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
<h1 align="center">Search Page</h1>
<hr>
<h1 align="right">
<form action="search" method="post">
<input type="search" name="search">
<input type="submit" value="search">
</form>
</h1>
<h3 align="right"><a href="addpro">Add Product</a>  ||   <a href="modyproduct">Modify Product</a></h3>
<div align="center">
<table border="1">
<tr><th>Id</th> <th>Product Name</th>  <th>Company Name</th> <th>Category</th>  <th>Quantity</th> <th>Price per Unit</th> <th>Add to Cart</th></tr>
<c:forEach var="list" items="${list}">
<tr><td>${list.getPid() }</td> <td>${list.getpName() }</td> <td>${list.getcName() }</td> <td>${list.getCategory() }</td> <td>${list.getQuantity() }</td> <td>${list.getPrice() }</td><td><a href="addtocart?id=+${list.getPid()}+" >add</a></td></tr>

</c:forEach>
</table>
</div>
</body>
</html>