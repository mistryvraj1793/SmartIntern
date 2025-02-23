<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projects</title>
</head>
<body>
	<h2>This is Projects Page..</h2>
	<form action="saveprojects" method="post">
		Title: <input type="text" name="title"/>
		<br></br>
		Description: <input type="text" name="description"/>
		<br></br>
		<input type="submit" value="Save Projects"/>
	</form>
	<a href="listprojects">List Projects</a>
</body>
</html>