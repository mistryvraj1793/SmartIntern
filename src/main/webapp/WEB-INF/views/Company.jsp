<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<input type="submit" name="Save Company Detail"/>
	</form>
</body>
</html>