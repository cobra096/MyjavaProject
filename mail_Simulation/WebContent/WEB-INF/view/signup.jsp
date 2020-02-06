<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Registration Page</h1>
<hr>
${msg }
<h1 align="center">
<center>
<fieldset style="width: 250px">
<form action="signup" method="post">
UserName  <input type="text" name="userName" placeholder="enter username" ><br>
Password  <input type="password" name="password" placeholder="enter password"><br>
Email     <input type="email" name="email" placeholder="enter email"><br>
SecurityQuestion <input value="who is your favourite actor  " disabled="disabled"><br>
Answer  <input type="text" name="seqanswer" placeholder="enter your answer"><br>
<input type="submit" value="Register">
</form>
</fieldset>
</center>
</h1>
</body>
</html>