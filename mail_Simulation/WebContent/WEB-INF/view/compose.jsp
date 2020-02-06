<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Welcome Compose Form</h1>
<hr>
<h4 align="right">
<a href="link4">Inbox</a>  ||  <a href="link5">Sent Items</a>  ||   <a href="link10">Draft</a>  ||   <a href="link6">Deleted Items</a>  ||    <a href="link8">Changed Password</a>  ||  <a href="link9">Logout</a>
</h4>
<h3 align="center">
<center>
<fieldset style="width: 400px">
<form action="compose" style="border: medium;">
<h3 style="margin-left: 50px">
 To :<input type="text" name="to" size="30">
 </h3>
 <h3>
 Subject : <input type="text" name="subject" size="30">
 </h3>
 <h3>
 Message :<input type="text" name="msg" size="30" style="height: 120px">
 </h3>
 <br>
 
 <input type="submit" value="Sent">
</form>
</fieldset>
</center>
</h3>
</body>
</html>