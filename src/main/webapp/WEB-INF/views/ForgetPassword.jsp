<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forget Password</title>
</head>
<body>
	<h1>This is a Forget Password Page..</h1>
	<form action="resetpassword" method="post">
		<label for="email">Email:</label>
			<input type="text" id="email" name="email"/>
			<br></br>
		<label for="otp">OTP:</label>
			<input type="text" id="otp" name="otp"/>
			<br></br>
		<label for="update">Update Password</label>
		<input type="submit" id="update" value="update">
		<br></br>
	</form>
	<a href="signup">Signup</a>
</body>
</html>