<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Sidebar</title>
</head>
<body>
<!-- Sidebar Start -->
	<div class="container-fluid bg-primary">
    	<div class="container">
        	<nav class="navbar navbar-dark navbar-expand-lg py-0">
            	<a href="userdashboard" class="navbar-brand">
                	<h1 class="text-white fw-bold d-block">High<span class="text-secondary">Tech</span> </h1>
                </a>
                <button type="button" class="navbar-toggler me-0" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                	<span class="navbar-toggler-icon"></span>
				</button>
                <div class="collapse navbar-collapse bg-transparent" id="navbarCollapse">
                	<div class="navbar-nav ms-auto mx-xl-auto p-0">
                    	<a href="userdashboard" class="nav-item nav-link active text-secondary">Home</a>
                        <a href="#" class="nav-item nav-link">About</a>
                        <a href="#" class="nav-item nav-link">Services</a>
                        <a href="#" class="nav-item nav-link">Projects</a>
                        <a href="userinternships" class="nav-item nav-link">Internships</a>
                        <div class="nav-item dropdown">
                        	<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Profile</a>
                        	<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
                    <li><a class="dropdown-item" href="userstudentdetail"><i class="fas fa-user-edit me-2"></i>Update Profile</a></li>
                    <li><a class="dropdown-item" href="userlistinternshipapplications?userId=${user.userId}"><i class="fas fa-list me-2"></i>List Internships</a></li>
                    <li><a class="dropdown-item" href="logout"><i class="fas fa-sign-out-alt me-2"></i>Logout</a></li>
                </ul>
						</div>
                        <a href="#" class="nav-item nav-link">Contact</a>
					</div>
				</div>
                <div class="d-none d-xl-flex flex-shirink-0">
					<div id="phone-tada" class="d-flex align-items-center justify-content-center me-4">
                    	<a href="" class="position-relative animated tada infinite">
                        	<i class="fa fa-phone-alt text-white fa-2x"></i>
                            <div class="position-absolute" style="top: -7px; left: 20px;">
                            	<span><i class="fa fa-comment-dots text-secondary"></i></span>
							</div>
						</a>
					</div>
                    <div class="d-flex flex-column pe-4 border-end">
                    	<span class="text-white-50">Have any questions?</span>
                        <span class="text-secondary">Call: + 0123 456 7890</span>
					</div>
                    <div class="d-flex align-items-center justify-content-center ms-4 ">
                    	<a href="#"><i class="bi bi-search text-white fa-2x"></i> </a>
					</div>
				</div>
			</nav>
		</div>
	</div>
    <!-- Sidebar End -->
</body>
</html>