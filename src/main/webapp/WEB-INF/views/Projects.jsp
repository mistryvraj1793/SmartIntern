<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projects</title>
</head>
<body>
	<h2>This is Projects Page..</h2>
	<form action="saveprojects" method="post">
		Title: <input type="text" name="title"/>
		<br></br>
		Description: <input type="text" name="description"/>
		<br></br>
		Company Name: <select name="companyId">
							<option>Select Company</option>
								<c:forEach items="${allCompanies }" var="company">
									<option value="${company.companyId }">${company.companyName }</option>
								</c:forEach>
						</select>
		<br><br>
		<input type="submit" value="Save Projects"/>
	</form>
	<a href="listprojects">List Projects</a>
</body>
</html>