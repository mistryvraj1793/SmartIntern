<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internship Application</title>
</head>
<body>
	<h2>this is Internship Application Page..</h2>
	<form action="saveinternshipapplication" method="post">
		ResumePath: <input type="file" name="resumePath"/>
		<br></br>
		CoverLetterPath: <input type="file" name="coverLetterPath"/>
		<br></br>
		PaymentReference: <input type="text" name="paymentReference"/>
		<br></br>
		<input type="submit" value="Save Internship Application"/>
	</form>
	<a href="listinternshipapplication">List Internship Application</a>
</body>
</html>