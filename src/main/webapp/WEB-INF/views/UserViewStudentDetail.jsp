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

  <title>View Profile</title>
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
    <div class="pagetitle text-center">
        <h1>View Profile</h1>
        <nav>
            <ol class="breadcrumb justify-content-center">
                <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
                <li class="breadcrumb-item"><a href="usereditstudentdetail">Update profile</a></li>
                <li class="breadcrumb-item active">View Profile</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->
      <section class="section register min-vh-50 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-6 col-md-6 d-flex flex-column align-items-center justify-content-center">
              <div class="card mb-3">

                <div class="card-body">
					<h5 class="card-title">
 						<span>ViewUser</span>
 					</h5>
                	
                	
 					Full Name: ${UserAllStudentDetail[0][0]}<br>
 					Email: ${UserAllStudentDetail[0][1]}<br>
 					Contact Number: ${UserAllStudentDetail[0][2]}<br>
 					Profile Pic Path: ${UserAllStudentDetail[0][7]}<br>
 					Resume Path: ${UserAllStudentDetail[0][8]}<br>
					City Name: ${UserAllStudentDetail[0][10] }<br>
					State Name: ${UserAllStudentDetail[0][11] }<br>
					T-Shirt-Size: ${UserAllStudentDetail[0][12] }<br>
					<%-- Created At: ${UserAllStudentDetail[0][5]}<br> --%>
					College Name: ${UserAllStudentDetail[0][14]}<br>
					Degree: ${UserAllStudentDetail[0][6]}<br>
					Semester: ${UserAllStudentDetail[0][9]}<br>
					
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