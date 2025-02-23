<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List User</title>
</head>
<body>
	<h2>This is ListUser Page..</h2>
	<table border="2">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Contact Number</th>
			<th>Born Year</th>
			<th>Gender</th>
			<th>Action</td>
		</tr>
	<c:forEach items="${userList}" var="u">
			
			<tr>
				<td>${u.firstName}</td>
				<td>${u.lastName}</td>
				<td>${u.email}</td>
				<td>${u.contactNum}</td>
				<td>${u.bornYear}</td>
				<td>${u.gender}</td>
				<td><a href="viewuser?userId=${u.userId}">View</a> |
					<a href="deleteuser?userId=${u.userId}">Delete</a> |
					<a href="#">Edit</a></td>
			</tr>	
		</c:forEach>
	</table>
	<br>
	<a href="register">New Register</a>
</body>
</html>