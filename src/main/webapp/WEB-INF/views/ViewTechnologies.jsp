<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Technologies</title>
</head>
<body>	
	<h2>This is View Technologies Page..</h2>
	
	Name: ${technologies.name}<br>
	Description: ${technologies.description }<br>
	Frontend: ${technologies.frontend }<br>
	Backend: ${technologies.backend }<br>
	Tools: ${technologies.tools }<br>
	Language: ${technologies.language }<br>
	CreatedAt: ${technologies.createdAt }<br>
	
	<a href="listtechnologies">List Technologies</a>	
</body>
</html>