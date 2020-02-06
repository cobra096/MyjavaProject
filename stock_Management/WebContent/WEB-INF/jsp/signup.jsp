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
	<h4>${msg }</h4>
	<hr>
	<center>
		<fieldset style="width: 250px">
			<h1 align="center">
				<form action="signup" method="post">
					Name: <input type="text" name="name"><br> Contact: <input
						type="tel" name="contact"><br> User Name: <input
						type="text" name="userName"><br> Password: <input
						type="password" name="password"><br> <input
						type="submit" value="sign up">
				</form>
				<a href="link2">Login</a>
			</h1>
		</fieldset>
	</center>
</body>
</html>