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

  <title>Update / Internship</title>
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
      <h1>Update Internship</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item"><a href="adminlistinternships">List Internships</a></li>
          <li class="breadcrumb-item active">Update Internship</li>
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
					                    <h5 class="card-title text-center pb-0 fs-4">Update an Internship</h5>
					                    <p class="text-center small">Enter your personal details to update your Internship</p>
					                  </div>
					
					                  <form class="row g-3 needs-validation" novalidate action="adminupdateinternship" method="post">
				                        <div class="col-6">
				                            <label for="title" class="form-label">Title</label>
				                            <input type="text" name="title" class="form-control" id="title" value="${admineditInternship.title }" required>
				                        </div>
				                        
				                        <div class="col-6">
				                            <label for="location" class="form-label">Location</label>
				                            <input type="text" name="location" class="form-control" id="location" value="${admineditInternship.location }" required>
				                        </div>
				
				                        <div class="col-6">
				                            <label for="stipend" class="form-label">Stipend</label>
				                            <input type="number" name="stipend" class="form-control" id="stipend" value="${admineditInternship.stipend }" required>
				                        </div>
				                        
				                        <div class="col-6">
				                            <label for="durationWeeks" class="form-label">Duration Weeks</label>
				                            <input type="number" name="durationWeeks" class="form-control" id="durationWeeks" value="${admineditInternship.durationWeeks }" required>
				                        </div>
				                        
				                       <div class="col-6">
										    <label for="description" class="form-label">Description</label>
										    <textarea class="form-control" name="description" style="height: 80px" required>${admineditInternship.description}</textarea>
										</div>
										
										<div class="col-6">
										    <label for="requirements" class="form-label">Requirements</label>
										    <textarea class="form-control" name="requirements" style="height: 80px" required>${admineditInternship.requirements}</textarea>
										</div>

				
				                        <div class="col-4">
				                            <label for="applicationDeadLine" class="form-label">Application Deadline</label>
				                            <input type="date" class="form-control" name="applicationDeadLine" value="${admineditInternship.applicationDeadLine }" required>
				                        </div>
				
										<div class="col-4">
											<label class="form-label">Company Name</label>
												<select class="form-select" name="companyId" required>
											        <option disabled <c:if test="${empty admineditInternship.companyId}">selected</c:if>>--Select Company--</option>
											        <c:forEach items="${allCompanies}" var="comp">
											            <option value="${comp.companyId}" <c:if test="${comp.companyId eq admineditInternship.companyId}">selected</c:if>>${comp.companyName}</option>
											        </c:forEach>
											   	</select>
										</div>
										
										 <div class="col-4">
    <label class="form-label">Status</label>
    <select class="form-select" name="status" required>
        <option disabled <c:if test="${empty admineditInternship.status}">selected</c:if>>--Select Status--</option>
        <option value="OPEN" <c:if test="${admineditInternship.status eq 'OPEN'}">selected</c:if>>Open</option>
        <option value="CLOSED" <c:if test="${admineditInternship.status eq 'CLOSED'}">selected</c:if>>Closed</option>
    </select>
</div>

										
										<input type="hidden" name="internshipId" value="${admineditInternship.internshipId }" />
							
				                        <div class="col-12">
				                            <button class="btn btn-primary w-100" type="submit" value="Update Internship">Update Internship</button>
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
