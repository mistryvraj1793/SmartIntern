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
	<form action="saveuser" method="post">
		FirstName: <input type="text" name="firstName"/> 
		<br></br>
		LastName: <input type="text" name="lastName"/>
		<br></br>
		Email: <input type="text" name="email"/> 
		<br></br>
		Password: <input type="text" name="password"/> 
		<br></br>
		ConfirmPassword: <input type="text" name=Confirmpassword/> 
		<br></br>
		
		<label>Gender:</label>
			<input type="radio" id="male" name="gender" value="male"/>
				<label for="male">Male</label> 
			<input type="radio" id="female" name="gender" value="female"/>
				<label for="female">Female</label>
			<input type="radio" id="other" name="gender" value="other"/>
				<label for="other">Other</label>
		<br></br>
		
		<input type="submit" value="submit"/>
		<br></br>
	</form>
	<a href="login">Already Signup</a>
</body>
</html>