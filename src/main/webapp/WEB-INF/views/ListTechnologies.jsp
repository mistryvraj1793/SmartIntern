<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ListTechnologies</title>
</head>
<body>
<h2>This is List Technologies Page..</h2>
	<table border="2">
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Frontend</th>
			<th>Backend</th>
			<th>Tools</th>
			<th>Language</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${technologiesList }" var="tech">
			<tr>
				<td>${tech.name }</td>
				<td>${tech.description }</td>
				<td>${tech.frontend }</td>
				<td>${tech.backend }</td>
				<td>${tech.tools }</td>
				<td>${tech.language }</td>
				<td><a href="viewtechnologies?technologyId=${tech.technologyId }">View</a> | 
				<a href="deletetechnologies?technologyId=${tech.technologyId }">Delete</a> | 
				<a href="#">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="technologies">New Technologies</a>
</body>
</html>