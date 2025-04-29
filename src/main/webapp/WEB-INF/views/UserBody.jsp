<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Bundle JS (includes Popper.js) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


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
	                        <a href="useraboutus" class="me-2">
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
	                <a href="userfeatures" class="btn btn-secondary rounded-pill px-5 py-3 text-white">Explore Features</a>
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
		
		            <!-- Internship Listings -->
		            <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".3s">
		                <div class="services-item bg-light">
		                    <div class="p-4 text-center services-content">
		                        <div class="services-content-icon">
		                            <i class="fas fa-briefcase fa-7x mb-4 text-primary"></i>
		                            <h4 class="mb-3">Internship Listings</h4>
		                            <p class="mb-4">Companies can post internships, and students can easily explore opportunities matching their skills and interests.</p>
		                            <a href="#" class="btn btn-secondary text-white px-5 py-3 rounded-pill" data-bs-toggle="modal" data-bs-target="#internshipListingsModal">Read More</a>
		                        </div>
		                    </div>
		                </div>
		            </div>
		
		            <!-- Mentorship Management -->
		            <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".5s">
		                <div class="services-item bg-light">
		                    <div class="p-4 text-center services-content">
		                        <div class="services-content-icon">
		                            <i class="fas fa-user-tie fa-7x mb-4 text-primary"></i>
		                            <h4 class="mb-3">Mentorship Management</h4>
		                            <p class="mb-4">Mentors can monitor assigned students, track project progress, and provide guidance through the platform.</p>
		                            <a href="#" class="btn btn-secondary text-white px-5 py-3 rounded-pill" data-bs-toggle="modal" data-bs-target="#mentorshipManagementModal">Read More</a>
		                        </div>
		                    </div>
		                </div>
		            </div>
		
		            <!-- Project Allocation -->
		            <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".7s">
		                <div class="services-item bg-light">
		                    <div class="p-4 text-center services-content">
		                        <div class="services-content-icon">
		                            <i class="fas fa-tasks fa-7x mb-4 text-primary"></i>
		                            <h4 class="mb-3">Project Allocation</h4>
		                            <p class="mb-4">HRs and admins can efficiently assign projects and technologies to students based on their profiles and preferences.</p>
		                            <a href="#" class="btn btn-secondary text-white px-5 py-3 rounded-pill" data-bs-toggle="modal" data-bs-target="#projectAllocationModal">Read More</a>
		                        </div>
		                    </div>
		                </div>
		            </div>
		
		            <!-- Student Profiles -->
		            <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".3s">
		                <div class="services-item bg-light">
		                    <div class="p-4 text-center services-content">
		                        <div class="services-content-icon">
		                            <i class="fas fa-users fa-7x mb-4 text-primary"></i>
		                            <h4 class="mb-3">Student Profiles</h4>
		                            <p class="mb-4">Students can maintain detailed profiles with personal info, education, skillsets, and internship history for companies to review.</p>
		                            <a href="#" class="btn btn-secondary text-white px-5 py-3 rounded-pill" data-bs-toggle="modal" data-bs-target="#studentProfilesModal">Read More</a>
		                        </div>
		                    </div>
		                </div>
		            </div>
		
		            <!-- Company Collaboration -->
		            <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".5s">
		                <div class="services-item bg-light">
		                    <div class="p-4 text-center services-content">
		                        <div class="services-content-icon">
		                            <i class="fas fa-building fa-7x mb-4 text-primary"></i>
		                            <h4 class="mb-3">Company Collaboration</h4>
		                            <p class="mb-4">Partner companies can connect with talented interns, post requirements, and manage their internship activities smoothly.</p>
		                            <a href="#" class="btn btn-secondary text-white px-5 py-3 rounded-pill" data-bs-toggle="modal" data-bs-target="#companyCollaborationModal">Read More</a>
		                        </div>
		                    </div>
		                </div>
		            </div>
		
		            <!-- Performance Tracking -->
		            <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".7s">
		                <div class="services-item bg-light">
		                    <div class="p-4 text-center services-content">
		                        <div class="services-content-icon">
		                            <i class="fas fa-chart-line fa-7x mb-4 text-primary"></i>
		                            <h4 class="mb-3">Performance Tracking</h4>
		                            <p class="mb-4">Monitor student performance, project submissions, and mentor feedback to evaluate overall internship outcomes.</p>
		                            <a href="#" class="btn btn-secondary text-white px-5 py-3 rounded-pill" data-bs-toggle="modal" data-bs-target="#performanceTrackingModal">Read More</a>
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
		                                        <%-- <h4 class="text-secondary">${avaiIntern.title}</h4> --%>
		                                        <p class="m-0 text-white">${avaiIntern.title}</p>
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
                <div class="text-center mx-auto pb-5 wow fadeIn" data-wow-delay=".3s" style="max-width: 600px; visibility: visible; animation-delay: 0.3s; animation-name: fadeIn;">
                    <h5 class="text-primary">Our Project</h5>
                    <h1>Our Recently Completed Projects</h1>
                </div>
                
                <!-- Show this if projectList is empty -->
		        <c:if test="${empty availableProject}">
		            <p class="text-center text-danger">No projects available at the moment.</p>
		        </c:if>
		        
                <!-- Show this if internshipList has data -->
		        <c:if test="${not empty availableProject}">
		            <div class="row g-5">
		                <c:forEach items="${availableProject}" var="availProj">
						    <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".7s">
						        <div class="project-item">
						            <div class="project-img">
						                <img src="user/img/project-1.jpg" class="img-fluid w-100 rounded" alt="">
						                <div class="project-content">
						                    <!-- This triggers the modal -->
						                    <a href="#projectDetailsModal${availProj.projectId}" 
						                       class="text-center" 
						                       data-bs-toggle="modal">
						                        <p class="m-0 text-white">${availProj.title}</p>
						                    </a>
						                </div>
						            </div>
						        </div>
						    </div>
						
						    <!-- Modal for this project (must be inside the loop!) -->
						    <div class="modal fade" id="projectDetailsModal${availProj.projectId}" 
						         tabindex="-1" 
						         aria-labelledby="projectDetailsModalLabel${availProj.projectId}" 
						         aria-hidden="true">
						        <div class="modal-dialog modal-dialog-centered">
						            <div class="modal-content">
						                <div class="modal-header bg-primary text-white">
						                    <h5 class="modal-title" id="projectDetailsModalLabel${availProj.projectId}">
						                        Project Details
						                    </h5>
						                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
						                </div>
						                <div class="modal-body">
						                    <h4>${availProj.title}</h4>
						                    <p>${availProj.description}</p>
						                    <a href="#" class="btn btn-primary" target="_blank">View on GitHub</a>
						                </div>
						                <div class="modal-footer">
						                    <button type="button" class="btn btn-secondary rounded-pill" data-bs-dismiss="modal">Close</button>
						                </div>
						            </div>
						        </div>
						    </div>
						</c:forEach>

		            </div>
		        </c:if>
	        
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


	<!-- Contact Start -->
	<div id="contact-us-section" class="container-fluid py-5 mb-5 bg-light">
	    <div class="container-fluid py-5 mb-5 bg-light">
	        <div class="container">
	            <div class="text-center mx-auto pb-4 wow fadeIn" data-wow-delay=".3s" style="max-width: 600px;">
	                <h5 class="text-primary">Reach Out to SmartIntern</h5>
	                <h1 class="mb-3">We're Here to Help You</h1>
	                <p class="mb-2">Whether you're a student, mentor, HR, or admin — contact us for any queries, feedback, or internship collaboration opportunities.</p>
	            </div>
	
	            <div class="contact-detail position-relative p-5 rounded bg-white shadow">
	                <div class="row g-5 mb-5 justify-content-center">
	                    <div class="col-xl-4 col-lg-6 wow fadeIn" data-wow-delay=".3s">
	                        <div class="d-flex bg-secondary text-white p-3 rounded">
	                            <div class="flex-shrink-0 btn-square bg-primary rounded-circle d-flex align-items-center justify-content-center" style="width: 64px; height: 64px;">
	                                <i class="fas fa-map-marker-alt"></i>
	                            </div>
	                            <div class="ms-3">
	                                <h5 class="text-white">Head Office</h5>
	                                <p class="mb-0">Vatsalya Complex-3, Ahmedabad, Gujarat, India</p>
	                            </div>
	                        </div>
	                    </div>
	
	                    <div class="col-xl-4 col-lg-6 wow fadeIn" data-wow-delay=".5s">
	                        <div class="d-flex bg-secondary text-white p-3 rounded">
	                            <div class="flex-shrink-0 btn-square bg-primary rounded-circle d-flex align-items-center justify-content-center" style="width: 64px; height: 64px;">
	                                <i class="fa fa-phone"></i>
	                            </div>
	                            <div class="ms-3">
	                                <h5 class="text-white">Call Us</h5>
	                                <p class="mb-0">+91 98765 43210</p>
	                            </div>
	                        </div>
	                    </div>
	
	                    <div class="col-xl-4 col-lg-6 wow fadeIn" data-wow-delay=".7s">
	                        <div class="d-flex bg-secondary text-white p-3 rounded">
	                            <div class="flex-shrink-0 btn-square bg-primary rounded-circle d-flex align-items-center justify-content-center" style="width: 64px; height: 64px;">
	                                <i class="fa fa-envelope"></i>
	                            </div>
	                            <div class="ms-3">
	                                <h5 class="text-white">Email Us</h5>
	                                <p class="mb-0">support@smartintern.in</p>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	
	                <div class="row g-5">
	                    <div class="col-lg-6 wow fadeIn" data-wow-delay=".3s">
	                        <div class="p-5 h-100 rounded contact-map">
	                            <iframe class="rounded w-100 h-100" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3671.891106546056!2d72.5544307149615!3d23.026027921279498!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e6148f38b1151%3A0x3e896fb2fabfb3ff!2sVatsalya+Complex-3%2C+Ahmedabad%2C+Gujarat%2C+India!5e0!3m2!1sen!2sin!4v1686493221834!5m2!1sen!2sin" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
	                        </div>
	                    </div>
	
	                    <div class="col-lg-6 wow fadeIn" data-wow-delay=".5s">
	                        <div class="p-5 rounded contact-form bg-light">
	                            <form>
	                                <div class="mb-4">
	                                    <input type="text" class="form-control border-0 py-3" placeholder="Your Name" required>
	                                </div>
	                                <div class="mb-4">
	                                    <input type="email" class="form-control border-0 py-3" placeholder="Your Email" required>
	                                </div>
	                                <div class="mb-4">
	                                    <input type="text" class="form-control border-0 py-3" placeholder="Subject" required>
	                                </div>
	                                <div class="mb-4">
	                                    <textarea class="w-100 form-control border-0 py-3" rows="6" placeholder="Your Message" required></textarea>
	                                </div>
	                                <div class="text-start">
	                                    <button class="btn bg-primary text-white py-3 px-5" type="submit">Send Message</button>
	                                </div>
	                            </form>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- Contact End -->
	
	
		<!-- Modals of Servies -->
		<!-- Internship Listings Modal -->
		<div class="modal fade" id="internshipListingsModal" tabindex="-1" aria-labelledby="internshipListingsModalLabel" aria-hidden="true">
		    <div class="modal-dialog modal-dialog-centered">
		        <div class="modal-content">
		            <div class="modal-header bg-primary text-white">
		                <h5 class="modal-title" id="internshipListingsModalLabel">Internship Listings</h5>
		                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
		            </div>
		            <div class="modal-body">
		                <p>Companies can seamlessly post internships with details like title, description, duration, stipend, and technology requirements. Students can browse available internships based on their skills, preferences, and eligibility. The platform provides real-time updates and application statuses.</p>
		            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-secondary rounded-pill" data-bs-dismiss="modal">Close</button>
		            </div>
		        </div>
		    </div>
		</div>
		
		<!-- Mentorship Management Modal -->
		<div class="modal fade" id="mentorshipManagementModal" tabindex="-1" aria-labelledby="mentorshipManagementModalLabel" aria-hidden="true">
		    <div class="modal-dialog modal-dialog-centered">
		        <div class="modal-content">
		            <div class="modal-header bg-primary text-white">
		                <h5 class="modal-title" id="mentorshipManagementModalLabel">Mentorship Management</h5>
		                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
		            </div>
		            <div class="modal-body">
		                <p>Mentors can monitor assigned students, track project progress, and provide guidance through the platform. Mentors can also give feedback and ensure students are progressing on track with their internship projects.</p>
		            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-secondary rounded-pill" data-bs-dismiss="modal">Close</button>
		            </div>
		        </div>
		    </div>
		</div>
		
		<!-- Project Allocation Modal -->
		<div class="modal fade" id="projectAllocationModal" tabindex="-1" aria-labelledby="projectAllocationModalLabel" aria-hidden="true">
		    <div class="modal-dialog modal-dialog-centered">
		        <div class="modal-content">
		            <div class="modal-header bg-primary text-white">
		                <h5 class="modal-title" id="projectAllocationModalLabel">Project Allocation</h5>
		                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
		            </div>
		            <div class="modal-body">
		                <p>HRs and admins can efficiently assign projects and technologies to students based on their profiles and preferences. This feature ensures that students are matched with the most suitable projects for their skills and interests.</p>
		            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-secondary rounded-pill" data-bs-dismiss="modal">Close</button>
		            </div>
		        </div>
		    </div>
		</div>
		
		<!-- Student Profiles Modal -->
		<div class="modal fade" id="studentProfilesModal" tabindex="-1" aria-labelledby="studentProfilesModalLabel" aria-hidden="true">
		    <div class="modal-dialog modal-dialog-centered">
		        <div class="modal-content">
		            <div class="modal-header bg-primary text-white">
		                <h5 class="modal-title" id="studentProfilesModalLabel">Student Profiles</h5>
		                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
		            </div>
		            <div class="modal-body">
		                <p>Students can maintain detailed profiles with personal info, education, skillsets, and internship history for companies to review. This allows students to showcase their abilities and experience to potential employers.</p>
		            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-secondary rounded-pill" data-bs-dismiss="modal">Close</button>
		            </div>
		        </div>
		    </div>
		</div>
		
		<!-- Company Collaboration Modal -->
		<div class="modal fade" id="companyCollaborationModal" tabindex="-1" aria-labelledby="companyCollaborationModalLabel" aria-hidden="true">
		    <div class="modal-dialog modal-dialog-centered">
		        <div class="modal-content">
		            <div class="modal-header bg-primary text-white">
		                <h5 class="modal-title" id="companyCollaborationModalLabel">Company Collaboration</h5>
		                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
		            </div>
		            <div class="modal-body">
		                <p>Partner companies can connect with talented interns, post internship opportunities, and manage their internship activities. Companies can also evaluate candidates and track their progress throughout the internship period.</p>
		            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-secondary rounded-pill" data-bs-dismiss="modal">Close</button>
		            </div>
		        </div>
		    </div>
		</div>
		
		<!-- Performance Tracking Modal -->
		<div class="modal fade" id="performanceTrackingModal" tabindex="-1" aria-labelledby="performanceTrackingModalLabel" aria-hidden="true">
		    <div class="modal-dialog modal-dialog-centered">
		        <div class="modal-content">
		            <div class="modal-header bg-primary text-white">
		                <h5 class="modal-title" id="performanceTrackingModalLabel">Performance Tracking</h5>
		                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
		            </div>
		            <div class="modal-body">
		                <p>Monitor student performance, project submissions, and mentor feedback to evaluate overall internship outcomes. This feature allows all stakeholders to track progress and provide constructive feedback to enhance the internship experience.</p>
		            </div>
		            <div class="modal-footer">
		                <button type="button" class="btn btn-secondary rounded-pill" data-bs-dismiss="modal">Close</button>
		            </div>
		        </div>
		    </div>
		</div>
	

<!-- Body End -->
</body>
</html>