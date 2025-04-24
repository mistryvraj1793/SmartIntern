<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SmartIntern | Update Password</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Template Main CSS File -->
  <jsp:include page="AdminCss.jsp"></jsp:include>

</head>

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="#" class="logo d-flex align-items-center w-auto">
                  <img src="assets/img/logo.png" alt="">
                  <span class="d-none d-lg-block">SmartIntern</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Change Your Password</h5>
                    <p class="text-center small">Enter your password & confirm password to change password</p>
                    <!-- Display an Error Message when email or otp is invalid -->
                    <span class="text-danger">
    					${error}
					</span>
					<span style"color:green;">
						${msg }
					</span>
					
                  </div>

                  <form class="row g-3 needs-validation" action="updatepassword" method="post" novalidate >
					<div class="col-12">
                      <label for="email" class="form-label">Email</label>
                      <input type="email" name="email" class="form-control" id="email" placeholder="please enter a email" required>
                      <div class="invalid-feedback">Please enter your email!</div>
                    </div>
                    
                    <div class="col-12">
					  <label for="otp" class="form-label">OTP</label>
						  <input type="text" name="otp" class="form-control" id="otp" maxlength="6" pattern="\d{6}" title="Please enter a 6-digit OTP" placeholder="please enter a otp!" required>
					  <div class="invalid-feedback">Please enter your 6-digit OTP!</div>
					</div>

					
                    <div class="col-12">
                      <label for="password" class="form-label">NewPassword</label>
                      <input type="password" name="password" class="form-control" id="password" placeholder="please enter a password!" required>
                      <div class="invalid-feedback">Please enter your new password!</div>
                    </div>
	
					<div class="col-12">
                      <label for="confirmPassword" class="form-label">Confirm Password</label>
                      <input type="password" name="confirmPassword" class="form-control" id="confirmPassword" placeholder="please enter a confirm password!" required>
                      <div class="invalid-feedback">Please enter your confirm password!</div>
                    </div>
                    
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit" value="updatePassword">Update Password</button>
                    </div>
                  </form>

                </div>
              </div>

              <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                Designed by <a href="#"><b>SmartIntern Developer</b></a>
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <jsp:include page="AdminJs.jsp"></jsp:include>

</body>

</html>