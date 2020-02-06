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
<h1 align="center">Compose mail</h1>
<h4 align="right">
<a href="link4">Inbox</a>  ||  <a href="link5">Sent Items</a>  ||   <a href="link10">Draft</a>  ||   <a href="link6">Deleted Items</a>  ||   <a href="link7">Compose</a>  ||   <a href="link8">Changed Password</a>  ||  <a href="link9">Logout</a>
</h4>
<hr>
<div align="center">
<fieldset>
<style>
fieldset{
width: 350px;
}
</style>
<form action="compMail">
<pre>
To:   <input name="to" value="${dto.getToId() }"><br>
Subject:  <input name="sub" value="${dto.getSubject() }"><br>
Message: <input name="body" value="${dto.getMessage() }"><br>
     <input type="submit" value="sent">
</pre>
</form>
</fieldset>
</div>
</body>
</html>