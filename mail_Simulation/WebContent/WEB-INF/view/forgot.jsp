<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1 align="center">Forgot Password Page</h1>
 <hr>
 <h1 align="center">
 ${msg }
 <center>
 <fieldset style="width: 250px">
<form action="forgot" method="post">
Email     <input type="email" name="email" placeholder="enter email"><br>
SecurityQuestion <input value="who is your favourite actor" disabled="disabled"><br>
Answer  <input type="text" name="seqanswer" placeholder="enter your answer"><br>
 Password       <input type="password" name="password" placeholder="enter new password"><br>
 Confirm Password <input type="password" name="cpassword" placeholder="enter confirm password"><br>
<input type="submit" name="Submit">
</form>
</fieldset>
</center>
 </h1>
</body>
</html>

