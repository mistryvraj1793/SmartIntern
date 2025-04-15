<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Sidebar</title>
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
          <i class="bi bi-people"></i><span>Users</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="users-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="adminadduser">
              <i class="bi bi-person-plus"></i><span>Add User</span>
            </a>
          </li>
        </ul>
        <ul id="users-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="adminlistusers">
              <i class="bi bi-card-list"></i><span>List Users</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#studentDetail-nav" data-bs-toggle="collapse" href="#" aria-expanded="false">
          <i class="bi bi-person-lines-fill"></i><span>Student Details</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="studentDetail-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="adminliststudentdetails">
              <i class="bi bi-card-list"></i><span>List StudentDetails</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#internships-nav" data-bs-toggle="collapse" href="#" aria-expanded="false">
          <i class="bi bi-briefcase"></i><span>Internships</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="internships-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="admininternship">
              <i class="bi bi-plus-square"></i><span>Add Internship</span>
            </a>
          </li>
        </ul>
        <ul id="internships-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="adminlistinternships">
              <i class="bi bi-card-list"></i><span>List Internships</span>
            </a>
          </li>
        </ul>
        <ul id="internships-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="adminlistinternshipapplications">
              <i class="bi bi-journal-text"></i><span>List Internships Applications</span>
            </a>
          </li>
        </ul>
        <ul id="internships-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="adminlistinternshipprojects">
              <i class="bi bi-folder"></i><span>List Internship Projects</span>
            </a>
          </li>
        </ul>
        <ul id="internships-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="adminlistinternshiptechnologies">
              <i class="bi bi-cpu"></i><span>List Internship Technologies</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#projects-nav" data-bs-toggle="collapse" href="#" aria-expanded="false">
          <i class="bi bi-folder"></i><span>Projects</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="projects-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="adminproject">
              <i class="bi bi-plus-square"></i><span>Add Project</span>
            </a>
          </li>
        </ul>
        <ul id="projects-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="adminlistprojects">
              <i class="bi bi-card-list"></i><span>List Projects</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#technology-nav" data-bs-toggle="collapse" href="#" aria-expanded="false">
          <i class="bi bi-cpu"></i><span>Technologies</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="technology-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="admintechnology">
              <i class="bi bi-plus-square"></i><span>Add Technology</span>
            </a>
          </li>
        </ul>
        <ul id="technology-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="adminlisttechnologies">
              <i class="bi bi-card-list"></i><span>List Technologies</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#colleges-nav" data-bs-toggle="collapse" href="#" aria-expanded="false">
          <i class="bi bi-building"></i><span>Colleges</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="colleges-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="admincollege">
              <i class="bi bi-plus-square"></i><span>Add College</span>
            </a>
          </li>
        </ul>
        <ul id="colleges-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="adminlistcolleges">
              <i class="bi bi-card-list"></i><span>List Colleges</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#companies-nav" data-bs-toggle="collapse" href="#" aria-expanded="false">
          <i class="bi bi-building-gear"></i><span>Companies</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="companies-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="admincompany">
              <i class="bi bi-plus-square"></i><span>Add Company</span>
            </a>
          </li>
        </ul>
        <ul id="companies-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="adminlistcompanies">
              <i class="bi bi-card-list"></i><span>List Companies</span>
            </a>
          </li>
        </ul>
        <ul id="companies-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="adminlistcompanyusers">
              <i class="bi bi-people"></i><span>List Company Users</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#transactions-nav" data-bs-toggle="collapse" href="#" aria-expanded="false">
          <i class="bi bi-wallet2"></i><span>Transactions</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="transactions-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="#">
              <i class="bi bi-receipt"></i><span>List Transactions</span>
            </a>
          </li>
        </ul>
        <ul id="transactions-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="#">
              <i class="bi bi-arrow-counterclockwise"></i><span>Refund Requests</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#reports-nav" data-bs-toggle="collapse" href="#" aria-expanded="false">
          <i class="bi bi-file-earmark-bar-graph"></i><span>Reports</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="reports-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="listreportinternshipapplications">
              <i class="bi bi-bar-chart"></i><span>Applications By College</span>
            </a>
          </li>
        </ul>
        <ul id="reports-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="listreporttop5internshipapplication">
              <i class="bi bi-trophy"></i><span>Top 5 Internships By Applications</span>
            </a>
          </li>
        </ul>
        <ul id="reports-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="listreportcompanydetailed">
              <i class="bi bi-buildings"></i><span>Company Detailed With Total internships Hr Mentors</span>
            </a>
          </li>
        </ul>
        <ul id="reports-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav" style="">
          <li>
            <a href="listreportinternshipapplicationsummary">
              <i class="bi bi-file-earmark-text"></i><span>Internship Application Summary</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->
    </ul>

  </aside><!-- End Sidebar-->
</body>
</html>