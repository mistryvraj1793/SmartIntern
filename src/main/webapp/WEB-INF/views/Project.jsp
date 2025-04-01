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

  <title>Add / Project</title>
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
      <h1>Add Project</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item active"><a href="listprojects">List Projects</a></li>
          <li class="breadcrumb-item">Add Project</li>
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
 									<div class="pt-4 pb-2">
					                    <h5 class="card-title text-center pb-0 fs-4">Create an Project</h5>
					                    <p class="text-center small">Enter your personal details to create project</p>
					                  </div>
					
					                  <form class="row g-3 needs-validation" novalidate action="saveproject" method="post">
					                    <div class="col-6">
					                      <label for="title" class="form-label">Title</label>
					                      <input type="text" name="title" class="form-control" id="title" required>
					                      <div class="invalid-feedback">Please, enter your title!</div>
					                    </div>
					                    
					                    <div class="col-6">
						                  <label for="description" class="col-sm-6 col-form-label">Description</label>
						                  <div class="col-sm-12">
						                    <textarea class="form-control" name="description" style="height: 80px" required=""></textarea>
						                  </div>
						                </div>
					                    
					                    <div class="col-6">
						                  <label class="col-sm-4 col-form-label">Company Name</label>
						                  <div class="col-sm-10">
						                    <select class="form-select" aria-label="Default select example" name="companyId">
						                      <option selected="">--select Company--</option>
						                      	<c:forEach items="${allCompanies }" var="comp">
													<option value="${comp.companyId }">${comp.companyName }</option>			
												</c:forEach>	
						                    </select>
						                  </div>
						                </div>
						                
					                    <div class="col-12">
					                      <button class="btn btn-primary w-100" type="submit" value="SaveProject">Add Project</button>
					                    </div>
					                  </form>`
 									
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

 
</body>
</html>







<%-- <form action="saveproject" method="post">
		Title: <input type="text" name="title"/>
		<br></br>
		Description: <input type="text" name="description"/>
		<br></br>
		Company Name: <select name="companyId">
							<option>Select Company</option>
								<c:forEach items="${allCompanies }" var="company">
									<option value="${company.companyId }">${company.companyName }</option>
								</c:forEach>
						</select>
		<br><br>
		<input type="submit" value="Save Projects"/>
	</form> --%>
