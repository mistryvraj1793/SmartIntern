<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Report | Top Internships By Applications</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <jsp:include page="AdminCss.jsp"></jsp:include>

  <!-- DataTables CSS for report -->
  <link href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
  <link href="https://cdn.datatables.net/buttons/3.2.2/css/buttons.dataTables.css" rel="stylesheet" />

</head>

<body>

  <!-- Start Header -->
  <jsp:include page="AdminHeader.jsp"></jsp:include>
  <!-- End Header -->

  <!-- Start Sidebar -->
  <jsp:include page="AdminSidebar.jsp"></jsp:include>
  <!-- End Sidebar -->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Top Internships by Applications</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item active">Top 5 Internships By Applications</li>
        </ol>
      </nav>
    </div>

    <section class="section dashboard">
      <div class="row" style="min-height: 500px;">

        <div class="col-lg-12">
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-body">

                  <h5 class="card-title">Top 5 Internships <span>/ by Number of Applications</span></h5>

                  <table class="table datatable datatable-table table-hover" id="reportTable">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Internship Title</th>
                        <th>Company Name</th>
                        <th>Status</th>
                        <th>Location</th>
                        <th>Application Deadline</th>
                        <th>internship CraetedAt</th>
                        <th>Total Applications</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach items="${TopInternshipApplicationCount}" var="report">
                        <tr>
                          <td>${report[0]}</td>
                          <td>${report[1]}</td>
                          <td>${report[2]}</td>
                          <td>${report[3]}</td>
                          <td>${report[4]}</td>
                          <td>${report[5]}</td>
                          <td>${report[6]}</td>
                          <td>${report[7]}</td>
                          
                        </tr>
                      </c:forEach>
                    </tbody>
                  </table>

                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section>

  </main>

  <!-- Start Footer -->
  <jsp:include page="AdminFooter.jsp"></jsp:include>
  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center">
    <i class="bi bi-arrow-up-short"></i>
  </a>

  <jsp:include page="AdminJs.jsp"></jsp:include>

  <!-- DataTable Initialization -->
  <script type="text/javascript">
    $(document).ready(function() {
      new DataTable('#reportTable', {
        layout: {
          topStart: {
            buttons: ['copy', 'csv', 'excel', 'pdf', 'print']
          }
        }
      });
    });
  </script>

</body>

</html>