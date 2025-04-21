<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SmartIntern | View User</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <jsp:include page="AdminCss.jsp"></jsp:include>

</head>

<body>

  <jsp:include page="AdminHeader.jsp"></jsp:include>
  <jsp:include page="AdminSidebar.jsp"></jsp:include>

  <main id="main" class="main">

    <div class="pagetitle text-center mt-4">
      <h1>View User</h1>
      <nav>
        <ol class="breadcrumb justify-content-center">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item"><a href="adminlistusers">List Users</a></li>
          <li class="breadcrumb-item active">View User</li>
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
                  <span>User Details</span>
                </h5>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">First Name:</div>
                  <div class="col-sm-7">${user.firstName}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Last Name:</div>
                  <div class="col-sm-7">${user.lastName}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Email:</div>
                  <div class="col-sm-7">${user.email}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Password:</div>
                  <div class="col-sm-7">${user.password}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Contact Number:</div>
                  <div class="col-sm-7">${user.contactNum}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Born Year:</div>
                  <div class="col-sm-7">${user.bornYear}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Gender:</div>
                  <div class="col-sm-7">${user.gender}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Role:</div>
                  <div class="col-sm-7">${user.role}</div>
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
