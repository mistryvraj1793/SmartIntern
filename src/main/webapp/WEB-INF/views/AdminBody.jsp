<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Header</title>

<!-- for chart -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

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

            <!-- Total Interns Card -->
            <div class="col-xxl-3 col-md-6">
              <div class="card info-card sales-card">
              	<div class="card-body">
                  <h5 class="card-title">Interns <span>| OverAll</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi-people-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${totalInterns }</h6>
                     <!-- <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span> --> 

                    </div>
                  </div>
                </div>

              </div>
            </div>
            <!-- End Total Interns Card -->
            
            <!-- Applications Open Card -->
            <div class="col-xxl-3 col-xl-12">

              <div class="card info-card customers-card">
                <div class="card-body">
                  <h5 class="card-title">Applications <span>| Accepted</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi-check-circle-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${acceptedInternApplication }</h6>
                      <!-- <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span> -->

                    </div>
                  </div>

                </div>
              </div>

            </div>
            <!-- End Applications Open Card -->
			
			<!-- Interns thisMonth Card -->
            <div class="col-xxl-3 col-xl-12">

              <div class="card info-card customers-card">
                <div class="card-body">
                  <h5 class="card-title">Interns <span>| ${currentMonth }</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi-person-check-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${thisMonthInternsCount }</h6>
                      <!-- <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span> -->

                    </div>
                  </div>

                </div>
              </div>

            </div>
            <!-- End Interns thisMonth Card -->
			
            <!-- Start Internships Total Card -->
            <div class="col-xxl-3 col-md-6">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title">Internships<span>| Total </span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi-briefcase-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6> ${totalInternships }</h6>
                      <!-- <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>-->

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Internships Total Card -->
            
            <!-- Active Internships Card -->
            <div class="col-xxl-3 col-xl-12">

              <div class="card info-card customers-card">

                <!-- <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div> -->

                <div class="card-body">
                  <h5 class="card-title">Internship <span>| Active </span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi-calendar-check-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6>${activeInternships }</h6>
                      <!-- <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span> -->

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Active Internship Card -->

			<!-- Start Internships Pending Card -->
            <div class="col-xxl-3 col-md-6">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title">Internships<span>| Pending </span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-hourglass-split"></i>
                    </div>
                    <div class="ps-3">
                      <h6> ${pendingInternApplications }</h6>
                      <!-- <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>-->
                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Internships Pending Card -->
            
            <!-- Start Total Companies Card -->
            <div class="col-xxl-3 col-md-6">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title">Companies<span>| Total </span></h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi bi-building"></i>
                    </div>
                    <div class="ps-3">
                      <h6> ${totalCompanies }</h6>
                      <!-- <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>-->
                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Internships Pending Card -->
            
            <!-- Start Total InternProjects Card -->
            <div class="col-xxl-3 col-md-6">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title">InternshipProjects <span>| Total </span></h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-folder-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6> ${totalInternProjects }</h6>
                      <!-- <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>-->
                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Internships InternProjects Card -->

            <!-- Intern Analysis -->
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
                  <h5 class="card-title">Intern Analysis <span>/ Year</span></h5>

                  <!-- Bar Chart -->
                   <canvas id="myChart" width="400" height="180"></canvas>

                   <script>
					      var ctx = document.getElementById('myChart').getContext('2d');
					      var myChart = new Chart(ctx, {
					        type: 'bar',
					        data: {
					          labels: ['January', 'February', 'March', 'April', 'May', 'June','July','August','September','October','November','December'],
					          datasets: [{
					            label: 'Intern Data',
					            data: [${monthWiseIntern[0]}, ${monthWiseIntern[1]}, ${monthWiseIntern[2]}, ${monthWiseIntern[3]}, ${monthWiseIntern[4]}, ${monthWiseIntern[5]}, ${monthWiseIntern[6]}, ${monthWiseIntern[7]}, ${monthWiseIntern[8]}, ${monthWiseIntern[9]}, ${monthWiseIntern[10]}, ${monthWiseIntern[11]}],
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
            </div>
           <!--  End Intern Analysis -->
            
            
           <!-- Intern Analysis -->
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
      <h5 class="card-title">Intern Analysis <span>/ Year</span></h5>

      <!-- Line Chart -->
      <canvas id="internLineChart" width="400" height="180"></canvas>

      <script>
        var ctx = document.getElementById('internLineChart').getContext('2d');
        var internLineChart = new Chart(ctx, {
          type: 'line',
          data: {
            labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
            datasets: [{
              label: 'Intern Data',
              data: [${monthWiseIntern[0]}, ${monthWiseIntern[1]}, ${monthWiseIntern[2]}, ${monthWiseIntern[3]}, ${monthWiseIntern[4]}, ${monthWiseIntern[5]}, ${monthWiseIntern[6]}, ${monthWiseIntern[7]}, ${monthWiseIntern[8]}, ${monthWiseIntern[9]}, ${monthWiseIntern[10]}, ${monthWiseIntern[11]}],
              fill: false,
              borderColor: 'rgba(75, 192, 192, 1)',
              backgroundColor: 'rgba(75, 192, 192, 0.2)',
              tension: 0.3,
              pointBackgroundColor: 'rgba(75, 192, 192, 1)',
              pointBorderColor: '#fff',
              pointHoverBackgroundColor: '#fff',
              pointHoverBorderColor: 'rgba(75, 192, 192, 1)'
            }]
          },
          options: {
            scales: {
              y: {
                beginAtZero: true
              }
            },
            plugins: {
              legend: {
                display: true,
                position: 'top'
              }
            }
          }
        });
      </script>
      <!-- End Line Chart -->

    </div>

  </div>
</div>
<!--  End Intern Analysis -->
           
            <!-- Appointment Analysis -->
            <!-- <div class="col-12">
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

                  Line Chart
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
                  End Line Chart

                </div>

              </div>
            </div>End Patient Analysis -->

          </div>
        </div><!-- End Left side columns -->


      </div>
    </section>

  </main>
</body>
</html>