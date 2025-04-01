<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SmartIntern</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Template Main CSS File -->
  <jsp:include page="AdminCss.jsp"></jsp:include>
</head>

<body>
	<!-- Start Header -->
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<!-- End Header -->
	
	<!-- Start Sidebar-->
	<jsp:include page="HrMentorSidebar.jsp"></jsp:include>
	<!-- End Sidebar-->
	
	<!-- Start Body -->
	<jsp:include page="AdminBody.jsp"></jsp:include>
	<!-- End Body -->
	
	<!-- Start Footer -->
	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

	<!-- Start Js -->
	<jsp:include page="AdminJs.jsp"></jsp:include>
	<!-- End Js -->
	
</body>

</html>