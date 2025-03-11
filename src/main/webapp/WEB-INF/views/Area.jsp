<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Area</title>
</head>
<body>
	<h2>This is Area Page..</h2>
	<form action="savearea" method="post" autocomplete="on">
		Area Name:<input type="text" name="areaName"/>
		<br></br>
		City Name: <select name="cityId">
						<option>Select City</option>
						<c:forEach items="${allCities }" var="city">
							<option value="${city.cityId }">${city.cityName }</option>
						</c:forEach>
					</select>
		<br><br>
		<input type="submit" value="Save Area"/>
	</form>
</body>
</html>