<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>SmartIntern</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Template Stylesheet -->
        <jsp:include page="UserCss.jsp"></jsp:include>
    </head>

    <body>
        <!-- Spinner Start -->
        <div id="spinner" class="show position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" role="status"></div>
        </div>
        <!-- Spinner End -->
	
		<!-- Header Start -->
        <jsp:include page="UserHeader.jsp"></jsp:include>
		<!-- Header End -->
	
	
		<!-- Sidebar Start-->
        <jsp:include page="UserSidebar.jsp"></jsp:include>
		<!-- Sidebar End-->
		
		<!-- Body Start -->
        <jsp:include page="UserBody.jsp"></jsp:include>
		<!-- Body End -->
		
		<!-- Footer Start -->
		<jsp:include page="UserFooter.jsp"></jsp:include>
		<!-- Footer End -->
		
        <!-- Back to Top -->
        <a href="#" class="btn btn-secondary btn-square rounded-circle back-to-top"><i class="fa fa-arrow-up text-white"></i></a>

		<!-- JavaScript Libraries -->
		<jsp:include page="UserJs.jsp"></jsp:include>
    </body>

</html>