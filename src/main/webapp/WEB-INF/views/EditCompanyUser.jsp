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

  <title>Update / CompanyUser</title>
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

	  <!-- Centered Page Title -->
	  <div class="pagetitle text-center">
	    <h1>Update CompanyUser</h1>
	    <nav>
	      <ol class="breadcrumb justify-content-center">
	        <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
	        <li class="breadcrumb-item"><a href="adminlistcompanyusers">List CompanyUsers</a></li>
	        <li class="breadcrumb-item active">Update CompanyUser</li>
	      </ol>
	    </nav>
	  </div><!-- End Page Title -->
	
	  <!-- Form Section Centered -->
	  <section class="section flex-grow-1 d-flex justify-content-center align-items-start">
	    <div class="col-lg-8 col-md-8 col-sm-10">
	      <div class="card shadow p-4">
	        <div class="card-body">
	          <div class="pt-4 pb-2 text-center">
	            <h5 class="card-title fw-bold">Update a CompanyUser</h5>
	            <p class="small">Enter personal details to update CompanyUser detail</p>
	          </div>
	          
	          	<form class="row g-3 needs-validation" novalidate action="adminupdatecompanyuser" method="post">
	          	
		          	<div class="col-6">
			        	<div class="col-sm-5 fw-bold">Full Name</div>
			            <div class="col-sm-10">${companyUser[0][4]}</div>
					</div>
					
					<div class="col-6">
			        	<div class="col-sm-5 fw-bold">Email</div>
			            <div class="col-sm-10">${companyUser[0][5] }</div>
					</div>
					
					<div class="col-6">
						<label class="form-label">Company Name</label>
						<select class="form-select" name="companyId" required>
							<option disabled <c:if test="${empty companyUser[0][1] }">selected</c:if>>--Select Company--</option>
								<c:forEach items="${allCompanies}" var="comp">
									<option value="${comp.companyId}" <c:if test="${comp.companyId eq companyUser[0][1] }">selected</c:if>>${comp.companyName}</option>
								</c:forEach>
						</select>
					</div>
										
					<div class="col-6">
					  <label for="title" class="form-label">Title</label>
					  <select class="form-select" name="title" required>
					    <option disabled value="">-- Select Title --</option>
					    <option value="HR" ${companyUser[0][2] == 'HR' ? 'selected' : ''}>HR</option>
					    <option value="MENTOR" ${companyUser[0][2] == 'MENTOR' ? 'selected' : ''}>Mentor</option>
					  </select>
					</div>

		          	<input type="hidden" name="companyUserId" value="${companyUser[0][0] }"/>
		          	<input type="hidden" name="userId" value="${user.userId }" />
									                
					<div class="text-center">
						<button class="btn btn-primary px-4" type="submit" value="Update User">Update CompanyUser</button>
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