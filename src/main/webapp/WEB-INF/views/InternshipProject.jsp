<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internship Project</title>
</head>
<body>
	<h2>This is Internship Page..</h2>
	<form action="saveinternshipproject" method="post">
		Internship Title: <select name="internshipId">
								<option>Select Title</option>
									<c:forEach items="${allInternships }" var="intern">
										<option value="${intern.internshipId }">${intern.title }</option>
									</c:forEach>
							</select>	
		<br><br>
		Project Title: <select name="projectId">
							<option>Select Title</option>
								<c:forEach items="${allProjects }" var="proj">
									<option value="${proj.projectId }">${proj.title }</option>
								</c:forEach>
						</select>
		<br><br>
		<input type="submit" value="save internshipproject"/><br><br>
	</form>
	
	<a href="listinternshipproject">List Internship Project</a>
</body>
</html>