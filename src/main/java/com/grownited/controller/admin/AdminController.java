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
import com.grownited.repository.InternshipRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;



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
	CompanyRepository repositoryCompany;
	
	@Autowired
	CompanyUserRepository repositoryCompanyUser;
	
	@GetMapping("admindashboard")
	public String adminDashboard(Model model) {
		//Widget
		Integer totalInterns = repositoryUser.totalInterns();
		Integer totalInternships = repositoryInternship.totalInternships();
		Integer activeInternships = repositoryInternship.CurrentActiveInternships();
		
		model.addAttribute("totalInterns", totalInterns);
		model.addAttribute("totalInternships", totalInternships);
		model.addAttribute("activeInternships", activeInternships);
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
	
}
