<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>SmartIntern | AboutUs</title>
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

        
        <!-- Page Header Start -->
        <div class="container-fluid page-header py-5">
            <div class="container text-center py-5">
                <h1 class="display-2 text-white mb-4 animated slideInDown">About Us</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb justify-content-center mb-0">
                        <li class="breadcrumb-item"><a href="userdashboard">Home</a></li>
                        <li class="breadcrumb-item">Profile</li>
                        <li class="breadcrumb-item" aria-current="page">About</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Page Header End -->


       <!-- SmartIntern Stats Start -->
		<div class="container-fluid bg-secondary py-5">
		    <div class="container">
		        <div class="row">
		            <div class="col-lg-3 wow fadeIn" data-wow-delay=".1s">
		                <div class="d-flex counter">
		                    <h1 class="me-3 text-primary counter-value">${totalinterns }</h1>
		                    <h5 class="text-white mt-1">Registered Interns on SmartIntern</h5>
		                </div>
		            </div>
		            <div class="col-lg-3 wow fadeIn" data-wow-delay=".3s">
		                <div class="d-flex counter">
		                    <h1 class="me-3 text-primary counter-value">${totalCompanies }</h1>
		                    <h5 class="text-white mt-1">Partner Companies Offering Internships</h5>
		                </div>
		            </div>
		            <div class="col-lg-3 wow fadeIn" data-wow-delay=".5s">
		                <div class="d-flex counter">
		                    <h1 class="me-3 text-primary counter-value">${liveInternshipProjects }</h1>
		                    <h5 class="text-white mt-1">Live Internship Projects Available</h5>
		                </div>
		            </div>
		            <div class="col-lg-3 wow fadeIn" data-wow-delay=".7s">
		                <div class="d-flex counter">
		                    <h1 class="me-3 text-primary counter-value">${totalmentors }</h1>
		                    <h5 class="text-white mt-1">Total Mentors Registered</h5>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!-- SmartIntern Stats End -->


        <!-- About Start -->
		<div class="container-fluid py-5 my-5">
		    <div class="container pt-5">
		        <div class="row g-5">
		            <div class="col-lg-5 col-md-6 col-sm-12 wow fadeIn" data-wow-delay=".3s">
		                <div class="h-100 position-relative">
		                    <img src="user/img/about-1.jpg" class="img-fluid w-75 rounded" alt="" style="margin-bottom: 25%;">
		                    <div class="position-absolute w-75" style="top: 25%; left: 25%;">
		                        <img src="user/img/about-2.jpg" class="img-fluid w-100 rounded" alt="">
		                    </div>
		                </div>
		            </div>
		            <div class="col-lg-7 col-md-6 col-sm-12 wow fadeIn" data-wow-delay=".5s">
		                <h5 class="text-primary">About SmartIntern</h5>
		                <h1 class="mb-4">SmartIntern — Streamlined Internship Management Platform</h1>
		                <p>SmartIntern is a comprehensive internship management system built to connect students, faculties, and employers on a single transparent platform. It simplifies the process of applying for internships, enables faculty mentors to guide students effectively, and provides companies direct access to a talented pool of candidates.</p>
		                <p class="mb-4">With SmartIntern, organizations can post internships, review applications, and manage evaluations seamlessly, while students get structured guidance, real-time progress tracking, and valuable certifications. Our platform ensures a fair, efficient, and rewarding internship experience for all stakeholders involved.</p>
		                <a href="userfeatures" class="btn btn-secondary rounded-pill px-5 py-3 text-white">Explore Features</a>
		            </div>
		        </div>
		    </div>
		</div>
		<!-- About End -->



        <!-- Team Start -->
		<div class="container-fluid py-5 mb-5 team">
		    <div class="container">
		        <div class="text-center mx-auto pb-5 wow fadeIn" data-wow-delay=".3s" style="max-width: 600px;">
		            <h5 class="text-primary">Our Team</h5>
		            <h1>Meet the SmartIntern Leadership</h1>
		        </div>
		
		        <div class="owl-carousel team-carousel wow fadeIn" data-wow-delay=".5s">
		            <c:forEach var="cmpUser" items="${companyUsers}">
		                <div class="rounded team-item">
		                    <div class="team-content">
		                        <div class="team-img-icon">
		                            <div class="team-img rounded-circle">
		                                <img src="user/img/team-1.jpg" class="img-fluid w-100 rounded-circle" alt="${cmpUser[8]}">
		                            </div>
		                            <div class="team-name text-center py-3">
		                                <h4>${cmpUser[8]}</h4>
		                                <p class="m-0">${cmpUser[2]}</p>
		                            </div>
		                            <div class="team-icon d-flex justify-content-center pb-4">
		                                <a class="btn btn-square btn-secondary text-white rounded-circle m-1" href="#"><i class="fab fa-facebook-f"></i></a>
		                                <a class="btn btn-square btn-secondary text-white rounded-circle m-1" href="#"><i class="fab fa-twitter"></i></a>
		                                <a class="btn btn-square btn-secondary text-white rounded-circle m-1" href="#"><i class="fab fa-instagram"></i></a>
		                                <a class="btn btn-square btn-secondary text-white rounded-circle m-1" href="#"><i class="fab fa-linkedin-in"></i></a>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </c:forEach>
		        </div>
		    </div>
		</div>
		<!-- Team End -->
			
		<!-- Features Modal Start -->
		<div class="modal fade" id="featuresModal" tabindex="-1" aria-labelledby="featuresModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
		    <div class="modal-content">
		      <div class="modal-header bg-primary text-white">
		        <h5 class="modal-title" id="featuresModalLabel">SmartIntern Features</h5>
		        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        <h5>🚀 Seamless Internship Management Platform</h5>
		        <p>SmartIntern simplifies the internship journey for students, mentors, and companies.</p>
		
		        <h6>👨‍🎓 For Students</h6>
		        <ul>
		          <li>Browse and apply for a variety of internships.</li>
		          <li>Track application and internship progress in real-time.</li>
		          <li>Earn certificates upon successful completion.</li>
		        </ul>
		
		        <h6>🏢 For Companies</h6>
		        <ul>
		          <li>Create and manage internship openings.</li>
		          <li>Review applications and select ideal candidates.</li>
		          <li>Assign mentors and monitor internship deliverables.</li>
		        </ul>
		
		        <h6>🎓 For Faculty Mentors</h6>
		        <ul>
		          <li>Monitor student progress and status updates.</li>
		          <li>Evaluate deliverables and provide structured feedback.</li>
		          <li>Communicate directly with students and companies.</li>
		        </ul>
		
		        <h6>📊 Analytics & Reports</h6>
		        <ul>
		          <li>Real-time insights on applications, projects, and performance.</li>
		          <li>Visual dashboards for tracking engagement and success rates.</li>
		        </ul>
		
		        <h6>🔒 Secure & User-Friendly</h6>
		        <ul>
		          <li>Role-based access and data privacy.</li>
		          <li>Responsive, clean, and intuitive interface for all users.</li>
		        </ul>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary rounded-pill" data-bs-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>
		<!-- Features Modal End -->
		
        <!-- Footer Start -->
        <jsp:include page="UserFooter.jsp"></jsp:include>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-secondary btn-square rounded-circle back-to-top"><i class="fa fa-arrow-up text-white"></i></a>

        <!-- Template Javascript -->
        <jsp:include page="UserJs.jsp"></jsp:include>
    </body>

</html>