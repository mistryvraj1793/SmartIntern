<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<h1>This is Login Page..</h1>
	<form action="authenticate" method="post" autocomplete="on">
		Email: <input type="text" name="email"> 
		<br></br>
		Password: <input type="password" name="password"/> 
		<br></br>
		<input type="submit" value="Login"/> 
		<br></br>
	</form>
	<a href="signup">Sign Up</a>
	<br></br>
	<a href="forgetpassword">Forget Password</a>
	
</body>
</html>