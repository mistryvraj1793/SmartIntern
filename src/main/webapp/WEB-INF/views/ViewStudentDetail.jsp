<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Student Detail</title>
</head>
<body>
	<h2>This is View Student Detail Page..</h2>
	
	City: ${studentDetail.city }<br>
	State: ${studentDetail.state }<br>
	ProfilePicPath: ${studentDetail.profilePicPath }<br>
	Resume Path: ${studentDetail.resumePath }<br>
	Degree: ${studentDetail.degree }<br>
	Semester: ${studentDetail.semester }<br>
	T-Shirt Size: ${studentDetail.tshirtSize }<br>
	
	<a href="liststudentdetail">List Student Detail</a>
</body>
</html>