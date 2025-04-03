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

  <title>List / Companies</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Template Main CSS File -->
  <jsp:include page="AdminCss.jsp"></jsp:include>
  
  <!-- list table -->
  <link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
  
</head>

<body>
	<!-- Start Header -->
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<!-- End Header -->

	<!-- Start Sidebar-->
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	<!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>List Companies</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item"><a href="admincompany">Add Company</a></li>
          <li class="breadcrumb-item active">ListCompanies</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
 			<div class="row" style="min-height: 500px;">
 
 				<!-- Left side columns -->
 				<div class="col-lg-12">
 					<div class="row">
 						<div class="col-12">
 							<div class="card">
 								<div class="card-body">
 									<h5 class="card-title">
 										Companies<span>/all</span>
 									</h5>
 									<table class="table datatable datatable-table table-hover" id="myTable">
 										<thead>
 											<tr>
 												<th>CompanyName</th>
												<th>Address</th>
												<!-- <th>Url</th> -->
												<th>PersonName</th>
												<!-- <th>ExternalGuide</th> -->
												<th>ExternalGuideContactNum</th>
												<!-- <th>CompanyProfileUrl</th>
												<th>AnyOtherInfoUrl</th> -->
												<th>Action</th>
 											</tr>
 										</thead>
 										<tbody>
 											<c:forEach items="${companyList}" var="com">
												<tr>
													<td>${com.companyName }</td>
													<td>${com.address }</td>
													<%-- <td>${com.url }</td> --%>
													<td>${com.personName }</td>
													<%-- <td>${com.externalGuide }</td> --%>
													<td>${com.externalGuideContactNum }</td>
													<%-- <td>${com.companyProfileUrl }</td>
													<td>${com.anyOtherInfoUrl }</td> --%>
													<td><a href="adminviewcompany?companyId=${com.companyId }">View</a> 
													| <a href="admindeletecompany?companyId=${com.companyId }">Delete</a> 
													| <a href="#">Edit</a></td>
												</tr>
											</c:forEach>
 										</tbody>
 									</table>
 								</div>
 							</div>
 						</div>
 					</div>
 				</div>
 				<!-- End Left side columns -->
 			</div>
 		</section>

  </main><!-- End #main -->

  	<!-- Start Footer -->
	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <jsp:include page="AdminJs.jsp"></jsp:include>

	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
 
 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
 
 	<script type="text/javascript">
 
 	$( document ).ready(function() {
 		let table = new DataTable('#myTable');
 	});
 	</script>
</body>

</html>
