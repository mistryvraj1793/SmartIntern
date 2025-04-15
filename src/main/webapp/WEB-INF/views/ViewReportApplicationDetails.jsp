<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>View / Application Report Details</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <jsp:include page="AdminCss.jsp"></jsp:include>

</head>

<body>
  <!-- Start Header -->
  <jsp:include page="AdminHeader.jsp"></jsp:include>
  <!-- End Header -->

  <!-- Start Sidebar -->
  <jsp:include page="AdminSidebar.jsp"></jsp:include>
  <!-- End Sidebar -->

  <main id="main" class="main d-flex flex-column min-vh-100">

    <!-- Page Title -->
    <div class="pagetitle text-center">
      <h1>View Application Details</h1>
      <nav>
        <ol class="breadcrumb justify-content-center">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item"><a href="listreportinternshipapplications">Internship Reports</a></li>
          <li class="breadcrumb-item active">View Details</li>
        </ol>
      </nav>
    </div>
    <!-- End Page Title -->

    <!-- Content Section -->
    <section class="section flex-grow-1 d-flex justify-content-center align-items-start">
      <div class="col-lg-8 col-md-10 col-sm-12">
        <div class="card shadow p-4">
          <div class="card-body">

            <div class="pt-3 pb-3 text-center">
              <h5 class="card-title fw-bold">Application Information</h5>
            </div>

            <div class="row g-3">

              <div class="col-12">
                <strong>Applied By:</strong> ${internApplication[0][8]}
              </div>

              <div class="col-6">
                <strong>Student Role:</strong> ${internApplication[0][9]}
              </div>

              <div class="col-6">
                <strong>Internship Title:</strong> ${internApplication[0][12]}
              </div>

              <div class="col-6">
                <strong>Location:</strong> ${internApplication[0][14]}
              </div>

              <div class="col-6">
                <strong>Company:</strong> ${internApplication[0][17]}
              </div>

              <div class="col-12">
                <strong>Company Address:</strong> ${internApplication[0][18]}
              </div>

              <div class="col-12">
                <strong>Description:</strong> ${internApplication[0][15]}
              </div>

              <div class="col-12">
                <strong>Requirements:</strong> ${internApplication[0][16]}
              </div>

              <div class="col-6">
                <strong>Stipend:</strong> ${internApplication[0][11]}
              </div>

              <div class="col-6">
                <strong>Application Status:</strong> ${internApplication[0][5]}
              </div>

              <div class="col-6">
                <strong>Duration (Weeks):</strong> ${internApplication[0][13]}
              </div>

              <div class="col-6">
                <strong>Application Deadline:</strong> ${internApplication[0][10]}
              </div>

              <div class="col-6">
                <strong>Applied At:</strong> ${internApplication[0][1]}
              </div>

              <div class="col-6">
                <strong>Payment ID:</strong> ${internApplication[0][7]}
              </div>

              <div class="col-6">
                <strong>Resume:</strong>
                <c:if test="${not empty internApplication[0][4]}">
                  <a href="${internApplication[0][4]}" target="_blank" class="btn btn-outline-primary btn-sm">View Resume</a>
                </c:if>
              </div>

              <div class="col-6">
                <strong>Cover Letter:</strong>
                <c:if test="${not empty internApplication[0][2]}">
                  <a href="${internApplication[0][2]}" target="_blank" class="btn btn-outline-primary btn-sm">View Cover Letter</a>
                </c:if>
              </div>

            </div>

          </div>
        </div>
      </div>
    </section>

  </main>

  <!-- Footer -->
  <jsp:include page="AdminFooter.jsp"></jsp:include>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center">
    <i class="bi bi-arrow-up-short"></i>
  </a>

  <jsp:include page="AdminJs.jsp"></jsp:include>

</body>

</html>
