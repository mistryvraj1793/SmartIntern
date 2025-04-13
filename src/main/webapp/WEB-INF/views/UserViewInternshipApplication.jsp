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

  <title>SmartIntern | View InternshipApplication</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Template Main CSS File -->
  <jsp:include page="UserCss.jsp"></jsp:include>
  <jsp:include page="AdminCss.jsp"></jsp:include>

</head>

<body>
	<jsp:include page="UserHeader.jsp"></jsp:include>
	
	<jsp:include page="UserSidebar.jsp"></jsp:include>
  <main>
    <div class="container">
		<!-- Centered Page Title (Header) -->
	    <div class="pagetitle text-center mt-4">
		  <h1>View InternshipApplication</h1>
		  <nav>
		    <ol class="breadcrumb justify-content-center">
		      <li class="breadcrumb-item"><a href="userdashboard">Home</a></li>
		      <li class="breadcrumb-item"><a href="userlistinternshipapplications">List Applications</a></li>
		      <li class="breadcrumb-item active">View Application</li>
		    </ol>
		  </nav>
		</div>
		<!-- End Page Title -->
	      <section class="section register min-vh-50 d-flex flex-column align-items-center justify-content-center py-4">
	        <div class="container">
	          <div class="row justify-content-center">
	            <div class="col-lg-10 col-md-12 d-flex flex-column align-items-center justify-content-center">
	              <div class="card mb-3" style="max-width: 900px; width: 50%;">
	
	
	                <div class="card-body">
						<h5 class="card-title text-center mb-4">
	 						<span>Application Details</span>
	 					</h5>
		                <div class="row mb-2">
		                  <div class="col-sm-5 fw-bold">Your Name:</div>
		                  <div class="col-sm-7">${userInternApplication[0][8]}</div>
		                </div>
		
		                <div class="row mb-2">
		                  <div class="col-sm-5 fw-bold">Internship Title:</div>
		                  <div class="col-sm-7">${userInternApplication[0][10]}</div>
		                </div>
		
		                <div class="row mb-2">
		                  <div class="col-sm-5 fw-bold">Your Role:</div>
		                  <div class="col-sm-7">${userInternApplication[0][9]}</div>
		                </div>
		
		                <div class="row mb-2">
		                  <div class="col-sm-5 fw-bold">Stipend:</div>
		                  <div class="col-sm-7"> ${userInternApplication[0][12]}</div>
		                </div>
		
		                <div class="row mb-2">
		                  <div class="col-sm-5 fw-bold">Company Name:</div>
		                  <div class="col-sm-7">${userInternApplication[0][13]}</div>
		                </div>
		
		                <div class="row mb-2">
		                  <div class="col-sm-5 fw-bold">Company Address:</div>
		                  <div class="col-sm-7">${userInternApplication[0][14]}</div>
		                </div>
		
		                <div class="row mb-2">
		                  <div class="col-sm-5 fw-bold">Application Status:</div>
		                  <div class="col-sm-7">${userInternApplication[0][6]}</div>
		                </div>
		
		                <div class="row mb-2">
		                  <div class="col-sm-5 fw-bold">Your Resume:</div>
		                  <div class="col-sm-7">
		                    <a href="${userInternApplication[0][5]}" target="_blank">View Resume</a>
		                  </div>
		                </div>
		
		                <div class="row mb-2">
		                  <div class="col-sm-5 fw-bold">Cover Letter:</div>
		                  <div class="col-sm-7">${userInternApplication[0][2]}</div>
		                </div>
		
		                <div class="row mb-2">
		                  <div class="col-sm-5 fw-bold">Payment Reference:</div>
		                  <div class="col-sm-7">Not Provided</div>
		                </div>
		
		                <div class="row mb-2">
		                  <div class="col-sm-5 fw-bold">Applied At:</div>
		                  <div class="col-sm-7">${userInternApplication[0][1]}</div>
		                </div>
						
	                </div>
	              </div>
	
	            </div>
	          </div>
	        </div>
	
	      </section>

    </div>
  </main><!-- End #main -->
	  
	<jsp:include page="UserFooter.jsp"></jsp:include>
	  
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <jsp:include page="AdminJs.jsp"></jsp:include>
  <jsp:include page="UserJs.jsp"></jsp:include>
</body>

</html>