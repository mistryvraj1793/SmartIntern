<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
	<h2>This is Register Page..</h2>
	<form action="saveregister" method="post" autocomplete="on">
		First Name:<input type="text" name="firstName"/>
		<br></br>
		Last Name:<input type="text" name="lastName"/>
		<br></br>
		Email:<input type="text" name="email"/>
		<br></br>
		Password:<input type="password" name="password">
		<br></br>
		Born Year:<input type="number" name="bornYear"/>
		<br></br>
		Contact Number:<input type="number" name="contactNum"/>
		<br></br>
		Gender: Male:<input type="radio" name="gender" value="male"/>
				Female:<input type="radio" name="gender" value="female"/>
				Other:<input type="radio" name="gender" value="other"/>
		<br></br>
		<input type="submit" value="register"/>
	</form>
	<a href="listuser">List User</a>
</body>
</html>