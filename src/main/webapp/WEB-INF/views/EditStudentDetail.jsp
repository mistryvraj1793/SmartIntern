<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>
 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Update / StudentDetail</title>
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
          <li class="breadcrumb-item"><a href="adminliststudentdetails">List StudentDetails</a></li>
          <li class="breadcrumb-item active">Update StudentDetail</li>
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
					                    <h5 class="card-title text-center pb-0 fs-4">Update an StudentDetail</h5>
					                    <p class="text-center small">Enter your personal details to update your studentDetail</p>
					                  </div>
					
					                  <form class="row g-3 needs-validation" action="adminupdatestudentdetails" method="post" novalidate>
					                        <div class="col-6">
						                      <label for="stuCity" class="form-label">City Name</label>
						                      <input type="text" name="stuCity" class="form-control" id="stuCity" value="${adminEditStudentDetail.stuCity }" required>
						                      <div class="invalid-feedback">Please, enter your city!</div>
						                    </div>
						                    
						                    <div class="col-6">
						                      <label for="stuState" class="form-label">State Name</label>
						                      <input type="text" name="stuState" class="form-control" id="stuState" value="${adminEditStudentDetail.stuState }" required>
						                      <div class="invalid-feedback">Please, enter your state!</div>
						                    </div>
						                    
											<div class="col-6">
											    <label for="profilePic" class="form-label">Profile Pic</label>
											    <c:if test="${not empty adminEditStudentDetail.profilePicPath}">
												    <a href="${adminEditStudentDetail.profilePicPath}" class="btn btn-outline-secondary btn-sm" target="_blank" download>View Profile Pic</a>
												</c:if>
											</div>
										
											<div class="col-6">
											    <label for="resume" class="form-label">Resume</label>
											    <c:if test="${not empty adminEditStudentDetail.resumePath}">
											    	<a href="${adminEditStudentDetail.resumePath}" class="btn btn-outline-secondary btn-sm" target="_blank" download>View Resume</a>
												</c:if>
											</div>

					                        <div class="col-6">
					                            <label for="degree" class="form-label">Degree</label>
					                            <input type="text" name="degree" class="form-control" id="degree" value="${adminEditStudentDetail.degree }" required>
					                        </div>
					
					                        <div class="col-6">
					                            <label for="semester" class="form-label">Semester</label>
					                            <input type="text" name="semester" class="form-control" id="semester" value="${adminEditStudentDetail.semester }" required>
					                        </div>
					
					                        <div class="col-6">
											    <label class="form-label">T-Shirt Size</label>
											    <select class="form-select" name="tshirtSize" required>
											        <option disabled <c:if test="${empty adminEditStudentDetail.tshirtSize}">selected</c:if>>--Select Size--</option>
											        <option value="small" <c:if test="${adminEditStudentDetail.tshirtSize eq 'small'}">selected</c:if>>Small</option>
											        <option value="large" <c:if test="${adminEditStudentDetail.tshirtSize eq 'large'}">selected</c:if>>Large</option>
											        <option value="xl" <c:if test="${adminEditStudentDetail.tshirtSize eq 'xl'}">selected</c:if>>XL</option>
											        <option value="xxl" <c:if test="${adminEditStudentDetail.tshirtSize eq 'xxl'}">selected</c:if>>XXL</option>
											        <option value="xxxl" <c:if test="${adminEditStudentDetail.tshirtSize eq 'xxxl'}">selected</c:if>>XXXL</option>
											    </select>
											</div>
					
						                    
						                    <div class="col-6">
											    <label class="form-label">College Name</label>
											    <select class="form-select" name="collegeId" required>
											        <option disabled <c:if test="${empty adminEditStudentDetail.collegeId}">selected</c:if>>--Select College--</option>
											        <c:forEach items="${allColleges}" var="college">
											            <option value="${college.collegeId}" <c:if test="${college.collegeId eq adminEditStudentDetail.collegeId}">selected</c:if>>${college.collegeName}</option>
											        </c:forEach>
											    </select>
											</div>
					
											<!-- Hidden input to pass studentDetailId -->
											<input type="hidden" name="StudentDetailId" value="${adminEditStudentDetail.studentDetailId }"/>
					
					                        <div class="text-center">
					                            <button class="btn btn-primary px-4" type="submit" value="Update StudentDetails">Update StudentDetails</button>
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
