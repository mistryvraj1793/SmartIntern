<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>SmartIntern | ContactUs</title>
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
		
        <!-- Sidebar Start -->
        <jsp:include page="UserSidebar.jsp"></jsp:include>
        <!-- Sidebar End -->

        
        <!-- Page Header Start -->
        <div class="container-fluid page-header py-5">
            <div class="container text-center py-5">
                <h1 class="display-2 text-white mb-4 animated slideInDown">Contact Us</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb justify-content-center mb-0">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Pages</a></li>
                        <li class="breadcrumb-item" aria-current="page">Contact</li>
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

        <!-- Footer Start -->
		<jsp:include page="UserFooter.jsp"></jsp:include>
        <!-- Footer End -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-secondary btn-square rounded-circle back-to-top"><i class="fa fa-arrow-up text-white"></i></a>
        
       <jsp:include page="UserJs.jsp"></jsp:include>
    </body>
</html>