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

  <title>Update / User</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Template Main CSS File -->
  <jsp:include page="AdminCss.jsp"></jsp:include>
  
</head>

<body>
	<!-- Start Header -->
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<!-- End Header -->

	<!-- Start Sidebar-->
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	<!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Update User</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item"><a href="listusers">List Users</a></li>
          <li class="breadcrumb-item active">Update User</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    

      <section class="section dashboard">
 			<div class="row" style="min-height: 500px;">
 
 				<!-- Left side columns -->
 				<div class="col-lg-12">
 					<div class="row">
 						<div class="col-12">
 							<div class="card">
 								<div class="card-body">
 									<div class="pt-4 pb-2">
					                    <h5 class="card-title text-center pb-0 fs-4">Update an User</h5>
					                    <p class="text-center small">Enter your personal details to update your User</p>
					                  </div>
					
					                  <form class="row g-3 needs-validation" novalidate action="adminupdateuser" method="post">
					                    <div class="col-6">
					                      <label for="firstName" class="form-label">First Name</label>
					                      <input type="text" name="firstName" class="form-control" id="firstName" value="${user.firstName }" required>
					                      <div class="invalid-feedback">Please, enter your first name!</div>
					                    </div>
					                    
					                    <div class="col-6">
					                      <label for="lastName" class="form-label">Last Name</label>
					                      <input type="text" name="lastName" class="form-control" id="lastName" value="${user.lastName }" required>
					                      <div class="invalid-feedback">Please, enter your last name!</div>
					                    </div>
					
					                    <div class="col-6">
					                      <label for="email" class="form-label">Email</label>
					                      <input type="email" name="email" class="form-control" id="email"  value="${user.email }" required>
					                      <div class="invalid-feedback">Please enter your email!</div>
					                    </div>
					                    
					                    <div class="col-6">
					                      <label for="contactNum" class="form-label">Contact Number</label>
					                      <input type="tel" name="contactNum" class="form-control" id="contactNum" value="${user.contactNum }" required>
					                      <div class="invalid-feedback">Please enter your contact number!</div>
					                    </div>
					                    
					                    <div class="col-6">
						                  <label class="col-sm-4 col-form-label">Gender</label>
						                  <div class="col-sm-10">
						                    <select class="form-select" aria-label="Default select example" name="gender" required>
						                      <option selected="">${user.gender }</option>
						                      <option value="male">Male</option>
						                      <option value="female">Female</option>
						                      <option value="other">Other</option>
						                    </select>
						                    <div class="invalid-feedback">Please enter gender!</div>
						                  </div>
						                </div>
					                    
					                    <div class="col-6">
					                      <label for="bornYear" class="form-label">Born Year</label>
					                      <input type="number" name="bornYear" class="form-control" id="bornYear" value="${user.bornYear }" required>
					                      <div class="invalid-feedback">Please enter your born year!</div>
					                    </div>
					                    										
										<div class="col-6">
						                  <label class="col-sm-4 col-form-label">Role</label>
						                  <div class="col-sm-10">
						                    <select class="form-select" aria-label="Default select example" name="role" required>
						                      <option selected value="${user.role }">${user.role }</option>
						                      <option value="USER">User</option>
						                      <option value="ADMIN">Admin</option>
						                      <option value="HR">Hr</option>
						                      <option value="MENTOR">Mentor</option>
						                      
						                      	
						                    </select>
						                  </div>
						                </div>
						                
						                <input type="hidden" name="userId" value="${user.userId }"/>
						                
					                    <div class="col-12">
					                      <button class="btn btn-primary w-100" type="submit" value="Update User">Update User</button>
					                    </div>
					                  </form>
 									
 								</div>
 							</div>
 						</div>
 					</div>
 				</div>
 				<!-- End Left side columns -->
 			</div>
 		</section>



  </main><!-- End #main -->

  	<!-- Start Footer -->
	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <jsp:include page="AdminJs.jsp"></jsp:include>

 
</body>

</html>
