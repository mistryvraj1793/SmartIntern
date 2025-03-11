<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company</title>
</head>
<body>
	<h2>This is Company Page..</h2>
	<form action="savecompany" method="post">
		CompanyName:<input type="text" name="companyName"/>
		<br></br>
		Address:<input type="text" name="address"/>
		<br></br>
		Url:<input type="file" name="url"/>
		<br></br>
		PersonName:<input type="text" name="personName"/>
		<br></br>
		ExternalGuide:<input type="text" name="externalGuide"/>
		<br></br>
		ExternalGuideContactNum:<input type="number" name="externalGuideContactNum"/>
		<br></br>
		CompanyProfileUrl:<input type="file" name="profileUrl"/>
		<br></br>
		AnyOtherInfoUrl:<input type="file" name="anyOtherInfoUrl"/>
		<br></br>
		User Name: <select name="userId">
						<option>Select User</option>
						<c:forEach items="${allUsers }" var="user">
							<option value="${user.userId }">${user.email }</option>
						</c:forEach>
						
					</select>
		<br><br>
		<input type="submit" value="Save Company Detail"/><br>
	</form>
	<a href="listcompany">List Company</a>
</body>
</html>