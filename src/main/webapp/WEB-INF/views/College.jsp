<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>College</title>
</head>
<body>
	<h2>This is College Page..</h2>
	<form action="savecollege" method="post">
		CollegeName:<input type="text" name="collegeName"/>
		<br></br>
		Address:<input type="text" name="address"/>
		<br></br>
		City:<input type="text" name="city"/>
		<br></br>
		State:<input type="text" name="state"/>
		<br></br>
		<input type="submit" name="Save College"/>
	</form>
	<a href="listcollege">List College</a>
</body>
</html>