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

  <title>View / InternshipProject</title>
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
      <h1>View InternshipProject</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item"><a href="adminlistinternshipprojects">ListInternshipProjects</a></li>
          <li class="breadcrumb-item active">ViewInternshipProject</li>
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
 									<h5 class="card-title">
 										<span>View InternshipProject</span>
 									</h5>
 									
 									
 									<div class="row mb-2">
									  <div class="col-sm-6">
									    <label class="form-label"><strong>Internship Title</strong></label>
									    <p>${internshipProjectDetails[0][1]}</p>
									  </div>
									  <div class="col-sm-6">
									    <label class="form-label"><strong>Internship Location</strong></label>
									    <p>${internshipProjectDetails[0][2]}</p>
									  </div>
									
									  <div class="col-sm-6">
									    <label class="form-label"><strong>Duration (Weeks)</strong></label>
									    <p>${internshipProjectDetails[0][3]}</p>
									  </div>
									  <div class="col-sm-6">
									    <label class="form-label"><strong>Stipend</strong></label>
									    <p>${internshipProjectDetails[0][4]}</p>
									  </div>
									
									  <div class="col-sm-6">
									    <label class="form-label"><strong>Requirements</strong></label>
									    <p>${internshipProjectDetails[0][5]}</p>
									  </div>
									  <div class="col-sm-6">
									    <label class="form-label"><strong>Application Deadline</strong></label>
									    <p>${internshipProjectDetails[0][6]}</p>
									  </div>
									  <div class="col-sm-6">
									    <label class="form-label"><strong>Internship Status</strong></label>
									    <p>${internshipProjectDetails[0][7] }</p>
									  </div>
									  <div class="col-sm-6">
									    <label class="form-label"><strong>Internship CreatedAt</strong></label>
									    <p>${internshipProjectDetails[0][8] }</p>
									  </div>
									  <div class="col-sm-6">
									    <label class="form-label"><strong>Project Title</strong></label>
									    <p>${internshipProjectDetails[0][9] }</p>
									  </div>
									  <div class="col-sm-6">
									    <label class="form-label"><strong>Project Description</strong></label>
									    <p>${internshipProjectDetails[0][10] }</p>
									  </div>
									  <div class="col-sm-6">
									    <label class="form-label"><strong>Project ActiveStatus</strong></label>
									    <p>${internshipProjectDetails[0][11] }</p>
									  </div>
									  <div class="col-sm-6">
									    <label class="form-label"><strong>Project CreatedAt</strong></label>
									    <p>${internshipProjectDetails[0][12] }</p>
									  </div>
									  <div class="col-sm-6">
									    <label class="form-label"><strong>Company Name</strong></label>
									    <p>${internshipProjectDetails[0][13] }</p>
									  </div>
									  <div class="col-sm-6">
									    <label class="form-label"><strong>ContactPerson</strong></label>
									    <p>${internshipProjectDetails[0][14] }</p>
									  </div>
									  <div class="col-sm-6">
									    <label class="form-label"><strong>ExternalGuide</strong></label>
									    <p>${internshipProjectDetails[0][15] }</p>
									  </div>
									  <div class="col-sm-6">
									    <label class="form-label"><strong>CompanyProfileUrl</strong></label>
									    <p>${internshipProjectDetails[0][16] }</p>
									  </div>
									  <div class="col-sm-6">
									    <label class="form-label"><strong>OtherInfoUrl</strong></label>
									    <p>${internshipProjectDetails[0][17] }</p>
									  </div>
									  <div class="col-sm-6">
									    <label class="form-label"><strong>PostedByName</strong></label>
									    <p>${internshipProjectDetails[0][18] }</p>
									  </div>
									</div>
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
