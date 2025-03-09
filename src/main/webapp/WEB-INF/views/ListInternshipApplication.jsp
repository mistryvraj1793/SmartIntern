<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Internship Application</title>
</head>
<body>
	<h2>This is List Internship Application Page..</h2>
	<table border="2">
		<tr>
			<th>Resume Path</th>
			<th>Cover LetterPath</th>
			<th>Payment Reference</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${internshipApplicationList }" var="internApp">
			<tr>
				<td>${internApp.resumePath }</td>
				<td>${internApp.coverLetterPath }</td>
				<td>${internApp.paymentReference }</td>
				<td><a href="viewinternshipapplication?applicationId=${internApp.applicationId }">View</a> | 
				<a href="deleteinternshipapplication?applicationId=${internApp.applicationId }">Delete</a> | 
				<a href="#">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="internshipapplication">New Internship Application</a>
</body>
</html>