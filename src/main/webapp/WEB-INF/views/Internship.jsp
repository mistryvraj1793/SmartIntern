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

  <title>Add / Internship</title>
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

  <main id="main" class="main d-flex flex-column min-vh-100">

	    <!-- Centered Page Title (Header) -->
	    <div class="pagetitle text-center">
	        <h1>Add Internship</h1>
	        <nav>
	            <ol class="breadcrumb justify-content-center">
	                <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
	                <li class="breadcrumb-item"><a href="adminlistinternships">List Internships</a></li>
	                <li class="breadcrumb-item active">Add Internship</li>
	            </ol>
	        </nav>
	    </div><!-- End Page Title -->
	
	    <!-- Form Section -->
	    <section class="section flex-grow-1 d-flex justify-content-center align-items-start">
	        <div class="col-lg-8 col-md-8 col-sm-10"> <!-- Responsive Width -->
	            <div class="card shadow p-4">
	                <div class="card-body">
	                    <div class="pt-4 pb-2 text-center">
	                        <h5 class="card-title fw-bold">Create an Internship</h5>
	                        <p class="small">Enter your personal details to create an internship</p>
	                    </div>
	
	                    <form class="row g-3 needs-validation" novalidate action="saveinternship" method="post">
	                        <div class="col-6">
	                            <label for="title" class="form-label">Title</label>
	                            <input type="text" name="title" class="form-control" id="title" required>
	                        </div>
	                        
	                        <div class="col-6">
	                            <label for="location" class="form-label">Location</label>
	                            <input type="text" name="location" class="form-control" id="location" required>
	                        </div>
	
	                        <div class="col-6">
	                            <label for="stipend" class="form-label">Stipend</label>
	                            <input type="number" name="stipend" class="form-control" id="stipend" required>
	                        </div>
	                        
	                        <div class="col-6">
	                            <label for="durationWeeks" class="form-label">Duration Weeks</label>
	                            <input type="number" name="durationWeeks" class="form-control" id="durationWeeks" required>
	                        </div>
	                        
	                        <div class="col-6">
	                            <label for="description" class="form-label">Description</label>
	                            <textarea class="form-control" name="description" style="height: 80px" required></textarea>
	                        </div>
	                        
	                        <div class="col-6">
	                            <label for="requirements" class="form-label">Requirements</label>
	                            <textarea class="form-control" name="requirements" style="height: 80px" required></textarea>
	                        </div>
	
	                        <div class="col-6">
	                            <label for="applicationDeadLine" class="form-label">Application Deadline</label>
	                            <input type="date" class="form-control" name="applicationDeadLine" required>
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
	
	                        <div class="col-12">
	                            <button class="btn btn-primary w-100" type="submit" value="Save Internship">Add Internship</button>
	                        </div>
	                    </form>
	
	                </div>
	            </div>
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
