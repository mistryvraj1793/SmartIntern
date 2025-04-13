<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>View / InternshipTechnology</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <jsp:include page="AdminCss.jsp"></jsp:include>
</head>

<body>
  <jsp:include page="AdminHeader.jsp"></jsp:include>
  <jsp:include page="AdminSidebar.jsp"></jsp:include>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>View InternshipTechnology</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item"><a href="adminlistinternshiptechnologies">ListInternshipTechnologies</a></li>
          <li class="breadcrumb-item active">ViewInternshipTechnology</li>
        </ol>
      </nav>
    </div>

    <section class="section dashboard">
      <div class="row" style="min-height: 500px;">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body pt-4">
              <h5 class="card-title">InternshipTechnology Details</h5>

              <div class="row mb-3">
                <div class="col-sm-6">
                  <strong>Internship Title:</strong> ${internshipTechnologyDetails[0][1]}
                </div>
                <div class="col-sm-6">
                  <strong>Application Deadline:</strong> ${internshipTechnologyDetails[0][2]}
                </div>
              </div>

              <div class="row mb-3">
                <div class="col-sm-6">
                  <strong>Duration (Weeks):</strong> ${internshipTechnologyDetails[0][3]}
                </div>
                <div class="col-sm-6">
                  <strong>Location:</strong> ${internshipTechnologyDetails[0][4]}
                </div>
              </div>

              <div class="row mb-3">
                <div class="col-sm-6">
                  <strong>Stipend:</strong> ${internshipTechnologyDetails[0][5]}
                </div>
                <div class="col-sm-6">
                  <strong>Technology Name:</strong> ${internshipTechnologyDetails[0][6]}
                </div>
              </div>

              <div class="row mb-3">
                <div class="col-12">
                  <strong>Description:</strong> ${internshipTechnologyDetails[0][7]}
                </div>
              </div>

              <div class="row mb-3">
                <div class="col-sm-6">
                  <strong>Frontend:</strong> ${internshipTechnologyDetails[0][8]}
                </div>
                <div class="col-sm-6">
                  <strong>Backend:</strong> ${internshipTechnologyDetails[0][9]}
                </div>
              </div>

              <div class="row mb-3">
                <div class="col-sm-6">
                  <strong>Tools:</strong> ${internshipTechnologyDetails[0][10]}
                </div>
                <div class="col-sm-6">
                  <strong>Language:</strong> ${internshipTechnologyDetails[0][11]}
                </div>
              </div>

              <div class="row mb-3">
                <div class="col-sm-6">
                  <strong>Created At:</strong> ${internshipTechnologyDetails[0][12]}
                </div>
                <div class="col-sm-6">
                  <strong>Company Name:</strong> ${internshipTechnologyDetails[0][13]}
                </div>
              </div>

              <div class="row mb-3">
                <div class="col-sm-6">
                  <strong>Company Profile URL:</strong> ${internshipTechnologyDetails[0][14]}
                </div>
                <div class="col-sm-6">
                  <strong>Posted By:</strong> ${internshipTechnologyDetails[0][15]}
                </div>
              </div>

            </div>
          </div>
        </div>
      </div>
    </section>

  </main>

  <jsp:include page="AdminFooter.jsp"></jsp:include>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center">
    <i class="bi bi-arrow-up-short"></i>
  </a>

  <jsp:include page="AdminJs.jsp"></jsp:include>

</body>
</html>
