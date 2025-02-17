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
	<c:forEach items="${userList}" var="m">
			<tr>
				<td>${m.firstName}</td>
				<td>${m.lastName}</td>
				<td>${m.email}</td>
				<td>${m.contactNum}</td>
				<td>${m.bornYear}</td>
			</tr>	
		</c:forEach>
	</table>
</body>
</html>