<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Projects</title>
</head>
<body>
	<h2>This is View Projects Page..</h2>
	
	Title: ${projects.title }<br>
	Description: ${projects.description }<br>
	CreatedAt: ${projects.createdAt }<br>
	Active: ${projects.active }<br>
	
	<a href="listprojects">List Projects</a>
</body>
</html>