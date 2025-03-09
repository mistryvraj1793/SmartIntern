<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Internship Application</title>
</head>
<body>
	<h2>This is View Internship Application Page..</h2>
	
	ResumePath: ${internshipApplication.resumePath }<br>
	CoverLetterPath: ${internshipApplication.coverLetterPath }<br>
	PaymentReference: ${internshipApplication.paymentReference }<br>
	Status: ${internshipApplication.status }<br>
	AppliedAt: ${internshipApplication.appliedAt }<br>
	
	<a href="listinternshipapplication">List Internship Application</a>
</body>
</html>