<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Detail</title>
</head>
<body>	
	<h2>This is Student Detail Page..</h2>
	<form action="savestudentdetail" method="post">
		City:<input type="text" name="city"/>
		<br></br>
		State:<input type="text" name="state"/>
		<br></br>
		ProfilePicPath:<input type="file" name="profilePicPath"/>
		<br></br>
		Resume Path:<input type="file" name="resumePath"/>
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
		<input type="submit" value="Save Student Detail"/>
	</form>
	<a href="liststudentdetail">List Student Detail</a>
</body>
</html>