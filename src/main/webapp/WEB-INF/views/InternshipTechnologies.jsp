<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internship Technologies</title>
</head>
<body>
	<h2>This is Internship Technologies Page..</h2>
	<form action="saveinternshiptechnologies" method="post">
		Technologies Name: <select name="technologyId">
							<option>Select Name</option>
								<c:forEach items="${allTechnologies }" var="tech">
									<option value="${tech.technologyId }">${tech.name }</option>
								</c:forEach>
						</select>	
		<br><br>
		<input type="submit" value="Save Internship Technology"/><br><br>
	</form>
	<a href="listinternshiptechnologies">List Internship Technologies</a>
</body>
</html>