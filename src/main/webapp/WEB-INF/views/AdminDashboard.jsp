<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard</title>
    <!-- plugins:css -->
	<link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
	<link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css"> 
	<!-- endinject -->
	<!-- Plugin css for this page -->
	<link rel="stylesheet" href="assets/vendors/jvectormap/jquery-jvectormap.css"> 
	<link rel="stylesheet" href="assets/vendors/flag-icon-css/css/flag-icon.min.css"> 
	<link rel="stylesheet" href="assets/vendors/owl-carousel-2/owl.carousel.min.css"> 
	<link rel="stylesheet" href="assets/vendors/owl-carousel-2/owl.theme.default.min.css">
	<!-- End plugin css for this page -->
	<!-- inject:css -->
	<!-- endinject -->
    <!-- Layout styles -->
    	<link rel="stylesheet" href="assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="assets/images/favicon.png" />
</head>
<body>
<div class="container-scroller">
    <!-- Header Start -->
    <jsp:include page="AdminHeader.jsp"></jsp:include>
    <!-- Header End -->

    <!-- SideBar Start -->
    <jsp:include page="AdminSideBar.jsp"></jsp:include>
    <!-- SideBar End -->

    <div class="container-fluid page-body-wrapper">
        <!-- Body Start -->
        <jsp:include page="AdminBody.jsp"></jsp:include>
        <!-- Body End -->
        
    </div> <!-- page-body-wrapper ends -->
    
</div> <!-- container-scroller ends -->

<!-- JS Starts -->
<jsp:include page="AdminJs.jsp"></jsp:include>
<!-- JS Ends -->

</body>
</html>