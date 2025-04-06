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

  <title>Update Profile</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Template Main CSS File -->
  <jsp:include page="UserCss.jsp"></jsp:include>
  <jsp:include page="AdminCss.jsp"></jsp:include>

</head>

<body>
	<jsp:include page="UserHeader.jsp"></jsp:include>
	
	<jsp:include page="UserSidebar.jsp"></jsp:include>
  <main>
    <div class="container">
		<!-- Centered Page Title (Header) -->
    <div class="pagetitle text-center">
        <h1>Update Profile</h1>
        <nav>
            <ol class="breadcrumb justify-content-center">
                <li class="breadcrumb-item"><a href="userdashboard">Home</a></li>
                <li class="breadcrumb-item active">Update Profile</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->
      <section class="section register min-vh-50 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-6 col-md-6 d-flex flex-column align-items-center justify-content-center">
              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Update an Profile</h5>
                    <p class="text-center small">Enter your details to update profile</p>
                  </div>
					<form class="row g-3 needs-validation" action="saveuserstudentdetail" method="post" enctype="multipart/form-data" novalidate>
                        <div class="col-6">
	                      <label for="stuCity" class="form-label">City</label>
	                      <input type="text" name="stuCity" class="form-control" id="stuCity" required>
	                      <div class="invalid-feedback">Please, enter your city!</div>
	                    </div>
	                    
	                    <div class="col-6">
	                      <label for="stuState" class="form-label">State</label>
	                      <input type="text" name="stuState" class="form-control" id="stuState" required>
	                      <div class="invalid-feedback">Please, enter your state!</div>
	                    </div>
	
	                    <div class="col-6">
	                   		<label for="profilePic" class="form-label">Profile Pic</label>
	                   		<input type="file" name="profilePic" class="form-control" id="profilePic" required>
	                    </div>
	                    
	                    <div class="col-6">
	                   		<label for="resume" class="form-label">Resume</label>
	                   		<input type="file" name="resume" class="form-control" id="resume" required>
	                    </div>

                        <div class="col-6">
                            <label for="degree" class="form-label">Degree</label>
                            <input type="text" name="degree" class="form-control" id="degree" required>
                        </div>

                        <div class="col-6">
                            <label for="semester" class="form-label">Semester</label>
                            <input type="text" name="semester" class="form-control" id="semester" required>
                        </div>

                        <div class="col-6">
	                        <label class="form-label">T-Shirt Size</label>
	                        <select class="form-select" name="tshirtSize" required>
	                            <option disabled selected>--Select Size--</option>
								<option value="small">Small</option>
								<option value="large">Large</option>
								<option value="xl">XL</option>
								<option value="xxl">XXL</option>
								<option value="xxxl">XXXL</option>
	                        </select>
	                    </div>
	                    
	                    <div class="col-6">
	                        <label class="form-label">College Name</label>
	                        <select class="form-select" name="collegeId" required>
	                            <option disabled selected>--Select College--</option>
								<c:forEach items="${allColleges }" var="college">
									<option value="${college.collegeId }">${college.collegeName }</option>
								</c:forEach>
	                        </select>
	                    </div>

						<input type="hidden" name="${userId }" value="${user.userId }"/>

                        <div class="col-12">
                            <button class="btn btn-primary w-100" type="submit" value="Update Details">Update Details</button>
                        </div>
                    </form>
                  
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