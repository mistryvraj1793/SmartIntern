package com.grownited.controller.admin;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CompanyEntity;
import com.grownited.entity.CompanyUserEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CompanyRepository;
import com.grownited.repository.CompanyUserRepository;
import com.grownited.repository.InternshipApplicationRepository;
import com.grownited.repository.InternshipProjectRepository;
import com.grownited.repository.InternshipRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;
import org.springframework.web.bind.annotation.RequestParam;




@Controller
public class AdminController {
	@Autowired
	MailService serviceMail;
	
	@Autowired
	UserRepository repositoryUser;
	
	@Autowired
	PasswordEncoder encoder;
	
	@Autowired
	InternshipRepository repositoryInternship;
	
	@Autowired
	InternshipProjectRepository repositoryInternshipProject;
	
	@Autowired
	InternshipApplicationRepository repositoryInternshipApplication;
	
	@Autowired
	CompanyRepository repositoryCompany;
	
	@Autowired
	CompanyUserRepository repositoryCompanyUser;
	
	@GetMapping("admindashboard")
	public String adminDashboard(Model model) {
		//Widget
		Integer totalInterns = repositoryUser.totalInterns();
		Integer acceptedInternshipApplications = repositoryInternshipApplication.acceptedInternshipApplications();
		Integer totalInternships = repositoryInternship.totalInternships();
		Integer activeInternships = repositoryInternship.findByStatus("OPEN").size();
		Integer pendingInternApplications = repositoryInternshipApplication.pendingInternshipApplications();
		Integer totalCompanies = repositoryCompany.totalCompany();
		Integer totalInternProjects = repositoryInternshipProject.totalInternshipProject();
		
		LocalDate today = LocalDate.now();
		int month = today.getMonthValue();
		Integer thisMonthInternsCount = repositoryUser.countThisMonthIntern(month);
		//for Chart
		Integer monthWiseIntern [] = new Integer[12];
		for(int i = 1; i <= 12; i++) {
			monthWiseIntern [i-1] = repositoryUser.countThisMonthIntern(i);
		}
		model.addAttribute("monthWiseIntern", monthWiseIntern);
		
		//Widget
		model.addAttribute("totalInterns", totalInterns);
		model.addAttribute("acceptedInternApplication", acceptedInternshipApplications);
		model.addAttribute("totalInternships", totalInternships);
		model.addAttribute("activeInternships", activeInternships);
		model.addAttribute("currentMonth", LocalDate.now().getMonth().name());
		model.addAttribute("thisMonthInternsCount", thisMonthInternsCount);
		model.addAttribute("pendingInternApplications", pendingInternApplications);
		model.addAttribute("totalCompanies", totalCompanies);
		model.addAttribute("totalInternProjects", totalInternProjects);
		
		return "AdminDashboard";
	}
	@GetMapping("hrmentordashboard")
	public String hrMentorDashboard() {
		return "HrMentorDashboard";
	}
	@GetMapping("adminadduser")
	public String adminAddUser(Model model) {
		List<CompanyEntity> allCompanies = repositoryCompany.findAll();
		
		//fetches the data from Controller in allCompanies to jsp.
		model.addAttribute("allCompanies", allCompanies);
		
		return "AddUser";
	}
	@PostMapping("adminsaveuser")
	public String adminSaveUser(UserEntity entityUser, CompanyUserEntity entityCompanyUser,Integer companyId) {
		entityUser.setCreatedAt(LocalDate.now());//sets createdAt to the current system time.
		entityUser.setActivate(true);
		
		//Password encoder:
		String encordPassword = encoder.encode(entityUser.getPassword());
		System.out.println(encordPassword);
		entityUser.setPassword(encordPassword);
		
		if (entityUser.getRole().equals("HR")) {
			System.out.println(entityUser.getRole());
			entityUser.setRole("HR");
		} 
		else if (entityUser.getRole().equals("MENTOR")) {
			System.out.println(entityUser.getRole());
			entityUser.setRole("MENTOR");
		} 
		UserEntity savedUser = repositoryUser.save(entityUser);
		
		//save into CompanyUser table
		entityCompanyUser.setUserId(savedUser.getUserId());
		entityCompanyUser.setTitle(savedUser.getRole());
		entityCompanyUser.setCompanyId(companyId);
		repositoryCompanyUser.save(entityCompanyUser);
		
		//send mail to Hr or Mentor after save their details:
		serviceMail.sendHrMentorWelcomeMail(entityUser.getEmail(), entityUser.getFirstName(), entityUser.getRole());
		return "redirect:/adminadduser";
	}
	@GetMapping("listreportinternshipapplications")
	public String listReportInternshipApplications(Model model) {
		//fetchs the data from table internship_application into controller in list ApplicationsWithStudentCollegeAndInternship
		List<Object[]> ApplicationsWithStudentCollegeAndInternship = repositoryInternshipApplication.findApplicationsWithCollegeAndInternshipDetails();
				
		//fetchs the data from list internshipApplicationList into ListInternshipApplication jsp
		model.addAttribute("appDetails", ApplicationsWithStudentCollegeAndInternship);
		return "ListReportInternshipApplications";
	}
	@GetMapping("listreporttop5internshipapplication")
	public String listReporttop5InternshipApplication(Model model) {
		List<Object[]> topInternshipApplicationCount = repositoryInternship.findTop5InternshipsByApplicationCount();
		model.addAttribute("TopInternshipApplicationCount", topInternshipApplicationCount);
		return "ListReportTop5InternshipsByApplications";
	}
	
	@GetMapping("listreportcompanydetailed")
	public String listReportCompanyDetailed(Model model) {
		List<Object[]> CompanyDetailsWithInternshipAndMentorCount = repositoryCompany.findAllCompanyDetailsWithInternshipAndMentorCount();
		model.addAttribute("companyDetails", CompanyDetailsWithInternshipAndMentorCount);
		return "ListReportCompanyDetailed";
	}
	
	@GetMapping("listreportinternshipapplicationsummary")
	public String listReportInternshipApplicationSummary(Model model) {
		List<Object[]> internshipApplicationSummary = repositoryInternshipApplication.findInternshipApplicationStatusSummary();
		model.addAttribute("IntAppSummary", internshipApplicationSummary);
		return "ListReportInternshipApplicationSummary";
	}
	
	
	
}
