<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>
 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Add / User</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Template Main CSS File -->
  <jsp:include page="AdminCss.jsp"></jsp:include>
  
  <!-- list table -->
  <link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
  
</head>

<body>
	<!-- Start Header -->
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<!-- End Header -->

	<!-- Start Sidebar-->
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	<!-- End Sidebar-->

  <main id="main" class="main">
    <div class="d-flex flex-column justify-content-center align-items-center min-vh-100 w-100">

        <!-- Page Title (Centered) -->
        <div class="pagetitle text-center">
            <h1>Add User</h1>
            <nav>
                <ol class="breadcrumb justify-content-center">
                    <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
                    <li class="breadcrumb-item active"><a href="adminlistusers">List Users</a></li>
                    <li class="breadcrumb-item">Add User</li>
                </ol>
            </nav>
        </div>
        <!-- End Page Title -->

        <section class="section dashboard d-flex justify-content-center align-items-center min-vh-100">
    <div class="col-lg-8 col-md-8 col-sm-10"> <!-- Adjust width for responsiveness -->
        <div class="card shadow p-4">
            <div class="card-body">
                <div class="pt-4 pb-2 text-center">
                    <h5 class="card-title fw-bold">Create a User</h5>
                    <p class="small">Enter your personal details to create User</p>
                </div>

                <form class="row g-3 needs-validation" novalidate action="adminsaveuser" method="post">
                    <div class="col-6">
                        <label for="firstName" class="form-label">First Name</label>
                        <input type="text" name="firstName" class="form-control" id="firstName" required>
                    </div>
                    <div class="col-6">
                        <label for="lastName" class="form-label">Last Name</label>
                        <input type="text" name="lastName" class="form-control" id="lastName" required>
                    </div>

                    <div class="col-6">
                        <label for="email" class="form-label">Your Email</label>
                        <div class="input-group">
                            <span class="input-group-text">@</span>
                            <input type="email" name="email" class="form-control" id="email" required>
                        </div>
                    </div>
                    <div class="col-6">
                        <label for="contactNum" class="form-label">Contact Number</label>
                        <input type="tel" name="contactNum" class="form-control" id="contactNum" maxlength="10" pattern="[0-9]{10}" required>
                    </div>

                    <div class="col-6">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" name="password" class="form-control" id="password" required>
                    </div>
                    <div class="col-6">
                        <label for="confirmPassword" class="form-label">Confirm Password</label>
                        <input type="password" name="confirmPassword" class="form-control" id="confirmPassword" required>
                    </div>

                    <fieldset class="col-6">
                        <legend class="col-form-label pt-0">Gender</legend>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gender" id="genderMale" value="male" checked>
                            <label class="form-check-label" for="genderMale">Male</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gender" id="genderFemale" value="female">
                            <label class="form-check-label" for="genderFemale">Female</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gender" id="genderOther" value="other">
                            <label class="form-check-label" for="genderOther">Other</label>
                        </div>
                    </fieldset>

                    <div class="col-6">
                        <label for="bornYear" class="form-label">Born Year</label>
                        <input type="number" name="bornYear" class="form-control" id="bornYear" required>
                    </div>

                    <div class="col-6">
                        <label class="form-label">Role</label>
                        <select class="form-select" name="role" required>
                            <option selected="">Select Role</option>
                            <option value="HR">HR</option>
                            <option value="MENTOR">Mentor</option>
                        </select>
                    </div>
					
					<div class="col-6">
						<label class="form-label">Company Name</label>
	                    	<select class="form-select" name="companyId">
	                        	<option selected>select Company</option>
	                                <c:forEach items="${allCompanies}" var="company">
	                                    <option value="${company.companyId}">${company.companyName}</option>
	                                </c:forEach>
	                       	</select>
					</div>
	                        
                    <div class="text-center">
                        <button class="btn btn-primary px-4" type="submit">Add User</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>


    </div>
</main><!-- End #main -->


  	<!-- Start Footer -->
	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <jsp:include page="AdminJs.jsp"></jsp:include>

</body>
</html>