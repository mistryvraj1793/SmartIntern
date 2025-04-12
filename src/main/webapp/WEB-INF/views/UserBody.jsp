<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Body</title>
</head>
<body>
<!-- Body Start -->
	<!-- SmartIntern Carousel Start -->
	<div class="container-fluid px-0">
	    <div id="carouselId" class="carousel slide" data-bs-ride="carousel">
	        <ol class="carousel-indicators">
	            <li data-bs-target="#carouselId" data-bs-slide-to="0" class="active" aria-current="true" aria-label="First slide"></li>
	            <li data-bs-target="#carouselId" data-bs-slide-to="1" aria-label="Second slide"></li>
	        </ol>
	        <div class="carousel-inner" role="listbox">
	            
	            <!-- Slide 1 -->
	            <div class="carousel-item active">
	                <img src="user/img/carousel-1.jpg" class="img-fluid" alt="SmartIntern Internships">
	                <div class="carousel-caption">
	                    <div class="container carousel-content">
	                        <h6 class="text-secondary h4 animated fadeInUp">SmartIntern Internship Hub</h6>
	                        <h1 class="text-white display-1 mb-4 animated fadeInRight">Launch Your Career with the Right Internship</h1>
	                        <p class="mb-4 text-white fs-5 animated fadeInDown">Find the perfect internship, guided by faculty mentors and evaluated professionally — all under one system.</p>
	                        <a href="#internships-section" class="me-2">
	                            <button type="button" class="px-4 py-sm-3 px-sm-5 btn btn-primary rounded-pill animated fadeInLeft">Browse Internships</button>
	                        </a>
		                    <a href="#contact-us-section" class="ms-2">
	    						<button type="button" class="px-4 py-sm-3 px-sm-5 btn btn-primary rounded-pill animated fadeInRight">Contact Support</button>
							</a>

	                    </div>
	                </div>
	            </div>
	
	            <!-- Slide 2 -->
	            <div class="carousel-item">
	                <img src="user/img/carousel-2.jpg" class="img-fluid" alt="SmartIntern Platform">
	                <div class="carousel-caption">
	                    <div class="container carousel-content">
	                        <h6 class="text-secondary h4 animated fadeInUp">SmartIntern Management System</h6>
	                        <h1 class="text-white display-1 mb-4 animated fadeInLeft">Simplify Internship Tracking & Certification</h1>
	                        <p class="mb-4 text-white fs-5 animated fadeInDown">A complete platform to manage applications, progress tracking, mentor reviews, and internship certifications with ease.</p>
	                        <a href="aboutus" class="me-2">
	                            <button type="button" class="px-4 py-sm-3 px-sm-5 btn btn-primary rounded-pill animated fadeInLeft">Learn More</button>
	                        </a>
	                        <a href="userstudentdetail" class="ms-2">
	                            <button type="button" class="px-4 py-sm-3 px-sm-5 btn btn-primary rounded-pill animated fadeInRight">Create Profile</button>
	                        </a>
	                    </div>
	                </div>
	            </div>
	
	        </div>
	        <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
	            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	            <span class="visually-hidden">Previous</span>
	        </button>
	        <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
	            <span class="carousel-control-next-icon" aria-hidden="true"></span>
	            <span class="visually-hidden">Next</span>
	        </button>
	    </div>
	</div>
	<!-- SmartIntern Carousel End -->

    <!-- Fact Start -->
	<div class="container-fluid bg-secondary py-5">
	    <div class="container">
	        <div class="row">
	            <!-- Registered Users -->
	            <div class="col-lg-3 wow fadeIn" data-wow-delay=".1s">
	                <div class="d-flex counter">
	                    <h1 class="me-3 text-primary counter-value">${totalUsers }</h1>
	                    <h5 class="text-white mt-1">Registered Users</h5>
	                </div>
	            </div>
	
	            <!-- Available Internships -->
	            <div class="col-lg-3 wow fadeIn" data-wow-delay=".3s">
	                <div class="d-flex counter">
	                    <h1 class="me-3 text-primary counter-value">${activeInternships }</h1>
	                    <h5 class="text-white mt-1">Live Internship Opportunities</h5>
	                </div>
	            </div>
	
	            <!-- Successful Applications -->
	            <div class="col-lg-3 wow fadeIn" data-wow-delay=".5s">
	                <div class="d-flex counter">
	                    <h1 class="me-3 text-primary counter-value">${totalSuccessFullInternships }</h1>
	                    <h5 class="text-white mt-1">Successful Internship Applications</h5>
	                </div>
	            </div>
	
	            <!-- Partner Companies -->
	            <div class="col-lg-3 wow fadeIn" data-wow-delay=".7s">
	                <div class="d-flex counter">
	                    <h1 class="me-3 text-primary counter-value">${totalCompanies }</h1>
	                    <h5 class="text-white mt-1">Trusted Partner Companies</h5>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- Fact End -->
	
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
                <a href="#" class="btn btn-secondary rounded-pill px-5 py-3 text-white">Explore Features</a>
            </div>
        </div>
    </div>
</div>
<!-- About End -->


	<!-- Services Start -->
<div class="container-fluid services py-5 mb-5">
    <div class="container">
        <div class="text-center mx-auto pb-5 wow fadeIn" data-wow-delay=".3s" style="max-width: 600px;">
            <h5 class="text-primary">Our Services</h5>
            <h1>SmartIntern Solutions For Internship Management</h1>
        </div>
        <div class="row g-5 services-inner">

            <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".3s">
                <div class="services-item bg-light">
                    <div class="p-4 text-center services-content">
                        <div class="services-content-icon">
                            <i class="fas fa-briefcase fa-7x mb-4 text-primary"></i>
                            <h4 class="mb-3">Internship Listings</h4>
                            <p class="mb-4">Companies can post internships, and students can easily explore opportunities matching their skills and interests.</p>
                            <a href="" class="btn btn-secondary text-white px-5 py-3 rounded-pill">Read More</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".5s">
                <div class="services-item bg-light">
                    <div class="p-4 text-center services-content">
                        <div class="services-content-icon">
                            <i class="fas fa-user-tie fa-7x mb-4 text-primary"></i>
                            <h4 class="mb-3">Mentorship Management</h4>
                            <p class="mb-4">Mentors can monitor assigned students, track project progress, and provide guidance through the platform.</p>
                            <a href="" class="btn btn-secondary text-white px-5 py-3 rounded-pill">Read More</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".7s">
                <div class="services-item bg-light">
                    <div class="p-4 text-center services-content">
                        <div class="services-content-icon">
                            <i class="fas fa-tasks fa-7x mb-4 text-primary"></i>
                            <h4 class="mb-3">Project Allocation</h4>
                            <p class="mb-4">HRs and admins can efficiently assign projects and technologies to students based on their profiles and preferences.</p>
                            <a href="" class="btn btn-secondary text-white px-5 py-3 rounded-pill">Read More</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".3s">
                <div class="services-item bg-light">
                    <div class="p-4 text-center services-content">
                        <div class="services-content-icon">
                            <i class="fas fa-users fa-7x mb-4 text-primary"></i>
                            <h4 class="mb-3">Student Profiles</h4>
                            <p class="mb-4">Students can maintain detailed profiles with personal info, education, skillsets, and internship history for companies to review.</p>
                            <a href="" class="btn btn-secondary text-white px-5 py-3 rounded-pill">Read More</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".5s">
                <div class="services-item bg-light">
                    <div class="p-4 text-center services-content">
                        <div class="services-content-icon">
                            <i class="fas fa-building fa-7x mb-4 text-primary"></i>
                            <h4 class="mb-3">Company Collaboration</h4>
                            <p class="mb-4">Partner companies can connect with talented interns, post requirements, and manage their internship activities smoothly.</p>
                            <a href="" class="btn btn-secondary text-white px-5 py-3 rounded-pill">Read More</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".7s">
                <div class="services-item bg-light">
                    <div class="p-4 text-center services-content">
                        <div class="services-content-icon">
                            <i class="fas fa-chart-line fa-7x mb-4 text-primary"></i>
                            <h4 class="mb-3">Performance Tracking</h4>
                            <p class="mb-4">Monitor student performance, project submissions, and mentor feedback to evaluate overall internship outcomes.</p>
                            <a href="" class="btn btn-secondary text-white px-5 py-3 rounded-pill">Read More</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- Services End -->


	<!-- Internship Start -->
	<div id="internships-section" class="container-fluid project py-5 mb-5">
	
    <div class="container-fluid project py-5 mb-5">
	    <div class="container">
	        <div class="text-center mx-auto pb-5 wow fadeIn" data-wow-delay=".3s" style="max-width: 600px;">
	            <h5 class="text-primary">Our Internships</h5>
	            <h1>Our Recently Launched Internships</h1>
	        </div>
	
	        <!-- Show this if internshipList is empty -->
	        <c:if test="${empty availableInternship}">
	            <p class="text-center text-danger">No internships available at the moment.</p>
	        </c:if>
	
	        <!-- Show this if internshipList has data -->
	        <c:if test="${not empty availableInternship}">
	            <div class="row g-5">
	                <c:forEach items="${availableInternship}" var="avaiIntern">
	                    <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".7s">
	                        <div class="project-item">
	                            <div class="project-img">
	                                <img src="user/img/project-3.jpg" class="img-fluid w-100 rounded" alt="">
	                                <div class="project-content">
	                                    <a href="userinternshipapplications?internshipId=${avaiIntern.internshipId }" class="text-center">
	                                        <h4 class="text-secondary">${avaiIntern.title}</h4>
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
	</div>
    <!-- Internship End -->

    <!-- Project Start -->
        <div class="container-fluid project py-5 mb-5">
            <div class="container">
                <div class="text-center mx-auto pb-5 wow fadeIn" data-wow-delay=".3s" style="max-width: 600px;">
                    <h5 class="text-primary">Our Project</h5>
                    <h1>Our Recently Completed Projects</h1>
                </div>
                <div class="row g-5">
                    <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".3s">
                        <div class="project-item">
                            <div class="project-img">
                                <img src="user/img/project-1.jpg" class="img-fluid w-100 rounded" alt="">
                                <div class="project-content">
                                    <a href="#" class="text-center">
                                        <h4 class="text-secondary">Web design</h4>
                                        <p class="m-0 text-white">Web Analysis</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".5s">
                        <div class="project-item">
                            <div class="project-img">
                                <img src="user/img/project-2.jpg" class="img-fluid w-100 rounded" alt="">
                                <div class="project-content">
                                    <a href="#" class="text-center">
                                        <h4 class="text-secondary">Cyber Security</h4>
                                        <p class="m-0 text-white">Cyber Security Core</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".7s">
                        <div class="project-item">
                            <div class="project-img">
                                <img src="user/img/project-3.jpg" class="img-fluid w-100 rounded" alt="">
                                <div class="project-content">
                                    <a href="#" class="text-center">
                                        <h4 class="text-secondary">Mobile Info</h4>
                                        <p class="m-0 text-white">Upcomming Phone</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".3s">
                        <div class="project-item">
                            <div class="project-img">
                                <img src="user/img/project-4.jpg" class="img-fluid w-100 rounded" alt="">
                                <div class="project-content">
                                    <a href="#" class="text-center">
                                        <h4 class="text-secondary">Web Development</h4>
                                        <p class="m-0 text-white">Web Analysis</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".5s">
                        <div class="project-item">
                            <div class="project-img">
                                <img src="user/img/project-5.jpg" class="img-fluid w-100 rounded" alt="">
                                <div class="project-content">
                                    <a href="#" class="text-center">
                                        <h4 class="text-secondary">Digital Marketing</h4>
                                        <p class="m-0 text-white">Marketing Analysis</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".7s">
                        <div class="project-item">
                            <div class="project-img">
                                <img src="user/img/project-6.jpg" class="img-fluid w-100 rounded" alt="">
                                <div class="project-content">
                                    <a href="#" class="text-center">
                                        <h4 class="text-secondary">keyword Research</h4>
                                        <p class="m-0 text-white">keyword Analysis</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- Project End -->

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



	<jsp:include page="UserContactUs.jsp"></jsp:include>

<!-- Body End -->
</body>
</html>