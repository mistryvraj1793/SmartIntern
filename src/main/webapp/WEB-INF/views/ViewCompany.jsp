<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Company</title>
</head>
<body>
	<h2>This is View Company Page..</h2>
	
	CompanyName: ${company.companyName }<br>
	Address: ${company.address }<br>
	Url: ${company.url }<br>
	PersonName: ${company.personName }<br>
	ExternalGuide: ${company.externalGuide }<br>
	ExternalGuideContactNum: ${company.externalGuideContactNum }<br>
	CompanyProfileUrl: ${company.profileUrl }<br>
	AnyOtherInfoUrl: ${company.anyOtherInfoUrl }<br>
	
	<a href="listcompany">List Company</a>
</body>
</html>