<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
</head>
<body>
	<h1>This is Signup Page..</h1>
	<form action="saveuser" method="post" autocomplete="on">
		FirstName: <input type="text" name="firstName"/> 
		<br></br>
		
		LastName: <input type="text" name="lastName"/>
		<br></br>
		
		Email: <input type="text" name="email"/> 
		<br></br>
		
		Password: <input type="password" name="password"/> 
		<br></br>
		ConfirmPassword: <input type="text" name=ConfirmPassword/> 
		<br></br>
		
		<input type="submit" value="Sign Up"/>
		<br></br>
	</form>
	<a href="login">Already have an Account</a>
</body>
</html>