<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list City</title>
</head>
<body>
	<table border="2px">
		<tr>
			<th>City Name</th>
			<th>State Name</th>
		</tr>
		<c:forEach items="${allCity }" var="c">
			<tr>
				<td>${c[1] }</td>
				<td>${c[3] }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>