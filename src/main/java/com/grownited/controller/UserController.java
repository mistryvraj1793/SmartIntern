package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.InternshipEntity;
import com.grownited.entity.ProjectsEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CompanyRepository;
import com.grownited.repository.CompanyUserRepository;
import com.grownited.repository.InternshipApplicationRepository;
import com.grownited.repository.InternshipProjectRepository;
import com.grownited.repository.InternshipRepository;
import com.grownited.repository.ProjectRepository;
import com.grownited.repository.UserRepository;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class UserController {
	
	@Autowired
	UserRepository repositoryUser;
	
	@Autowired
	InternshipRepository repositoryInternship;
	
	@Autowired
	ProjectRepository repositoryProject;
	
	@Autowired
	InternshipProjectRepository repositoryInternshipProject;
	
	@Autowired
	InternshipApplicationRepository repositoryInternshipApplication;

	@Autowired
	CompanyRepository repositoryCompany;
	
	@Autowired
	CompanyUserRepository repositoryCompanyUser;
	
	@GetMapping("userdashboard")
	public String userDashboard(Model model) {
		//Available Internships Shown in UserBody:
		List<InternshipEntity> availableInternship = repositoryInternship.findByStatus("OPEN"); // Only show open ones
		model.addAttribute("availableInternship", availableInternship);
		
		//Available Projects Shown in UserBody:
		List<ProjectsEntity> availableProject = repositoryProject.findAllActiveProjects();
		model.addAttribute("availableProject", availableProject);
		
		//Our Team Section in UserBody:
		List<Object[]> companyUserList = repositoryCompanyUser.GetCompanyUser();
		model.addAttribute("companyUsers", companyUserList);
		
		//Dynamic Display in UserBody as a Fact:
		Integer activeInternships = repositoryInternship.findByStatus("OPEN").size();
		Integer totalSuccessFullInternships = repositoryInternshipApplication.acceptedInternshipApplications();
		Integer totalCompanies = repositoryCompany.totalCompany();
		Integer totalUsers = repositoryUser.totalUsers();
			
		model.addAttribute("activeInternships", activeInternships);
		model.addAttribute("totalSuccessFullInternships", totalSuccessFullInternships);
		model.addAttribute("totalCompanies", totalCompanies);
		model.addAttribute("totalUsers", totalUsers);
		return "UserDashboard";
	}
	@GetMapping("home")
	public String home() {
		return "Home";
	}
	@GetMapping("userviewavailableinternships")
	public String userViewAvailableInternships(Model model) {
		List<InternshipEntity> availableInternship = repositoryInternship.findByStatus("OPEN"); // Only show open ones
		System.out.println(availableInternship);
		model.addAttribute("availableInternship", availableInternship);
	
		//Dynamic Display in UserBody as a Fact:
		Integer activeInternships = repositoryInternship.findByStatus("OPEN").size();
		Integer totalSuccessFullInternships = repositoryInternshipApplication.acceptedInternshipApplications();
		Integer totalCompanies = repositoryCompany.totalCompany();
		Integer totalUsers = repositoryUser.totalUsers();
					
		model.addAttribute("activeInternships", activeInternships);
		model.addAttribute("totalSuccessFullInternships", totalSuccessFullInternships);
		model.addAttribute("totalCompanies", totalCompanies);
		model.addAttribute("totalUsers", totalUsers);
		return "UserViewAvailableInternships";
	}
	@GetMapping("adminlistusers")
	public String adminListUsers(Model model) {		
		//how to sends data from database to Controller:
		//This statement retrieves all records from the users table and stores them in a List<UserEntity> collection.
		 List<UserEntity> userList = repositoryUser.findAll();// repositoryUser.findAll() works was select * from users(i.e;fetches all records from the users table.); 
		 //and this statement can do read all users from database to controller 
		
		 //how to sends data from controller to jsp
		 model.addAttribute("userList", userList);//where "userList" is a DataName and userList is a DataValue
		 return "ListUsers";
	}
	
	@GetMapping("adminviewuser")
	public String adminViewUser(Integer userId, Model model) {
		System.out.println("id => "+userId);
		Optional<UserEntity> op = repositoryUser.findById(userId);
		if(!op.isPresent()) {
			//not found but we dont consider this case.
			System.out.println("Not found"); // If user is not found
		} 
		else{
			//data found
			UserEntity user = op.get();
			//send data to jsp
			model.addAttribute("user", user); // Pass user data to JSP
		}
		return "ViewUser"; // Display ViewUser.jsp
	}
	@GetMapping("userlistinternshipapplications")
	public String userlistinternshipApplications(Integer userId, Model model) {
		List<Object[]> allInternApplications = repositoryInternshipApplication.GetInternApplicationById(userId);
		model.addAttribute("internApplications", allInternApplications);
		
		return "UserListInternApplications";
	}
	
	@GetMapping("userviewinternshipapplication")
	public String userViewInternshipApplication(Integer applicationId, Model model) {
		List<Object[]> userViewInternApplication = repositoryInternshipApplication.UserViewInternApplicationById(applicationId);
		model.addAttribute("userInternApplication", userViewInternApplication);
		return "UserViewInternshipApplication";
	}
	
	@GetMapping("adminedituser")
	public String adminEditUser(Integer userId, Model model) {
		Optional<UserEntity> op = repositoryUser.findById(userId);
		if(!op.isPresent()) {
			return "redirect:/adminlistusers";
		}
		else {
			model.addAttribute("user", op.get());
			return "EditUser";
		}
		//save -> entity -> no id present -> redirect to listusers 
	 	//save -> entity -> id present -> not present in db -> insert  
	}
	@PostMapping("adminupdateuser")
	public String adminUpdateUser(UserEntity entityUser){
		//save -> entity -> id present -> present in db -> update
		System.out.println(entityUser.getUserId()); 
		Optional<UserEntity> op = repositoryUser.findById(entityUser.getUserId());
		if (op.isPresent()) {
			UserEntity dbUser = op.get();
			
			dbUser.setFirstName(entityUser.getFirstName());
			dbUser.setLastName(entityUser.getLastName());
			dbUser.setEmail(entityUser.getEmail());
			dbUser.setGender(entityUser.getGender());
			dbUser.setRole(entityUser.getRole());
			dbUser.setContactNum(entityUser.getContactNum());
			dbUser.setBornYear(entityUser.getBornYear());
			repositoryUser.save(dbUser);
		}
		return "redirect:/adminlistusers";
	}
	@GetMapping("admindeleteuser")
	public String adminDeleteUser(Integer userId) {
		repositoryUser.deleteById(userId); //delete from users where userId = :userId or  Deletes user from database
		return "redirect:/adminlistusers"; // Redirects to the user list page
	}
	@GetMapping("usercontactus")
	public String userContactUs(Model model) {
		//Dynamic Display in UserContactUs as a Fact:
		Integer totalinterns = repositoryUser.totalInterns();
		Integer totalCompanies = repositoryCompany.totalCompany();	
		Integer countLiveInternshipProjects = repositoryInternshipProject.countLiveInternshipProjects();
		Integer totalmentors = repositoryCompanyUser.totalMentors();
		
		model.addAttribute("totalinterns", totalinterns);
		model.addAttribute("totalCompanies", totalCompanies);
		model.addAttribute("liveInternshipProjects", countLiveInternshipProjects);
		model.addAttribute("totalmentors", totalmentors);
		return "UserContactUs";
	}
	@GetMapping("useraboutus")
	public String userAboutUs(Model model) {
		//Dynamic Display in UserContactUs as a Fact:
		Integer totalinterns = repositoryUser.totalInterns();
		Integer totalCompanies = repositoryCompany.totalCompany();	
		Integer countLiveInternshipProjects = repositoryInternshipProject.countLiveInternshipProjects();
		Integer totalmentors = repositoryCompanyUser.totalMentors();
				
		model.addAttribute("totalinterns", totalinterns);
		model.addAttribute("totalCompanies", totalCompanies);
		model.addAttribute("liveInternshipProjects", countLiveInternshipProjects);
		model.addAttribute("totalmentors", totalmentors);
		return "UserAboutUs";
	}
	@GetMapping("userservices")
	public String userServices(Model model) {
		return "UserServcies";
	}
	
	@GetMapping("userfeatures")
	public String userFeatures() {
		return "UserFeatures";
	}
	
	
}