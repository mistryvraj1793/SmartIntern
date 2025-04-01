<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HrMentor Sidebar</title>
</head>
<body>
<!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="admindashboard">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#users-nav" data-bs-toggle="collapse" href="#" aria-expanded="false">
          <i class="bi bi-menu-button-wide"></i><span>Users</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="users-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="listusers">
              <i class="bi bi-circle"></i><span>List Users</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#internships-nav" data-bs-toggle="collapse" href="#" aria-expanded="false">
          <i class="bi bi-menu-button-wide"></i><span>Internships</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="internships-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="internship">
              <i class="bi bi-circle"></i><span>Add Internship</span>
            </a>
          </li>
        </ul>
        <ul id="internships-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="listinternships">
              <i class="bi bi-circle"></i><span>List Internships</span>
            </a>
          </li>
        </ul>
        <ul id="internships-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="listinternshipapplications">
              <i class="bi bi-circle"></i><span>List Internships Applications</span>
            </a>
          </li>
        </ul>
        <ul id="internships-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="listinternshipprojects">
              <i class="bi bi-circle"></i><span>List Internship Projects</span>
            </a>
          </li>
        </ul>
        <ul id="internships-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="listinternshiptechnologies">
              <i class="bi bi-circle"></i><span>List Internship Technologies</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#projects-nav" data-bs-toggle="collapse" href="#" aria-expanded="false">
          <i class="bi bi-menu-button-wide"></i><span>Projects</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="projects-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="#">
              <i class="bi bi-circle"></i><span>Add Project</span>
            </a>
          </li>
        </ul>
        <ul id="projects-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="listprojects">
              <i class="bi bi-circle"></i><span>List Projects</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#colleges-nav" data-bs-toggle="collapse" href="#" aria-expanded="false">
          <i class="bi bi-menu-button-wide"></i><span>Colleges</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="colleges-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="listcolleges">
              <i class="bi bi-circle"></i><span>List Colleges</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#company-nav" data-bs-toggle="collapse" href="#" aria-expanded="false">
          <i class="bi bi-menu-button-wide"></i><span>Company</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="company-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="listcompanies">
              <i class="bi bi-circle"></i><span>List Companies</span>
            </a>
          </li>
        </ul>
        <ul id="company-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="listcompanyusers">
              <i class="bi bi-circle"></i><span>List Company Users</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#studentDetail-nav" data-bs-toggle="collapse" href="#" aria-expanded="false">
          <i class="bi bi-menu-button-wide"></i><span>Student Details</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="studentDetail-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="liststudentdetails">
              <i class="bi bi-circle"></i><span>List StudentDetails</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#transactions-nav" data-bs-toggle="collapse" href="#" aria-expanded="false">
          <i class="bi bi-menu-button-wide"></i><span>Transactions</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="transactions-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="#">
              <i class="bi bi-circle"></i><span>List Transactions</span>
            </a>
          </li>
        </ul>
        <ul id="transactions-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="#">
              <i class="bi bi-circle"></i><span>Refund Requests</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="#">
          <i class="bi bi-envelope"></i>
          <span>Contact Us</span>
        </a>
      </li><!-- End Contact Page Nav -->
    </ul>

  </aside><!-- End Sidebar-->
</body>
</html>