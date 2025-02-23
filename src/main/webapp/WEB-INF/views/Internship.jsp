<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internship</title>
</head>
<body>
<h2>This is Company Page..</h2>
	<form action="saveinternship" method="post">
		Title:<input type="text" name="title"/>
		<br></br>
		Location:<input type="text" name="location"/>
		<br></br>
		stipend:<input type="number" name="stipend"/>
		<br></br>
		Description:<input type="text" name="description"/>
		<br></br>
		Requirements:<input type="text" name="requirements"/>
		<br></br>
		Duration Weeks:<input type="number" name="durationWeeks"/>
		<br></br>
		Application DeadLine:<input type="text" name="applicationDeadLine"/>
		<br></br>
		<input type="submit" Value="Save Internship"/>
	</form>
	<a href="listinternship">List Internship</a>
</body>
</html>