<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Signup</title>
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
                    <h5 class="card-title text-center pb-0 fs-4">Create an Account</h5>
                    <p class="text-center small">Enter your personal details to create account</p>
                  </div>

                  <form class="row g-3 needs-validation" novalidate action="saveuser" method="post">
                    <div class="col-12">
                      <label for="firstName" class="form-label">First Name</label>
                      <input type="text" name="firstName" class="form-control" id="firstName" placeholder="please enter a first name!" required>
                      <div class="invalid-feedback">Please, enter your first name!</div>
                    </div>
                    
                    <div class="col-12">
                      <label for="lastName" class="form-label">Last Name</label>
                      <input type="text" name="lastName" class="form-control" id="lastName" placeholder="please enter a last name!" required>
                      <div class="invalid-feedback">Please, enter your last name!</div>
                    </div>

                    <div class="col-12">
                      <label for="email" class="form-label">Your Email</label>
                      <div class="input-group has-validation">
                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                        <input type="email" name="email" class="form-control" id="email" placeholder="please enter a email!" required>
                        <div class="invalid-feedback">>Please enter a valid Email address!</div>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="Password" class="form-label">Password</label>
                      <input type="password" name="password" class="form-control" id="password" placeholder="please enter a password!" required>
                      <div class="invalid-feedback">Please enter your password!</div>
                    </div>
                    
                    <div class="col-12">
                      <label for="confirmPassword" class="form-label">Confirm Password</label>
                      <input type="password" name="confirmPassword" class="form-control" id="confirmPassword" placeholder="please enter a confirm password!" required>
                      <div class="invalid-feedback">Please enter your confirm password!</div>
                    </div>
                    
                    <div class="col-12">
                      <label for="contactNum" class="form-label">contact Number</label>
                      <input type="tel" name="contactNum" class="form-control" id="contactNum" maxlength="10" pattern="[0-9]{10}" placeholder="please enter a contact number!" required>
                      <div class="invalid-feedback">Please enter your contact number!</div>
                    </div>
                    
                    <fieldset class="row mb-3">
	                  <legend class="col-form-label col-sm-4 pt-0">Gender</legend>
	                  <div class="col-sm-10">
	                    <div class="form-check">
	                      <input class="form-check-input" type="radio" name="gender" id="gender" value="male" checked="">
	                      <label class="form-check-label" for="gender">
	                        Male
	                      </label>
	                    </div>
	                    <div class="form-check">
	                      <input class="form-check-input" type="radio" name="gender" id="gender" value="female">
	                      <label class="form-check-label" for="gender">
	                        Female
	                      </label>
	                    </div>
	                    <div class="form-check disabled">
	                      <input class="form-check-input" type="radio" name="gender" id="gender" value="other">
	                      <label class="form-check-label" for="gender">
	                        Other
	                      </label>
	                    </div>
	                  </div>
	                </fieldset>

                    <div class="col-12">
                      <label for="bornYear" class="form-label">Born Year</label>
                      <input type="number" name="bornYear" class="form-control" id="bornYear" placeholder="please enter a born year!" required>
                      <div class="invalid-feedback">Please enter your born year!</div>
                    </div>

                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" name="terms" type="checkbox" value="" id="acceptTerms" required>
                        <label class="form-check-label" for="acceptTerms">I agree and accept the <a href="#">terms and conditions</a></label>
                        <div class="invalid-feedback">You must agree before submitting.</div>
                      </div>
                    </div>
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit" value="signup">Create Account</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Already have an account? <a href="login">Log in</a></p>
                    </div>
                  </form>

                </div>
              </div>

              <div class="credits">
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