<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>HighTech - IT Solutions Website Template</title>
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



	<!-- Fact Start -->
	<!-- Internship Start -->
    <div class="container-fluid project py-5 mb-5">
	    <div class="container">
	        <div class="text-center mx-auto pb-5 wow fadeIn" data-wow-delay=".3s" style="max-width: 600px;">
	            <h5 class="text-primary">Our Internships</h5>
	            <h1>Our Recently Launched Internships</h1>
	        </div>
	
	        <!-- Show this if internshipList is empty -->
	        <c:if test="${empty availableInternships}">
	            <p class="text-center text-danger">No internships available at the moment.</p>
	        </c:if>
	
	        <!-- Show this if internshipList has data -->
	        <c:if test="${not empty availableInternships}">
	            <div class="row g-5">
	                <c:forEach items="${availableInternships}" var="intern">
	                    <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".7s">
	                        <div class="project-item">
	                            <div class="project-img">
	                                <img src="user/img/project-3.jpg" class="img-fluid w-100 rounded" alt="">
	                                <div class="project-content">
	                                    <a href="#" class="text-center">
	                                        <h4 class="text-secondary">${intern.title}</h4>
	                                    </a>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </c:forEach>
	            </div>
	        </c:if>
	
	    </div>
	</div>
    <!-- Internship End -->
	<!-- Fact End -->

	<!-- Footer Start -->
	<jsp:include page="UserFooter.jsp"></jsp:include>
	<!-- Footer End -->

	<!-- Back to Top -->
    <a href="#" class="btn btn-secondary btn-square rounded-circle back-to-top"><i class="fa fa-arrow-up text-white"></i></a>
    
	<!-- JavaScript Libraries -->
    <jsp:include page="UserJs.jsp"></jsp:include>
    </body>

</html>