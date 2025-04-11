package com.grownited.controller.admin;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.InternshipApplicationEntity;
import com.grownited.entity.InternshipEntity;
import com.grownited.entity.StudentDetailEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.InternshipApplicationRepository;
import com.grownited.repository.InternshipRepository;
import com.grownited.repository.StudentDetailRepository;
import com.grownited.repository.UserRepository;

import jakarta.servlet.http.HttpSession;


@Controller
public class InternshipApplicationController {
	@Autowired
	InternshipApplicationRepository repositoryInternshipApplication;
	
	@Autowired
	InternshipRepository repositoryInternship;
	
	@Autowired
	UserRepository repositoryUser;
	
	@Autowired
	Cloudinary cloudinary;
	
	@Autowired
	StudentDetailRepository repositoryStudentDetail;
	
	@GetMapping("userinternshipapplications")
	public String userInternshipApplications(Integer internshipId,Model model) {
		/*
		 * List<InternshipEntity> allInternships = repositoryInternship.findAll();
		 * List<UserEntity> allUsers = repositoryUser.findAll();
		 * 
		 * //fetches the data from controller in allInternships and allUsers to jsp
		 * model.addAttribute("allInternships", allInternships);
		 * model.addAttribute("allUsers", allUsers);
		 */
		Optional<InternshipEntity> op = repositoryInternship.findById(internshipId);
		if (op.isPresent()) {
		 	InternshipEntity internshipById = op.get();
		 	model.addAttribute("internshipById", internshipById);
		 	return "InternshipApplications";
		}
		else {
			return "redirect:/userstudentdetail";
		}
	}
	@PostMapping("saveinternshipapplication")
	public String saveInternshipApplication(Integer internshipId,InternshipApplicationEntity entityInternshipApplication, MultipartFile resume, MultipartFile coverLetter, HttpSession session, StudentDetailEntity entityStudentDetail, UserEntity entityUser) {
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId();
		Optional<InternshipEntity> internship = repositoryInternship.findById(internshipId);
		Optional<UserEntity> users = repositoryUser.findById(userId);
		if(internship.isPresent()) {
			System.out.println(userId);
			entityInternshipApplication.setUserId(userId);
			entityInternshipApplication.setInternshipId(internshipId);
			
			if (users.isPresent()) {
				UserEntity dbUser = users.get();
				dbUser.setRole("INTERN");
				repositoryUser.save(dbUser);
			}
			//set Bydefault:
			
			System.out.println("Role =>"+entityUser.getRole());
			entityInternshipApplication.setAppliedAt(LocalDate.now());
			entityInternshipApplication.setStatus("PENDING");
	
			try {
				Map resultResume = cloudinary.uploader().upload(resume.getBytes(), ObjectUtils.emptyMap());
				Map resultcoverLetter= cloudinary.uploader().upload(coverLetter.getBytes(), ObjectUtils.emptyMap());
				System.out.println(resultResume.get("url"));
				System.out.println(resultcoverLetter.get("url"));

				entityInternshipApplication.setResumePath(resultResume.get("url").toString());
				entityInternshipApplication.setCoverLetterPath(resultcoverLetter.get("url").toString());
			} catch (IOException e) {
				e.printStackTrace();
			}
			System.out.println("Can't do AnyThing");
			
			//store the data from InternshipApplication jsp form into table internship_application
			repositoryInternshipApplication.save(entityInternshipApplication);
			return "redirect:/userdashboard";
		}
		else {
			return "redirect:/userstudentdetail";
		}
	}
	@GetMapping("adminlistinternshipapplications")
	public String adminlistInternshipApplications(Model model) {
		//fetchs the data from table internship_application into controller in list internshipApplicationList
		List<Object[]> internshipApplicationList = repositoryInternshipApplication.GetInternAppliedByUser();
		
		//fetchs the data from list internshipApplicationList into ListInternshipApplication jsp
		model.addAttribute("internApplied", internshipApplicationList);
		return "ListInternshipApplications";
	}
	@GetMapping("adminviewinternshipapplication")
	public String adminviewInternshipApplication(Integer applicationId, Model model) {
		System.out.println("InternshipApplicationId => "+applicationId);
	 	List<Object[]> allInternshipApplicationDetails = repositoryInternshipApplication.GetInternAppliedId(applicationId);
		
	 	//sends data to jsp:
		model.addAttribute("internApplication", allInternshipApplicationDetails);
		
		return "ViewInternshipApplication";
	}
	@GetMapping("admineditinternshipapplication")
	public String adminEditInternshipApplication(Integer applicationId, Model model){
		System.out.println("InternshipApplicationId => "+applicationId);
	 	List<Object[]> editInternApplicationDetails = repositoryInternshipApplication.GetInternAppliedId(applicationId);
		
	 	//sends data to jsp:
		model.addAttribute("adminEditinternApplied", editInternApplicationDetails);
		
		return "EditInternshipApplication";
	}
	@PostMapping("adminupdateinternshipapplication")
	public String adminUpdateInternshipApplication(Integer applicationId, InternshipApplicationEntity entityInternshipApplication) {
		System.out.println(entityInternshipApplication.getApplicationId());
		Optional<InternshipApplicationEntity> op = repositoryInternshipApplication.findById(applicationId);
		if (op.isPresent()) {
			InternshipApplicationEntity dbInternApplied = op.get();
			
			//set
			dbInternApplied.setStatus(entityInternshipApplication.getStatus());
			
			repositoryInternshipApplication.save(dbInternApplied);
			return "redirect:/adminlistinternshipapplications";
		}
		else {
			return "redirect:/admindashboard";
		}
		
	}
	
	@GetMapping("admindeleteinternshipapplication")
	public String deleteInternshipApplication(Integer applicationId) {
		repositoryInternshipApplication.deleteById(applicationId);
		return "redirect:/adminlistinternshipapplications";
	}
}
