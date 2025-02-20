<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View User</title>
</head>
<body>
	<h2>This is View User Page..</h2>
	
	FirstName:${user.firstName}<br>
	LastName:${user.lastName}<br>
	Email:${user.email}<br>
	Password:${user.password}<br>
	ContactNum:${user.contactNum}<br>
	BornYear:${user.bornYear}<br>
	Gender:${user.gender}<br>
	<a href="listuser">go to List User</a>
	
</body>
</html>