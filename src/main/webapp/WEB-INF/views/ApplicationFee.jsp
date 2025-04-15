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
			                            <h5 class="card-title text-center pb-0 fs-4">Make Payment</h5>
			                            <p class="text-center small">Securely pay your internship fees</p>
			                        </div>
			
			                        <form class="row g-3 needs-validation" action="applicationpayment" method="post" novalidate>
			                            
			                            <div class="col-6">
			                                <label for="ccNum" class="form-label"><strong>Card Number</strong></label>
			                                <input type="text" class="form-control" id="ccNum" name="ccNum" maxlength="16" placeholder="Enter credit card number" required>
			                                <div class="invalid-feedback">Please enter your card number.</div>
			                            </div>
			
			                            <div class="col-6">
			                                <label for="expDate" class="form-label"><strong>Expiry Date</strong></label>
			                                <input type="text" class="form-control" id="expDate" name="expDate" required>
			                                <div class="invalid-feedback">Please select expiry date.</div>
			                            </div>
			
			                            <div class="col-12">
			                                <label for="amount" class="form-label"><strong>Amount (₹)</strong></label>
			                                <input type="number" class="form-control" id="amount" name="amount" value="${amount}" readonly>
			                            </div>
			
			                            <input type="hidden" name="userId" value="${user.userId}" />
			                            <input type="hidden" name="internshipId" value="${internshipById.internshipId}" />
			
			                            <div class="text-center">
			                                <button type="submit" class="btn btn-success px-4">Pay Now</button>
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
