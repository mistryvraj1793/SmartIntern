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

  <title>SmartIntern | Edit College</title>
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
  <div class="pagetitle text-center">
    <h1>Edit College</h1>
    <nav>
      <ol class="breadcrumb justify-content-center">
        <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
        <li class="breadcrumb-item active"><a href="adminlistcolleges">List colleges</a></li>
        <li class="breadcrumb-item">Edit College</li>
      </ol>
    </nav>
  </div>

  <!-- Remove extra vertical centering div -->
  <section class="section dashboard d-flex justify-content-center align-items-center">
    <div class="col-lg-8 col-md-8 col-sm-10">
      <div class="card shadow p-4">
        <div class="card-body">
          <div class="pt-4 pb-2 text-center">
            <h5 class="card-title fw-bold">Update College Details</h5>
            <p class="small">Enter personal details to update college detail</p>
          </div>

          <form class="row g-3 needs-validation" novalidate action="adminupdatecollege" method="post">

                <div class="col-6">
                  <label for="collegeName" class="form-label">College Name</label>
                  <input type="text" name="collegeName" class="form-control" id="collegeName" value="${college.collegeName}" required>
                </div>

                <div class="col-6">
                  <label for="address" class="form-label">Address</label>
                  <input type="text" name="address" class="form-control" id="address" value="${college.address}" required>
                </div>
                
                <div class="col-6">
                  <label for="city" class="form-label">City</label>
                  <input type="text" name="city" class="form-control" id="city" value="${college.city}" required>
                </div>
                <div class="col-6">
                  <label for="state" class="form-label">State</label>
                  <input type="text" name="state" class="form-control" id="state" value="${college.state}" required>
                </div>
				
				<!-- Hidden ID -->
                <input type="hidden" name="collegeId" value="${college.collegeId}"/>
                
                <div class="text-center">
                  <button class="btn btn-primary px-4" type="submit">Update College</button>
                </div>
               </form>

	        </div>
	      </div>
	    </div>
	  </section>
	</main>


  	<!-- Start Footer -->
	<jsp:include page="AdminFooter.jsp"></jsp:include>
	<!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <jsp:include page="AdminJs.jsp"></jsp:include>

</body>
</html>    