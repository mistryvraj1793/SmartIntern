<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Internship</title>
</head>
<body>
<h2>This is List Internship Page..</h2>
	<table border="2">
		<tr>
			<th>Title</th>
			<th>Location</th>
			<th>stipend</th>
			<th>Description</th>
			<th>Requirements</th>
			<th>Duration Weeks</th>
			<th>Application DeadLine</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${internshipList}" var="intern">
			<tr>
				<td>${intern.title }</td>
				<td>${intern.location }</td>
				<td>${intern.stipend }</td>
				<td>${intern.description }</td>
				<td>${intern.requirements }</td>
				<td>${intern.durationWeeks }</td>
				<td>${intern.applicationDeadLine }</td>
				<td><a href="viewinternship?internshipId=${intern.internshipId }">View</a> | 
				<a href="deleteinternship?internshipId=${intern.internshipId }">Delete</a> | 
				<a href="#">Edit</a></td>	
			</tr>
		</c:forEach>		
	</table>
	<a href="internship">New Internship</a>
</body>
</html>