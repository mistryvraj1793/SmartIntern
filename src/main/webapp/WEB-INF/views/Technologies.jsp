<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Technologies</title>
</head>
<body>
<h2>this is Technologies Page..</h2>
	<form action="savetechnologies" method="post">
		Name: <input type="text" name="name"/>
		<br></br>
		Description: <input type="text" name="description"/>
		<br></br>
		Frontend: <input type="text" name="frontend"/>
		<br></br>
		Backend: <input type="text" name="backend"/>
		<br></br>
		Tools: <input type="text" name="tools"/>
		<br></br>
		Language: <input type="text" name="language"/>
		<br></br>
		<input type="submit" value="Save Technologies"/>
	</form>
	<a href="listtechnologies">List Technologies</a>
</body>
</html>