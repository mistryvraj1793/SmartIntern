<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SmartIntern | View Profile</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

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
        <h1>View Profile</h1>
        <nav>
          <ol class="breadcrumb justify-content-center">
            <li class="breadcrumb-item"><a href="userdashboard">Home</a></li>
            <li class="breadcrumb-item"><a href="usereditstudentdetail">Update Profile</a></li>
            <li class="breadcrumb-item active">View Profile</li>
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
                    <span>Student Details</span>
                  </h5>

                  <div class="row mb-2">
                    <div class="col-sm-5 fw-bold">Full Name:</div>
                    <div class="col-sm-7">${UserAllStudentDetail[0][0]}</div>
                  </div>

                  <div class="row mb-2">
                    <div class="col-sm-5 fw-bold">Email:</div>
                    <div class="col-sm-7">${UserAllStudentDetail[0][1]}</div>
                  </div>

                  <div class="row mb-2">
                    <div class="col-sm-5 fw-bold">Contact Number:</div>
                    <div class="col-sm-7">${UserAllStudentDetail[0][2]}</div>
                  </div>

                  <div class="row mb-2">
					  <div class="col-sm-5 fw-bold">Profile Picture:</div>
					  <div class="col-sm-7">
					    <c:if test="${not empty UserAllStudentDetail[0][7]}">
					      <a href="${UserAllStudentDetail[0][7]}" target="_blank">View Profile Pic</a>
					    </c:if>
					    <c:if test="${empty UserAllStudentDetail[0][7]}">
					      Not Provided
					    </c:if>
					  </div>
					</div>
					
					<div class="row mb-2">
					  <div class="col-sm-5 fw-bold">Resume:</div>
					  <div class="col-sm-7">
					    <c:if test="${not empty UserAllStudentDetail[0][8]}">
					      <a href="${UserAllStudentDetail[0][8]}" target="_blank">View Resume</a>
					    </c:if>
					    <c:if test="${empty UserAllStudentDetail[0][8]}">
					      Not Provided
					    </c:if>
					  </div>
					</div>

                  
                  <div class="row mb-2">
                    <div class="col-sm-5 fw-bold">City Name:</div>
                    <div class="col-sm-7">${UserAllStudentDetail[0][10]}</div>
                  </div>

                  <div class="row mb-2">
                    <div class="col-sm-5 fw-bold">State Name:</div>
                    <div class="col-sm-7">${UserAllStudentDetail[0][11]}</div>
                  </div>

                  <div class="row mb-2">
                    <div class="col-sm-5 fw-bold">T-Shirt Size:</div>
                    <div class="col-sm-7">${UserAllStudentDetail[0][12]}</div>
                  </div>

                  <div class="row mb-2">
                    <div class="col-sm-5 fw-bold">College Name:</div>
                    <div class="col-sm-7">${UserAllStudentDetail[0][14]}</div>
                  </div>

                  <div class="row mb-2">
                    <div class="col-sm-5 fw-bold">Degree:</div>
                    <div class="col-sm-7">${UserAllStudentDetail[0][6]}</div>
                  </div>

                  <div class="row mb-2">
                    <div class="col-sm-5 fw-bold">Semester:</div>
                    <div class="col-sm-7">${UserAllStudentDetail[0][9]}</div>
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

    </div>
  </main>

  <jsp:include page="UserFooter.jsp"></jsp:include>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center">
    <i class="bi bi-arrow-up-short"></i>
  </a>

  <jsp:include page="AdminJs.jsp"></jsp:include>
  <jsp:include page="UserJs.jsp"></jsp:include>
</body>

</html>
