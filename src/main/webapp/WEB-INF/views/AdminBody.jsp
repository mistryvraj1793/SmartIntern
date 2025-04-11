<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Header</title>
</head>
<body>
 <!-- main starts -->
<main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Patient Card -->
            <div class="col-xxl-3 col-md-6">
              <div class="card info-card sales-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Total Interns <%-- <span>| ${currentMonth }</span> --%></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalInterns }</h6>
                     <!-- <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span> --> 

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Patient Card -->
            
            <!-- Appointment Card -->
            <div class="col-xxl-3 col-xl-12">

              <div class="card info-card customers-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Appointments <span>| ${currentMonth}</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-calendar-check"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${thisMonthAppointmentCount }</h6>
                      <!-- <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span> -->

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Appointment Card -->

            <!-- Patient Card -->
            <div class="col-xxl-3 col-md-6">
              <div class="card info-card revenue-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Total Internships</h5> <!--<span>|</span>  --> 

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6> ${totalInternships }</h6>
                      <!-- <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>-->

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Patient Card -->
            
            <!-- Appointment Card -->
            <div class="col-xxl-3 col-xl-12">

              <div class="card info-card customers-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Active Internship <%-- <span>| ${previousmonth}</span> --%></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-calendar-check"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${activeInternships }</h6>
                      <!-- <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span> -->

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Appointment Card -->

            <!-- Patient Analysis -->
            <div class="col-12">
              <div class="card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Patients Analysis <span>/ Year</span></h5>

                  <!-- Bar Chart -->
                   <canvas id="myChart" width="400" height="180"></canvas>

                   <script>
					      var ctx = document.getElementById('myChart').getContext('2d');
					      var myChart = new Chart(ctx, {
					        type: 'bar',
					        data: {
					          labels: ['January', 'February', 'March', 'April', 'May', 'June','July','August','September','October','November','December'],
					          datasets: [{
					            label: 'Patient Data',
					            data: [${monthWisePatients[0]}, ${monthWisePatients[1]}, ${monthWisePatients[2]}, ${monthWisePatients[3]}, ${monthWisePatients[4]}, ${monthWisePatients[5]}, ${monthWisePatients[6]}, ${monthWisePatients[7]}, ${monthWisePatients[8]}, ${monthWisePatients[9]}, ${monthWisePatients[10]}, ${monthWisePatients[11]}],
					            backgroundColor: [
					              'rgba(255, 99, 132, 0.2)',
					              'rgba(54, 162, 235, 0.2)',
					              'rgba(255, 206, 86, 0.2)',
					              'rgba(75, 192, 192, 0.2)',
					              'rgba(153, 102, 255, 0.2)',
					              'rgba(255, 159, 64, 0.2)'
					            ],
					            borderColor: [
					              'rgba(255, 99, 132, 1)',
					              'rgba(54, 162, 235, 1)',
					              'rgba(255, 206, 86, 1)',
					              'rgba(75, 192, 192, 1)',
					              'rgba(153, 102, 255, 1)',
					              'rgba(255, 159, 64, 1)'
					            ],
					            borderWidth: 1
					          }]
					        },
					        options: {
					          scales: {
					            y: {
					              beginAtZero: true
					            }
					          }
					        }
					      });
					    </script>
                  <!-- End Bar Chart -->

                </div>

              </div>
            </div><!-- End Patient Analysis -->
            
            <!-- Appointment Analysis -->
            <div class="col-12">
              <div class="card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Appointments Analysis <span>/ Year</span></h5>

                  <!-- Line Chart -->
                  <canvas id="appointmentChart" width="400" height="180"></canvas>

                    <script>
				      var ctx = document.getElementById('appointmentChart').getContext('2d');
				      
				      var gradientBorder = ctx.createLinearGradient(0, 0, 800, 0);
				      gradientBorder.addColorStop(0, 'rgba(255, 99, 132, 1)');   // Red
				      gradientBorder.addColorStop(0.5, 'rgba(54, 162, 235, 1)'); // Blue
				      gradientBorder.addColorStop(1, 'rgba(75, 192, 192, 1)');   // Green
				
				      var appointmentChart = new Chart(ctx, {
				        type: 'line',
				        data: {
				          labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
				          datasets: [{
				            label: 'Appointments',
				            data: [${monthWiseAppointments[0]}, ${monthWiseAppointments[1]}, ${monthWiseAppointments[2]}, ${monthWiseAppointments[3]}, ${monthWiseAppointments[4]}, ${monthWiseAppointments[5]}, ${monthWiseAppointments[6]}, ${monthWiseAppointments[7]}, ${monthWiseAppointments[8]}, ${monthWiseAppointments[9]}, ${monthWiseAppointments[10]}, ${monthWiseAppointments[11]}], 
				            borderColor: gradientBorder,
				            backgroundColor: 'rgba(75, 192, 192, 0.2)',
				            borderWidth: 2,
				            tension: 0.4, // Smooth line effect
				            pointRadius: 5,
				            pointBackgroundColor: 'white',
				            pointBorderColor: gradientBorder
				          }]
				        },
				        options: {
				          responsive: true,
				          scales: {
				            y: {
				              beginAtZero: true,
				              title: {
				                display: true,
				                text: 'Number of Appointments'
				              }
				            },
				            x: {
				              title: {
				                display: true,
				                text: 'Months'
				              }
				            }
				          }
				        }
				      });
				    </script>
                  <!-- End Line Chart -->

                </div>

              </div>
            </div><!-- End Patient Analysis -->

          </div>
        </div><!-- End Left side columns -->


      </div>
    </section>

  </main>
</body>
</html>