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

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Add Company</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item active"><a href="listcompanies">List Companies</a></li>
          <li class="breadcrumb-item">Add Company</li>
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
					                    <h5 class="card-title text-center pb-0 fs-4">Create an Company</h5>
					                    <p class="text-center small">Enter your personal details to create company</p>
					                  </div>
					
					                  <form class="row g-3 needs-validation" novalidate action="savecompany" method="post">
					                    <div class="col-6">
					                      <label for="companyName" class="form-label">Company Name</label>
					                      <input type="text" name="companyName" class="form-control" id="companyName" required>
					                      <div class="invalid-feedback">Please, enter your company name!</div>
					                    </div>
					                    
					                    <div class="col-6">
					                      <label for="address" class="form-label">Address</label>
					                      <input type="text" name="address" class="form-control" id="address" required>
					                      <div class="invalid-feedback">Please, enter your address!</div>
					                    </div>
					
					                    <div class="col-6">
					                      <label for="url" class="form-label">Url</label>
					                      <input type="file" name="url" class="form-control" id="url" required>
					                      <div class="invalid-feedback">Please, enter your url!</div>
					                    </div>
					                    
					                    <div class="col-6">
					                      <label for="personName" class="form-label">Person Name</label>
					                      <input type="text" name="personName" class="form-control" id="personName" required>
					                      <div class="invalid-feedback">Please, enter your person name!</div>
					                    </div>
					                    
					                    <div class="col-6">
					                      <label for="externalGuide" class="form-label">External Guide</label>
					                      <input type="text" name="externalGuide" class="form-control" id="externalGuide" required>
					                      <div class="invalid-feedback">Please, enter your external guide!</div>
					                    </div>
					                    
					                    <div class="col-6">
					                      <label for="externalGuideContactNum" class="form-label">External Guide Contact Number</label>
					                      <input type="tel" name="externalGuideContactNum" class="form-control" id="externalGuideContactNum" maxlength="10" pattern="[0-9]{10}" required>
					                      <div class="invalid-feedback">Please, enter your external guide contact number!</div>
					                    </div>
						                
						                <div class="col-6">
					                      <label for="companyProfileUrl" class="form-label">Company Profile Url</label>
					                      <input type="file" name="companyProfileUrl" class="form-control" id="companyProfileUrl" required>
					                      <div class="invalid-feedback">Please, enter your company profile url!</div>
					                    </div>
					                    
					                    <div class="col-6">
					                      <label for="anyOtherInfoUrl" class="form-label">Any Other Info Url</label>
					                      <input type="file" name="anyOtherInfoUrl" class="form-control" id="anyOtherInfoUrl" required>
					                      <div class="invalid-feedback">Please, enter your any other info url!</div>
					                    </div> 
						                
					                    <div class="col-12">
					                      <button class="btn btn-primary w-100" type="submit" value="Save Company Detail">Add Company</button>
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


	<%-- <form action="savecompany" method="post">
		CompanyName:<input type="text" name="companyName"/>
		<br></br>
		Address:<input type="text" name="address"/>
		<br></br>
		Url:<input type="file" name="url"/>
		<br></br>
		PersonName:<input type="text" name="personName"/>
		<br></br>
		ExternalGuide:<input type="text" name="externalGuide"/>
		<br></br>
		ExternalGuideContactNum:<input type="number" name="externalGuideContactNum"/>
		<br></br>
		CompanyProfileUrl:<input type="file" name="companyProfileUrl"/>
		<br></br>
		AnyOtherInfoUrl:<input type="file" name="anyOtherInfoUrl"/>
		<br></br>
		User Name: <select name="userId">
						<option>Select User</option>
						<c:forEach items="${allUsers }" var="user">
							<option value="${user.userId }">${user.email }</option>
						</c:forEach>
						
					</select>
		<br><br>
		<input type="submit" value="Save Company Detail"/><br>
	</form> --%>
