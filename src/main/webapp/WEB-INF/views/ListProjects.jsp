<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Projects</title>
</head>
<body>
	<h2>This is List Projects Page..</h2>
	<table border="2">
		<tr>
			<th>Title</th>
			<th>Description</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${projectsList}" var="proj">
			<tr>
				<td>${proj.title}</td>
				<td>${proj.description}</td>
				<td><a href="viewprojects?projectId=${proj.projectId }">View</a> | 
				<a href="deleteprojects?projectId=${proj.projectId }">Delete</a> | 
				<a href="#">Edit</a></td>
				
			</tr>
		</c:forEach>		
	</table>
	<a href="projects">New Projects</a>
</body>
</html>