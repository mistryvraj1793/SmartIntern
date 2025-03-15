<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard</title>
    
    <!-- Layout styles -->
    <jsp:include page="AdminCss.jsp"></jsp:include>
    <!-- End layout styles -->
    <link rel="shortcut icon" href="assets/images/favicon.png" />
  </head>
  <body>
    <div class="container-scroller">
      
	<!-- SideBar Start -->
		<jsp:include page="AdminSideBar.jsp"></jsp:include>
	<!-- SideBar End -->
      <div class="container-fluid page-body-wrapper">
        
            
	 <!--Header Start-->
		<jsp:include page="AdminHeader.jsp"></jsp:include>
	 <!-- Header End -->  
 
    
       <!-- Body Start -->
			<jsp:include page="AdminBody.jsp"></jsp:include>
       <!-- Body End -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <jsp:include page="AdminJs.jsp"></jsp:include>
  </body>
</html>