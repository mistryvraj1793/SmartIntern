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
      		<h1>Update InternshipApplications</h1>
      		<nav>
        		<ol class="breadcrumb">
          			<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          			<li class="breadcrumb-item"><a href="adminlistinternshipapplications">List InternshipApplications</a></li>
          			<li class="breadcrumb-item active">Update InternshipApplications</li>
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
                                        <h5 class="card-title text-center pb-0 fs-4">${adminEditinternApplied[0][11]}</h5>
                                        <p class="text-center small">All details about this internship</p>
                                    </div>

                                    <div class="row g-3">
                                        <div class="col-6">
                                            <label class="form-label"><strong>Internship Location:</strong></label>
                                            <p>${adminEditinternApplied[0][13]}</p>
                                        </div>

                                        <div class="col-6">
                                            <label class="form-label"><strong>Stipend:</strong></label>
                                            <p>${adminEditinternApplied[0][10]}</p>
                                        </div>

                                        <div class="col-12">
                                            <label class="form-label"><strong>Description:</strong></label>
                                            <p>${adminEditinternApplied[0][14]}</p>
                                        </div>

                                        <div class="col-12">
                                            <label class="form-label"><strong>Requirements:</strong></label>
                                            <p>${adminEditinternApplied[0][15]}</p>
                                        </div>

                                        <div class="col-6">
                                            <label class="form-label"><strong>Duration (Weeks):</strong></label>
                                            <p>${adminEditinternApplied[0][12]}</p>
                                        </div>

                                        <div class="col-6">
                                            <label class="form-label"><strong>Application Deadline:</strong></label>
                                            <p>${adminEditinternApplied[0][9]}</p>
                                        </div>
                                        <!-- Resume Section -->
									    <div class="col-6">
											<label for="resume" class="form-label">Resume</label>
											    <c:if test="${not empty adminEditinternApplied[0][4]}">
											    	<a href="${adminEditinternApplied[0][4]}" class="btn btn-outline-secondary btn-sm" target="_blank" download>View Resume</a>
												</c:if>
										</div>
																            
										<!-- Optional Cover Letter -->
										<div class="col-6">
										  <label for="coverLetterPath" class="form-label">Cover Letter</label>
										  <c:choose>
										    <c:when test="${not empty adminEditinternApplied[0][2]}">
										      <a href="${adminEditinternApplied[0][2]}" class="btn btn-outline-secondary btn-sm" target="_blank" download>
										        View Cover Letter
										      </a>
										    </c:when>
										    <c:otherwise>
										      <p class="text-muted">Not uploaded by user</p>
										    </c:otherwise>
										  </c:choose>
										</div>
            
                                    </div>
									<form class="row g-3 needs-validation" action="adminupdateinternshipapplication" method="post" enctype="multipart/form-data" novalidate>									
										<div class="col-4">
										    <label class="form-label">Status</label>
										    <select class="form-select" name="status" required>
										        <option disabled <c:if test="${empty adminEditinternApplied[0][5]}">selected</c:if>>--Select Status--</option>
										        <option value="PENDING" <c:if test="${adminEditinternApplied[0][5] eq 'PENDING'}">selected</c:if>>Pending</option>
										        <option value="ACCEPTED" <c:if test="${adminEditinternApplied[0][5] eq 'ACCEPTED'}">selected</c:if>>Accepted</option>
										        <option value="REJECTED" <c:if test="${adminEditinternApplied[0][5] eq 'REJECTED'}">selected</c:if>>Rejected</option>
										        <option value="WITHDRAWN" <c:if test="${adminEditinternApplied[0][5] eq 'WITHDRAWN'}">selected</c:if>>WithDrawn</option>
										    </select>
										</div>

																					                
										<input type="hidden" name="applicationId" value="${adminEditinternApplied[0][0] }"/>
						                        
										<div class="text-center">
						        			<button type="submit" class="btn btn-primary px-4">Update Internship Application Details</button>
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