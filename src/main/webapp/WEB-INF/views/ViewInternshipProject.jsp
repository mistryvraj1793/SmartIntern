<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SmartIntern | View Internship Project</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <jsp:include page="AdminCss.jsp"></jsp:include>
</head>

<body>

  <jsp:include page="AdminHeader.jsp"></jsp:include>
  <jsp:include page="AdminSidebar.jsp"></jsp:include>

  <main id="main" class="main">

    <div class="pagetitle text-center mt-4">
      <h1>View Internship Project</h1>
      <nav>
        <ol class="breadcrumb justify-content-center">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item"><a href="adminlistinternshipprojects">List Internship Projects</a></li>
          <li class="breadcrumb-item active">View Internship Project</li>
        </ol>
      </nav>
    </div>

    <section class="section d-flex flex-column align-items-center justify-content-center py-4">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-10 col-md-12 d-flex flex-column align-items-center justify-content-center">
            <div class="card mb-3 shadow details-card">

              <div class="card-body">
                <h5 class="card-title text-center mb-4">
                  <span>Internship Project Details</span>
                </h5>

                <!-- Internship Info -->
                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Internship Title:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][1]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Location:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][2]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Duration (Weeks):</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][3]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Stipend:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][4]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Requirements:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][5]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Application Deadline:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][6]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Internship Status:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][7]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Created At:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][8]}</div>
                </div>

                <!-- Project Info -->
                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Project Title:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][9]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Project Description:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][10]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Project Active Status:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][11]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Project Created At:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][12]}</div>
                </div>

                <!-- Company Info -->
                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Company Name:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][13]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Contact Person:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][14]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">External Guide:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][15]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Company Profile URL:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][16]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Other Info URL:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][17]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Posted By:</div>
                  <div class="col-sm-7">${internshipProjectDetails[0][18]}</div>
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
