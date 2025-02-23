<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List College</title>
</head>
<body>
	<h2>This is List College Page..</h2>
	<table border="2">
		<tr>
			<th>CollegeName</th>
			<th>Address</th>
			<th>City</th>
			<th>State</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${collegeList}" var="col">
			<tr>
				<td>${col.collegeName }</td>
				<td>${col.address }</td>
				<td>${col.city }</td>
				<td>${col.state }</td>
				<td><a href="#">View</a> | <a href="#">Delete</a> | <a href="#">Edit</a></td>
				
			</tr>
		</c:forEach>		
	</table>
</body>
</html>