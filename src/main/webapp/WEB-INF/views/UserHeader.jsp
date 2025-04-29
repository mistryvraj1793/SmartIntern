<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Header</title>
<!-- for JQuery error so i shift here! -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<!-- Header Start -->
<div class="container-fluid bg-dark py-2 d-none d-md-flex">
    <div class="container">
        <div class="d-flex justify-content-between topbar">
            <div class="top-info">
                <small class="me-3 text-white-50">
                    <a href="https://www.google.com/maps/place/Vatsalya+Complex-3/@22.8229913,72.7599621,811m/data=!3m2!1e3!4b1!4m6!3m5!1s0x395e6148f38b1151:0x3e896fb2fabfb3ff!8m2!3d22.8229913!4d72.762537!16s%2Fg%2F11h_f8_j3x?entry=ttu&g_ep=EgoyMDI1MDQwOS4wIKXMDSoJLDEwMjExNDU1SAFQAw%3D%3D" target="_blank"><i class="fas fa-map-marker-alt me-2 text-secondary"></i></a>Vatsalya Complex-3, Mahemdabad, Gujarat, India
                </small>
                <small class="me-3 text-white-50">
                    <a href="mailto:supportsmartntern@gmail.com"><i class="fas fa-envelope me-2 text-secondary"></i></a>supportsmartntern@gmail.com
                </small>
            </div>
            <div id="note" class="text-danger d-none d-xl-flex align-items-center" style="white-space: nowrap;">
                <small><strong>Note:</strong> We’re here to guide you through every step of securing your dream internship. Let’s start your SmartIntern journey today!</small>
            </div>

            <!-- User Dropdown without caret -->
            <%-- <div class="top-link dropdown bg-light nav-fill btn btn-sm-square rounded-circle user-icon-btn overflow-hidden p-0 d-flex align-items-center justify-content-center"
			     id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"
			     style="width: 40px; height: 40px;" title="Your Profile">
			     <i class="fa fa-user" aria-hidden="true" style="font-size: 30px; color: #333;"></i>
			       
			    <c:if test="${not empty sessionScope.studentDetail and not empty sessionScope.studentDetail.profilePicPath}">
			        <img src="${sessionScope.studentDetail.profilePicPath}" alt="Profile picture"
			             class="img-fluid rounded-circle"
			             style="width: 100%; height: 100%; object-fit: cover;">
			    </c:if>
			    <c:if test="${empty sessionScope.studentDetail or empty sessionScope.studentDetail.profilePicPath}">
			        <i class="fa fa-user" aria-hidden="true" style="font-size: 20px; color: #333;"></i>
			    </c:if>
			</div> --%>
			
			<li class="nav-item dropdown pe-3">
				<a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
				    <i class="fa fa-user" aria-hidden="true" style="font-size: 28px; color: white;"></i>
	
				    <span class="d-none d-md-block ps-2" style="font-size: 20px; color: white;">${sessionScope.user.firstName }</span>
				</a>
			</li>

            <%-- <div class="top-link dropdown" class="bg-light nav-fill btn btn-sm-square rounded-circle user-icon-btn overflow-hidden p-0" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="width: 40px; height: 40px;">
            	
                <img src="${sessionScope.studentDetail.profilePicPath}" alt="User" class="img-fluid rounded-circle" style="width: 100%; height: 100%; object-fit: cover;">
            </div> --%>
        </div>
    </div>
</div>
<!-- Header End -->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>