<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Edit Internship Project</title>
  <jsp:include page="AdminCss.jsp"></jsp:include>
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>

<body>

<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminSidebar.jsp"></jsp:include>

<main id="main" class="main d-flex flex-column min-vh-100">

  <div class="pagetitle text-center">
    <h1>Edit Internship Project</h1>
    <nav>
      <ol class="breadcrumb justify-content-center">
        <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
        <li class="breadcrumb-item"><a href="adminlistinternshipprojects">List Internship Projects</a></li>
        <li class="breadcrumb-item active">Edit Internship Project</li>
      </ol>
    </nav>
  </div>

  <section class="section flex-grow-1 d-flex justify-content-center align-items-start">
    <div class="col-lg-6 col-md-8 col-sm-10">
      <div class="card shadow p-4">
        <div class="card-body">
          <div class="pt-4 pb-2 text-center">
            <h5 class="card-title fw-bold">Update Internship Project</h5>
          </div>

          <form class="row g-3" method="post" action="updateinternshipproject">
            
            <input type="hidden" name="internshipProjectId" value="${internshipProject.internshipProjectId}" />

	
            <!-- Internship Dropdown -->
            <div class="col-6">
                      <label class="form-label">Select Internship</label>
                      <select class="form-select" name="internshipId" required>
                        <option disabled <c:if test="${empty editInternshipProject.internshipId}">selected</c:if>>--Select Internship--</option>
                        <c:forEach items="${allInternships}" var="intProj">
                          <option value="${intProj.internshipId}" <c:if test="${intProj.internshipId eq editInternshipProject.internshipId}">selected</c:if>>${intProj.title}</option>
                        </c:forEach>
                      </select>
                    </div>
            
            <!-- Company Dropdown -->
            <div class="col-6">
	                            <label for="company" class="form-label">Company Name</label>
	                            
	                            <select class="form-select" name="companyId" id="company" onchange="getCompanyProject">
	                            	<option value="-1">Select Company</option>
	                                <c:forEach items="${allCompanies}" var="company">
	                                    <option   value="${company.companyId}">${company.companyName}</option>
	                                </c:forEach>
	                            
	                            </select>
	                        </div>


            <!-- Project Dropdown -->
            <div class="col-6">
	                            <label for="project" class="form-label">Project Title</label>
	                            
	                            <select class="form-select" name="projectId" id="project">
	                                <option value="-1">Select Project</option>
	                                
	                            </select>
	                            
	                        </div>

            <div class="col-12">
              <button class="btn btn-primary w-100" type="submit">Update Internship Project</button>
            </div>

          </form>

        </div>
      </div>
    </div>
  </section>

</main>

<jsp:include page="AdminFooter.jsp"></jsp:include>

<a href="#" class="back-to-top d-flex align-items-center justify-content-center">
  <i class="bi bi-arrow-up-short"></i>
</a>

<jsp:include page="AdminJs.jsp"></jsp:include>

<script type="text/javascript">
		function getCompanyProject() {
			console.log("Company Change");
		    let companyId = document.getElementById("company").value;
		    console.log(companyId);
		    
		    //url -> json REST
		    
		 	// Assign handlers immediately after making the request, and remember the jqxhr object for this request/
		 	// Fetch Projects
		    $.get( "getallprojectbycompanyid/"+companyId, function() {
			})
			  .done(function(data) {
				  console.log(data);
				  
				  //fill the project
				   $('#project').empty().append('<option selected="selected" value="-1">Select Project</option>')
				  
				  for (var i = 0; i < data.length; i++) {
      			  	$('#project').append('<option value="' + data[i].projectId + '">' + data[i].title + '</option>');
   				 }
				  
			  })
			  .fail(function() {
			    alert( "error" );
			  })
			  .always(function() {
			    
			  });
		    
		    
		}
	</script>
 
</body>
</html>
