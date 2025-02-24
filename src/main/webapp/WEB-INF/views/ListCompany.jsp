<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Company</title>
</head>
<body>
	<h2>This is List Company Page..</h2>
	<table border="2">
		<tr>
			<th>CompanyName</th>
			<th>Address</th>
			<th>Url</th>
			<th>PersonName</th>
			<th>ExternalGuide</th>
			<th>ExternalGuideContactNum</th>
			<th>CompanyProfileUrl</th>
			<th>AnyOtherInfoUrl</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${companylist}" var="com">
			<tr>
				<td>${com.companyName }</td>
				<td>${com.address }</td>
				<td>${com.url }</td>
				<td>${com.personName }</td>
				<td>${com.externalGuide }</td>
				<td>${com.externalGuideContactNum }</td>
				<td>${com.profileUrl }</td>
				<td>${com.anyOtherInfoUrl }</td>
				<td><a href="viewcompany?companyId=${com.companyId }">View</a> 
				| <a href="deletecompany?companyId=${com.companyId }">Delete</a> 
				| <a href="#">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="company">New Company</a>
</body>
</html>