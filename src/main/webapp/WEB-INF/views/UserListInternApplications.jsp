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
  
  <!-- list table -->
  <link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>

</head>

<body>
	<jsp:include page="UserHeader.jsp"></jsp:include>
	
	<jsp:include page="UserSidebar.jsp"></jsp:include>
  <main>
    <div class="container">
		<!-- Centered Page Title (Header) -->
    <div class="pagetitle text-center">
        <h1>Your Applied Internships</h1>
    </div>
      <section class="section register min-vh-50 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="d-flex justify-content-center">
            <div class="col-lg-12 col-md-10 d-flex flex-column align-items-center justify-content-center ">
              <div class="card">

               <div class="card-body">
 									<h5 class="card-title">
 										InternshipApplications<span>/all</span>
 									</h5>
 									<table class="table datatable datatable-table table-hover" id="myTable">
 										<thead>
 											<tr>
 												<th>Title</th>
												<th>Company Name</th>
												<th>Stipend</th>
												<th>Status</th>
												<th>Action</th>
 											</tr>
 										</thead>
 										<tbody>	
										<c:forEach items="${internApplications }" var="internApp">
											<tr>
												<td>${internApp[8] }</td>
												<td>${internApp[11] }</td>
												<td>${internApp[10] }</td>
												<td>${internApp[5] }</td>
												<td><a href="#">View</a></td>
											</tr>
										</c:forEach>	
 										</tbody>
 									</table>
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