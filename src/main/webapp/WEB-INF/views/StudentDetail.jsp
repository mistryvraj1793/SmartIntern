<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Detail</title>
</head>
<body>	
	<h2>This is Student Detail Page..</h2>
	<form action="savestudentdetail" method="post" enctype="multipart/form-data">
		City:<input type="text" name="city"/>
		<br></br>
		State:<input type="text" name="state"/>
		<br></br>
		Profile Pic:<input type="file" name="profilePic"/>
		<br></br>
		Resume: <input type="file" name="resume"/>
		<br></br>
		Degree:<input type="text" name="degree"/>
		<br></br>
		Semester:<input type="text" name="semester"/>
		<br></br>
		T-Shirt Size: Small: <input type="radio" name="tshirtSize" value="small"/>
					Large: <input type="radio" name="tshirtSize" value="l"/>
					XL: <input type="radio" name="tshirtSize" value="xl"/>
					XXL: <input type="radio" name="tshirtSize" value="xxl"/>
					XXXL: <input type="radio" name="tshirtSize" value="xxxl"/>
		<br></br>
		College Name: <select name="collegeId">
							<option>Select College</option>
							<c:forEach items="${allColleges }" var="college">
								<option value="${college.collegeId }">${college.collegeName }</option>
							</c:forEach>
						</select>
		<br><br>
		<input type="submit" value="Save Student Detail"/><br><br>
	</form>
	<a href="liststudentdetail">List Student Detail</a>
</body>
</html>