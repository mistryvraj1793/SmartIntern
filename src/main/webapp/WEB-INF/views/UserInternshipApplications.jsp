<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Internship Details</title>

    <jsp:include page="UserCss.jsp" />
    <jsp:include page="AdminCss.jsp" />
</head>

<body>
    <jsp:include page="UserHeader.jsp" />
    <jsp:include page="UserSidebar.jsp" />

    <main>
        <div class="container">
            <!-- Centered Page Title -->
            <div class="pagetitle text-center">
                <h1>Internship Details</h1>
                <nav>
                    <ol class="breadcrumb justify-content-center">
                        <li class="breadcrumb-item"><a href="userdashboard">Home</a></li>
                        <li class="breadcrumb-item active">Internship Details</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <section class="section register d-flex flex-column align-items-center justify-content-center py-4">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-md-10 d-flex flex-column align-items-center justify-content-center">
                            <div class="card mb-3">
                                <div class="card-body">
                                    <div class="pt-4 pb-2">
                                        <h5 class="card-title text-center pb-0 fs-4">${internshipById.title}</h5>
                                        <p class="text-center small">All details about this internship</p>
                                    </div>

                                    <div class="row g-3">
                                        <div class="col-6">
                                            <label class="form-label"><strong>Location:</strong></label>
                                            <p>${internshipById.location}</p>
                                        </div>

                                        <div class="col-6">
                                            <label class="form-label"><strong>Stipend:</strong></label>
                                            <p>${internshipById.stipend}</p>
                                        </div>

                                        <div class="col-12">
                                            <label class="form-label"><strong>Description:</strong></label>
                                            <p>${internshipById.description}</p>
                                        </div>

                                        <div class="col-12">
                                            <label class="form-label"><strong>Requirements:</strong></label>
                                            <p>${internshipById.requirements}</p>
                                        </div>

                                        <div class="col-6">
                                            <label class="form-label"><strong>Duration (Weeks):</strong></label>
                                            <p>${internshipById.durationWeeks}</p>
                                        </div>

                                        <div class="col-6">
                                            <label class="form-label"><strong>Application Deadline:</strong></label>
                                            <p>${internshipById.applicationDeadLine}</p>
                                        </div>
                                    </div>
									<form class="row g-3 needs-validation" action="saveinternshipapplication" method="post" enctype="multipart/form-data" novalidate>
										<!-- Resume Section -->
										<div class="col-6">
										  <label for="resume" class="form-label"><strong>Resume</strong></label>
										  <c:choose>
										    <c:when test="${not empty studentDetail.resumePath}">
										      <a href="${studentDetail.resumePath}" class="btn btn-outline-secondary btn-sm" target="_blank" download>
										        View Resume
										      </a>
										    </c:when>
										    <c:otherwise>
										      <input type="file" name="resume" class="form-control" id="resume" required>
										      <small class="text-danger">Resume not uploaded yet. Please upload now.</small>
										    </c:otherwise>
										  </c:choose>
										</div>
																            
										<!-- Optional Cover Letter -->
									    <div class="col-6">
									        <label for="coverLetter" class="form-label"><strong>Upload Cover Letter (optional)</strong></label>
									        <input type="file" class="form-control" id="coverLetter" name="coverLetter">
									    </div>
																					                
										<input type="hidden" name="userId" value="${user.userId }"/>
						
						                <input type="hidden" name="internshipId" value="${internshipById.internshipId}" />
						                        
										<div class="text-center">
						        			<button type="submit" class="btn btn-primary px-4">Apply</button>
						    			</div>
                    				</form>
                                </div>
                            </div><!-- End Card -->
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </main>

    <jsp:include page="UserFooter.jsp" />

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center">
        <i class="bi bi-arrow-up-short"></i>
    </a>

    <jsp:include page="AdminJs.jsp" />
    <jsp:include page="UserJs.jsp" />
</body>
</html>
