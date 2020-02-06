<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">Login page</h1>
	<h4>${msg }</h4>
	<hr>
	<center>
		<fieldset style="width: 200px">
			<h1 align="center">
				<form action="login" method="post">
					User Name: <input type="text" name="userName"
						placeholder="Enter Username"> Password: <input
						type="password" name="password" n placeholder="Enter Password">
					<input type="submit" value="login">
				</form>
				<a href="link1">Sign Up</a>
			</h1>
		</fieldset>
	</center>
</body>
</html>