<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Areas</title>
</head>
<body>
	<table border="2px">
		<tr>
			<th>Area Name</th>
			<th>City Name</th>
			<th>State Name</th>
		</tr>
		<c:forEach items="${allAreas }" var="a">
			<tr>
				<td>${a[1] }</td>
				<td>${a[3] }</td>
				<td>${a[4] }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>