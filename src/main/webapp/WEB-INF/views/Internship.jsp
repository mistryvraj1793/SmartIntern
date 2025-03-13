<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internship</title>
</head>
<body>
<h2>This is Internship Page..</h2>
	<form action="saveinternship" method="post">
		Title:<input type="text" name="title"/>
		<br></br>
		Location:<input type="text" name="location"/>
		<br></br>
		stipend:<input type="number" name="stipend"/>
		<br></br>
		Description:<input type="text" name="description"/>
		<br></br>
		Requirements:<input type="text" name="requirements"/>
		<br></br>
		Duration Weeks:<input type="number" name="durationWeeks"/>
		<br></br>
		Application DeadLine:<input type="text" name="applicationDeadLine"/>
		<br></br>
		Company Name: <select name="companyId">
							<option>Select Company</option>
								<c:forEach items="${allCompanies }" var="company">
									<option value="${company.companyId }">${company.companyName }</option>			
								</c:forEach>
						</select>
		<br><br>
		<input type="submit" Value="Save Internship"/><br><br>
	</form>
	<a href="listinternship">List Internship</a>
</body>
</html>