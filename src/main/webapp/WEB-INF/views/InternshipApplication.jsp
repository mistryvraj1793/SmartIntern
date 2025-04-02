<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internship Application</title>
</head>
<body>
	<h2>this is Internship Application Page..</h2>
	<form action="saveinternshipapplication" method="post">
		Internship Title: <select name="internshipId">
								<option>Select Title</option>
									<c:forEach items="${allInternships }" var="intern">
										<option value="${intern.internshipId }">${intern.title }</option>
									</c:forEach>
							</select>
		<br><br>
		ResumePath: <input type="file" name="resumePath"/>
		<br></br>
		CoverLetterPath: <input type="file" name="coverLetterPath"/>
		<br></br>
		Email: <select name="userId">
								<option>--Select Email--</option>
									<c:forEach items="${allUsers }" var="u">
										<option value="${u.userId }">${u.email}</option>
									</c:forEach>
							</select>
		<br><br>
		<input type="submit" value="Save Internship Application"/><br>
	</form>
	<a href="listinternshipapplication">List Internship Application</a>
</body>
</html>