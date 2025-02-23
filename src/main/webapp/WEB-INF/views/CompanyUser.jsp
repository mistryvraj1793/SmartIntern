<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company User</title>
</head>
<body>
	<h2>This is Company User Page..</h2>
	<form action="savecompanyuser" method="post">
		Title: <input type="text" name="title"/>
		<br></br>
		<input type="submit" value="Save Company User"/>
	</form>
	<a href="listcompanyuser">List Company User</a>
</body>
</html>