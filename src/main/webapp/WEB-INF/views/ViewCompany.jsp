<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SmartIntern | View Company</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <jsp:include page="AdminCss.jsp"></jsp:include>
</head>

<body>

  <jsp:include page="AdminHeader.jsp"></jsp:include>
  <jsp:include page="AdminSidebar.jsp"></jsp:include>

  <main id="main" class="main">

    <div class="pagetitle text-center mt-4">
      <h1>View Company</h1>
      <nav>
        <ol class="breadcrumb justify-content-center">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item"><a href="adminlistcompanies">List Companies</a></li>
          <li class="breadcrumb-item active">View Company</li>
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
                  <span>Company Details</span>
                </h5>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Created By:</div>
                  <div class="col-sm-7">${companyUserDetails[0][12]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Created By Role:</div>
                  <div class="col-sm-7">${companyUserDetails[0][13]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Company Name:</div>
                  <div class="col-sm-7">${companyUserDetails[0][4]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Address:</div>
                  <div class="col-sm-7">${companyUserDetails[0][2]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">URL:</div>
                  <div class="col-sm-7">
                    <c:if test="${not empty companyUserDetails[0][9]}">
                      <a href="${companyUserDetails[0][9]}" target="_blank">${companyUserDetails[0][9]}</a>
                    </c:if>
                    <c:if test="${empty companyUserDetails[0][9]}">Not Provided</c:if>
                  </div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Contact Person Name:</div>
                  <div class="col-sm-7">${companyUserDetails[0][8]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">External Guide:</div>
                  <div class="col-sm-7">${companyUserDetails[0][6]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">External Guide Contact Number:</div>
                  <div class="col-sm-7">${companyUserDetails[0][7]}</div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Company Profile URL:</div>
                  <div class="col-sm-7">
                    <c:if test="${not empty companyUserDetails[0][12]}">
                      <a href="${companyUserDetails[0][12]}" target="_blank">View Profile</a>
                    </c:if>
                    <c:if test="${empty companyUserDetails[0][12]}">Not Provided</c:if>
                  </div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Other Information URL:</div>
                  <div class="col-sm-7">
                    <c:if test="${not empty companyUserDetails[0][3]}">
                      <a href="${companyUserDetails[0][3]}" target="_blank">View Info</a>
                    </c:if>
                    <c:if test="${empty companyUserDetails[0][3]}">Not Provided</c:if>
                  </div>
                </div>

                <div class="row mb-2">
                  <div class="col-sm-5 fw-bold">Created At:</div>
                  <div class="col-sm-7">${companyUserDetails[0][5]}</div>
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
