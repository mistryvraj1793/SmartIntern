<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Header</title>
</head>
<body>
<!-- Header Start -->
    <div class="container-fluid bg-dark py-2 d-none d-md-flex">
    	<div class="container">
        	<div class="d-flex justify-content-between topbar">
            	<div class="top-info">
                	<small class="me-3 text-white-50"><a href="#"><i class="fas fa-map-marker-alt me-2 text-secondary"></i></a>23 Ranking Street, New York</small>
                    <small class="me-3 text-white-50"><a href="#"><i class="fas fa-envelope me-2 text-secondary"></i></a>Email@Example.com</small>
				</div>
                <div id="note" class="text-secondary d-none d-xl-flex">
                	<small>Note : We help you to Grow your Business</small>
                </div>
                <!-- User Dropdown without caret -->
            <div class="top-link dropdown">
                <a href="#" class="bg-light nav-fill btn btn-sm-square rounded-circle user-icon-btn" 
                   id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-user fs-5" aria-hidden="true"></i> <!-- Increased icon size -->
                </a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
                    <li><a class="dropdown-item" href="#"><i class="fas fa-user-edit me-2"></i>Update Profile</a></li>
                    <li><a class="dropdown-item" href="logout"><i class="fas fa-sign-out-alt me-2"></i>Logout</a></li>
                </ul>
            </div>
				<!-- <div class="top-link">
                	<a href="" class="bg-light nav-fill btn btn-sm-square rounded-circle"><i class="fa fa-user" aria-hidden="true"></i></a>
				</div> -->
			</div>
    	</div>
    </div>
<!-- Header End -->
</body>
</html>