<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- where Enables JSTL in JSP: Without this, JSTL tags won't work. and 
where prefix="c" allows you to use JSTL tags with <c:> syntax.--%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View User</title>
<!-- plugins:css -->
    <link rel="stylesheet" href="../../assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../../assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
<!-- Layout styles -->
    	<link rel="stylesheet" href="assets/css/style.css">
    <!-- End layout styles -->
<link rel="shortcut icon" href="../../assets/images/favicon.png">
</head>
<body>
<div class="container-scroller">
    <!-- Header Section -->
    <jsp:include page="AdminHeader.jsp"></jsp:include>

    <!-- Sidebar Section -->
    <jsp:include page="AdminSidebar.jsp"></jsp:include>

    <div class="container-fluid page-body-wrapper">
        <div class="main-panel">
            <div class="content-wrapper">
                <!-- Page Header -->
                <div class="page-header">
                    <h3 class="page-title">View User</h3>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="listuser">List User</a></li>
                            <li class="breadcrumb-item active" aria-current="page">View Table</li>
                        </ol>
                    </nav>
                </div>

                <!-- Table Content -->
                <div class="row">
                    <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">View User</h4>
                    <p class="card-description"> Add class <code>.table-striped</code>
                    </p>
                    <div class="table-responsive">
                      <table class="table table-striped">
                        <thead>
                          <tr>
                            <th> FirstName </th>
                            <th> LastName </th>
                            <th> Email </th>
                            <th> Password </th>
                            <th> ContactNum </th>
                            <th> BornYear </th>
                            <th> Gender </th>
                            <th> Role </th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td> ${user.firstName} </td>
                            <td> ${user.lastName} </td>
                            <td> ${user.email} </td>
                            <td> ${user.password} </td>
                            <td> ${user.contactNum} </td>
                            <td> ${user.bornYear} </td>
                            <td> ${user.gender} </td>
                            <td> ${user.role } </td>
                          </tr> 
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
                </div>
            </div> <!-- content-wrapper ends -->

            <!-- ✅ Footer placed inside main-panel -->
            <jsp:include page="AdminFooter.jsp"></jsp:include>

        </div> <!-- main-panel ends -->
    </div> <!-- page-body-wrapper ends -->
</div> <!-- container-scroller ends -->

<!-- js starts -->
	<jsp:include page="AdminJs.jsp"></jsp:include>
<!-- js ends -->
</body>
</html>
