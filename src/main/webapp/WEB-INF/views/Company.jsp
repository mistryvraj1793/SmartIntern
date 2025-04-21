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

  <title>Add / Company</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Template Main CSS File -->
  <jsp:include page="AdminCss.jsp"></jsp:include>
  
</head>

<body>
	<!-- Start Header -->
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<!-- End Header -->

	<!-- Start Sidebar-->
	<jsp:include page="AdminSidebar.jsp"></jsp:include>
	<!-- End Sidebar-->

  <main id="main" class="main d-flex flex-column min-vh-100">

    <!-- Centered Page Title (Header) -->
    <div class="pagetitle text-center">
        <h1>Add Company</h1>
        <nav>
            <ol class="breadcrumb justify-content-center">
                <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
                <li class="breadcrumb-item"><a href="adminlistcompanies">List Companies</a></li>
                <li class="breadcrumb-item active">Add Company</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <!-- Form Section -->
    <section class="section flex-grow-1 d-flex justify-content-center align-items-start">
        <div class="col-lg-8 col-md-8 col-sm-10"> <!-- Responsive Width -->
            <div class="card shadow p-4">
                <div class="card-body">
                    <div class="pt-4 pb-2 text-center">
                        <h5 class="card-title fw-bold">Create a Company</h5>
                        <p class="small">Enter your company details to register</p>
                    </div>

                    <form class="row g-3 needs-validation" action="adminsavecompany" method="post" novalidate>
                        <div class="col-6">
                            <label for="companyName" class="form-label">Company Name</label>
                            <input type="text" name="companyName" class="form-control" id="companyName" required>
                        </div>

                        <div class="col-6">
                            <label for="address" class="form-label">Address</label>
                            <input type="text" name="address" class="form-control" id="address" required>
                        </div>

                        <div class="col-6">
                            <label for="url" class="form-label">Company url</label>
                            <input type="url" name="url" class="form-control" id="url" required>
                        </div>

                        <div class="col-6">
                            <label for="personName" class="form-label">Person Name</label>
                            <input type="text" name="personName" class="form-control" id="personName" required>
                        </div>

                        <div class="col-6">
                            <label for="externalGuide" class="form-label">External Guide</label>
                            <input type="text" name="externalGuide" class="form-control" id="externalGuide" required>
                        </div>

                        <div class="col-6">
                            <label for="externalGuideContactNum" class="form-label">External Guide Contact No.</label>
                            <input type="tel" name="externalGuideContactNum" class="form-control" id="externalGuideContactNum" maxlength="10" pattern="[0-9]{10}" required>
                        </div>

                        <div class="col-6">
                            <label for="companyProfileurl" class="form-label">Company Profile</label>
                            <input type="url" name="companyProfileurl" class="form-control" id="companyProfileurl" required>
                        </div>

                        <div class="col-6">
                            <label for="anyOtherInfourl" class="form-label">Additional Information</label>
                            <input type="url" name="anyOtherInfourl" class="form-control" id="anyOtherInfourl" required>
                        </div>
						
						<input type="hidden" name="userId" value="${user.userId }"/>
							
                        <div class="col-12">
                            <button class="btn btn-primary w-100" type="submit" value="Save Company">Add Company</button>
                        </div>
                    </form>

                </div>
            </div>
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