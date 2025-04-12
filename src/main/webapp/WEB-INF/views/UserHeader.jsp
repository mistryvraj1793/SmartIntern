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
                    <a href="#"><i class="fas fa-map-marker-alt me-2 text-secondary"></i></a>Vatsalya Complex-3, Ahmedabad, Gujarat, India
                </small>
                <small class="me-3 text-white-50">
                    <a href="#"><i class="fas fa-envelope me-2 text-secondary"></i></a>support@smartintern.com
                </small>
            </div>
            <div id="note" class="text-danger d-none d-xl-flex align-items-center" style="white-space: nowrap;">
                <small><strong>Note:</strong> We’re here to guide you through every step of securing your dream internship. Let’s start your SmartIntern journey today!</small>
            </div>

            <!-- User Dropdown without caret -->
            <div class="top-link dropdown">
                <a href="#" class="bg-light nav-fill btn btn-sm-square rounded-circle user-icon-btn overflow-hidden p-0"
                   id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="width: 40px; height: 40px;">
                   
                    <img src="${sessionScope.studentDetail.profilePicPath}" alt="User" class="img-fluid rounded-circle" style="width: 100%; height: 100%; object-fit: cover;">
                </a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
                    <li class="dropdown-header text-center">
                        <h5>${sessionScope.user.firstName }</h5>
                    </li>
                    <li><a class="dropdown-item" href="userstudentdetail"><i class="fas fa-user-edit me-2"></i>Update Profile</a></li>
                    <li><a class="dropdown-item" href="logout"><i class="fas fa-sign-out-alt me-2"></i>Logout</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Header End -->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>