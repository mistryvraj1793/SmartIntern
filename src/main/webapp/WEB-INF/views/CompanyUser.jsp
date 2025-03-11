<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company User</title>
</head>
<body>
	<h2>This is Company User Page..</h2>
	<form action="savecompanyuser" method="post">
		Title: <input type="text" name="title"/>
		<br></br>
		Company Name: <select name="companyId">
							<option>Select Company</option>
							<c:forEach items="${allCompanies }" var="company">
								<option value="${company.companyId }">${company.companyName }</option>
							</c:forEach>
						</select>
		<br><br>
		Email: <select name="userId">
						<option>Select Email</option>
						<c:forEach items="${allUsers }" var="user">
							<option value="${user.userId }">${user.email }</option>
						</c:forEach>
					</select>
		<br><br>
		<input type="submit" value="Save Company User"/>
	</form>
	<a href="listcompanyuser">List Company User</a>
</body>
</html>