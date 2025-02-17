<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Password</title>
</head>
<body>
	<h2>This is a Update Password Page..</h2>
	<form action="updatepassword" method="post">
		New Password:<input type="text" name="newPassword" />
		<br></br>
		Confirm Password:<input type="text" name="confirmPassword">
		<br></br>
		<input type="submit" value="Update Password"/>
	</form>
	
	
</body>
</html>