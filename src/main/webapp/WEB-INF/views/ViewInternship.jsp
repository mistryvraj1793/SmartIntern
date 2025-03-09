<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Internship</title>
</head>
<body>
	<h2>This is View Internship page..</h2>
	
	Title: ${internship.title }<br>
	Location: ${internship.location }<br>
	Stipend: ${internship.stipend }<br>
	Description: ${internship.description }<br>
	Requirements: ${internship.requirements }<br>
	DurationWeeks: ${internship.durationWeeks }<br>
	ApplicationDeadLine: ${internship.applicationDeadLine }<br>
	Status: ${internship.status }<br>
	PostedBy: ${internship.postedBy }<br>
	CreatedAt: ${internship.createdAt }<br>
	
	<a href="listinternship">List Internship</a>
</body>
</html>