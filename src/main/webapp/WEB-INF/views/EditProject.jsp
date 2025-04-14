<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Update / Project</title>
  <jsp:include page="AdminCss.jsp"></jsp:include>
</head>

<body>
  <jsp:include page="AdminHeader.jsp"></jsp:include>
  <jsp:include page="AdminSidebar.jsp"></jsp:include>

  <main id="main" class="main">
    <div class="pagetitle">
      <h1>Update Project</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item"><a href="adminlistprojects">List Projects</a></li>
          <li class="breadcrumb-item active">Update Project</li>
        </ol>
      </nav>
    </div>

    <section class="section dashboard">
      <div class="row" style="min-height: 500px;">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-body">
                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Update a Project</h5>
                    <p class="text-center small">Update your project details below</p>
                  </div>

                  <form class="row g-3 needs-validation" novalidate action="adminupdateproject" method="post">
                    <div class="col-6">
                      <label for="title" class="form-label">Title</label>
                      <input type="text" name="title" class="form-control" id="title" value="${editProjectDetail.title}" required>
                    </div>

                    <div class="col-6">
                      <label for="description" class="form-label">Description</label>
                      <textarea class="form-control" name="description" style="height: 80px" required>${editProjectDetail.description}</textarea>
                    </div>

                    <div class="col-6">
                      <label class="form-label">Company Name</label>
                      <select class="form-select" name="companyId" required>
                        <option disabled <c:if test="${empty editProjectDetail.companyId}">selected</c:if>>--Select Company--</option>
                        <c:forEach items="${allCompanies}" var="comp">
                          <option value="${comp.companyId}" <c:if test="${comp.companyId eq editProjectDetail.companyId}">selected</c:if>>${comp.companyName}</option>
                        </c:forEach>
                      </select>
                    </div>

                    <div class="col-6">
                      <label class="form-label">Status</label>
                      <select class="form-select" name="active" required>
                        <option disabled <c:if test="${empty editProjectDetail.active}">selected</c:if>>--Select Status--</option>
                        <option value="true" <c:if test="${editProjectDetail.active eq true}">selected</c:if>>Active</option>
                        <option value="false" <c:if test="${editProjectDetail.active eq false}">selected</c:if>>Inactive</option>
                      </select>
                    </div>

                    <input type="hidden" name="projectId" value="${editProjectDetail.projectId}" />

                    <div class="text-center">
                      <button class="btn btn-primary px-4" type="submit" value="Update Project">Update Project</button>
                    </div>
                  </form>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>

  <jsp:include page="AdminFooter.jsp"></jsp:include>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
  <jsp:include page="AdminJs.jsp"></jsp:include>

</body>
</html>
