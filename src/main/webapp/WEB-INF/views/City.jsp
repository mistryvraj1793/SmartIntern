<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>City</title>
</head>
<body>
	<h2>This is City page..</h2>
	<form action="savecity" method="post" autocomplete="on">
		City Name: <input type="text" name="cityName"> 
		<br><br>
		State: <select name="stateId">
					<option>Select State</option>
						<c:forEach items="${allStates }" var="state">
							<option value="${state.stateId }">${state.stateName }</option>
						</c:forEach>				
			   </select>
		<br><br>
		<input type="submit" value="Save City"/> 
		<br></br>
	</form>
</body>
</html>