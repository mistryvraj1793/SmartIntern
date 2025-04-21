<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Edit / Technology</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <jsp:include page="AdminCss.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<jsp:include page="AdminSidebar.jsp"></jsp:include>

  <main id="main" class="main d-flex flex-column min-vh-100">

    <div class="pagetitle text-center">
        <h1>Edit Technology</h1>
        <nav>
            <ol class="breadcrumb justify-content-center">
                <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
                <li class="breadcrumb-item"><a href="adminlisttechnologies">List Technology</a></li>
                <li class="breadcrumb-item active">Edit Technology</li>
            </ol>
        </nav>
    </div>

    <section class="section flex-grow-1 d-flex justify-content-center align-items-start">
        <div class="col-lg-8 col-md-8 col-sm-10">
            <div class="card shadow p-4">
                <div class="card-body">
                    <div class="pt-4 pb-2 text-center">
                        <h5 class="card-title fw-bold">Update Technology Details</h5>
                        <p class="small">Modify details and save changes</p>
                    </div>

                    <form class="row g-3 needs-validation" action="adminupdatetechnology" method="post" novalidate>
                        <div class="col-6">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" name="name" class="form-control" id="name" value="${editTechnology.name}" required>
                        </div>

                        <div class="col-6">
                            <label for="tools" class="form-label">Tools</label>
                            <input type="text" name="tools" class="form-control" id="tools" value="${editTechnology.tools}" required>
                        </div>

                        <div class="col-6">
                            <label for="frontend" class="form-label">Front End</label>
                            <input type="text" name="frontend" class="form-control" id="frontend" value="${editTechnology.frontend}" required>
                        </div>

                        <div class="col-6">
                            <label for="backend" class="form-label">Back End</label>
                            <input type="text" name="backend" class="form-control" id="backend" value="${editTechnology.backend}" required>
                        </div>

                        <div class="col-6">
                            <label for="language" class="form-label">Language</label>
                            <input type="text" name="language" class="form-control" id="language" value="${editTechnology.language}" required>
                        </div>

                       <div class="col-6">
                      <label class="form-label">Company Name</label>
                      <select class="form-select" name="companyId" required>
                        <option disabled <c:if test="${empty editTechnology.companyId}">selected</c:if>>--Select Company--</option>
                        <c:forEach items="${allCompanies}" var="comp">
                          <option value="${comp.companyId}" <c:if test="${comp.companyId eq editTechnology.companyId}">selected</c:if>>${comp.companyName}</option>
                        </c:forEach>
                      </select>
                    </div>

                        <div class="col-12">
                            <label for="description" class="form-label">Description</label>
                            <textarea class="form-control" name="description" style="height: 80px" required>${editTechnology.description}</textarea>
                        </div>
	
						<input type="hidden" name="technologyId" value="${editTechnology.technologyId}"/>
	
                        <div class="text-center">
                            <button class="btn btn-primary px-4" type="submit">Update Technology</button>
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
</body>
</html>