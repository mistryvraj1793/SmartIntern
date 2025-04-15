<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%-- imports JSTL core tag library into your JSP file, enabling the use of JSTL tags like <c:if>, <c:forEach>, <c:choose>, etc. --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Report | Applications By College</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Template Main CSS File -->
  <jsp:include page="AdminCss.jsp"></jsp:include>
  
  <!-- for report css -->
  <link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
  <link href="https://cdn.datatables.net/buttons/3.2.2/css/buttons.dataTables.css" rel="stylesheet" />
  
  <!-- list table -->
  <link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>
  
  <!-- for Report -->
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
      <h1>Applications By College</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item active">Applications By College</li>
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
 										Applications By College<span>/all</span>
 									</h5>
 									
                                    <table class="table datatable datatable-table table-hover" id="myTable">
 										<thead>
 											<tr>
 												<th>#</th>
 												<th>User Name</th>
 												<th>College Name</th>
												<th>Internship Title</th>
												<th>Company Name</th>		
												<th>Status</th>
												<th>Applied Date</th>										
												<!-- <th>Action</th> -->
 											</tr>
 										</thead>
 										<tbody>	
										<c:forEach items="${appDetails }" var="internApp" >
											<tr>
												<td>${internApp[0] }</td>
												<td>${internApp[2] }</td>
												<td>${internApp[1] }</td>
												<td>${internApp[3] }</td>
												<td>${internApp[4] }</td>
												<td>${internApp[5] }</td>
												<td>${internApp[6] }</td>
												<!-- <td><a href="#">View</a> | 
												<a href="#">Delete</a> | 
												<a href="#">Edit</a></td> -->
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
  
	  <script type="text/javascript">
	 	$( document ).ready(function() {
	 		//let table = new DataTable('#myTable');
	 		new DataTable('#myTable', {
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
