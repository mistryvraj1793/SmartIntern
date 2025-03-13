<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Internship Project</title>
</head>
<body>
	<h2>This is List Internship Project page..</h2>
	<table border="2">
		<tr>
			<th>InternshipId</th>
			<th>ProjectId</th>	
			<th>Action</th>		
		</tr>
		<c:forEach items="${internshipProjectList }" var="internProj">
			<tr>
				<td>${internProj.internshipId }</td>
				<td>${internProj.projectId }</td>	
				<td><a href="viewinternshipproject?internshipProjectId=${internProj.internshipProjectId }">View</a> 
				| <a href="deleteinternshipproject?internshipProjectId=${internProj.internshipProjectId }">Delete</a>
				| <a href="#">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="internshipproject">New Internship Project</a>
</body>
</html>