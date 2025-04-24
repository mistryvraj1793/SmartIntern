<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SmartIntern | Edit Company</title>
  <jsp:include page="AdminCss.jsp"></jsp:include>
</head>

<body>

  <jsp:include page="AdminHeader.jsp"></jsp:include>
  <jsp:include page="AdminSidebar.jsp"></jsp:include>

  <main id="main" class="main d-flex flex-column min-vh-100">
      <div class="pagetitle text-center">
        <h1>Edit Company</h1>
        <nav>
          <ol class="breadcrumb justify-content-center">
            <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
            <li class="breadcrumb-item"><a href="adminlistcompanies">List Companies</a></li>
            <li class="breadcrumb-item active">Edit Company</li>
          </ol>
        </nav>
      </div>

      <section class="section flex-grow-1 d-flex justify-content-center align-items-start">
        <div class="col-lg-8 col-md-8 col-sm-10">
          <div class="card shadow p-4">
            <div class="card-body">
              <div class="pt-4 pb-2 text-center">
                <h5 class="card-title fw-bold">Update Company Details</h5>
              </div>

              <form class="row g-3 needs-validation" novalidate action="adminupdatecompany" method="post">

                <div class="col-6">
                  <label class="form-label">Company Name</label>
                  <input type="text" name="companyName" class="form-control" value="${company.companyName}" required>
                </div>

                <div class="col-6">
                  <label class="form-label">Address</label>
                  <input type="text" name="address" class="form-control" id="address" value="${company.address}" required>
                </div>

                <div class="col-6">
                  <label class="form-label">Company Website URL</label>
                  <input type="text" name="url" class="form-control" value="${company.url}">
                </div>

                <div class="col-6">
                  <label class="form-label">Contact Person</label>
                  <input type="text" name="personName" class="form-control" value="${company.personName}">
                </div>

                <div class="col-6">
                  <label class="form-label">External Guide Name</label>
                  <input type="text" name="externalGuide" class="form-control" value="${company.externalGuide}">
                </div>

                <div class="col-6">
                  <label class="form-label">External Guide Contact Number</label>
                  <input type="tel" name="externalGuideContactNum" class="form-control" maxlength="10" pattern="[0-9]{10}" value="${company.externalGuideContactNum}">
                </div>

                <div class="col-6">
                  <label class="form-label">Company Profile URL</label>
                  <input type="text" name="companyProfileUrl" class="form-control" value="${company.companyProfileUrl}">
                </div>

                <div class="col-6">
                  <label class="form-label">Any Other Info URL</label>
                  <input type="text" name="anyOtherInfoUrl" class="form-control" value="${company.anyOtherInfoUrl}">
                </div>
                
                <div class="col-4">
										    <label class="form-label">Status</label>
										    <select class="form-select" name="active" required>
										        <option disabled <c:if test="${empty company.active}">selected</c:if>>--Select Status--</option>
										        <option value=true <c:if test="${company.active eq '1'}">selected</c:if>>Open</option>
										        <option value=false <c:if test="${company.active eq '2'}">selected</c:if>>Closed</option>
										    </select>
										</div>
				
				<!-- Hidden companyId -->
                <input type="hidden" name="companyId" value="${company.companyId}"/>
				<input type="hidden" name="userId" value="${user.userId}"/>
				
                <div class="text-center">
                  <button class="btn btn-primary px-4" type="submit">Update Company</button>
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
