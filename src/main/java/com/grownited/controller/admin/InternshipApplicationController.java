package com.grownited.controller.admin;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.InternshipApplicationEntity;
import com.grownited.entity.InternshipEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.InternshipApplicationRepository;
import com.grownited.repository.InternshipRepository;
import com.grownited.repository.UserRepository;


@Controller
public class InternshipApplicationController {
	@Autowired
	InternshipApplicationRepository repositoryInternshipApplication;
	
	@Autowired
	InternshipRepository repositoryInternship;
	
	@Autowired
	UserRepository repositoryUser;
	
	@GetMapping("internshipapplication")
	public String internshipApplication(Model model) {
		List<InternshipEntity> allInternships = repositoryInternship.findAll();
		List<UserEntity> allUsers = repositoryUser.findAll();
	
		///fetches the data from controller in allInternships and allUsers to jsp
		model.addAttribute("allInternships", allInternships);
		model.addAttribute("allUsers", allUsers);
		
		return "InternshipApplication";
	}
	@PostMapping("saveinternshipapplication")
	public String saveInternshipApplication(InternshipApplicationEntity entityInternshipApplication) {
		entityInternshipApplication.setAppliedAt(LocalDate.now());
		entityInternshipApplication.setStatus("Pending");
		//prints data from the InternshipApplication jsp form.
		System.out.println(entityInternshipApplication.getResumePath());
		System.out.println(entityInternshipApplication.getCoverLetterPath());
		
		//store the data from InternshipApplication jsp form into table internship_application
		repositoryInternshipApplication.save(entityInternshipApplication);
		
		return "redirect:/internshipapplication";
	}
	@GetMapping("adminlistinternshipapplications")
	public String adminlistInternshipApplications(Model model) {
		//fetchs the data from table internship_application into controller in list internshipApplicationList
		List<InternshipApplicationEntity> internshipApplicationList = repositoryInternshipApplication.findAll();
		
		//fetchs the data from list internshipApplicationList into ListInternshipApplication jsp
		model.addAttribute("internshipApplicationList", internshipApplicationList);
		
		return "ListInternshipApplications";
	}
	@GetMapping("adminviewinternshipapplication")
	public String adminviewInternshipApplication(Integer applicationId, Model model) {
		System.out.println("ApplicationId => "+applicationId);
		Optional<InternshipApplicationEntity> op = repositoryInternshipApplication.findById(applicationId);
		if(op.isEmpty()){
			//data not found:
			System.out.println("not found");
		}
		else {
			//data found:
			InternshipApplicationEntity internshipApplication = op.get();
			
			//sends data to jsp:
			model.addAttribute("internshipApplication", internshipApplication);
		}
		return "ViewInternshipApplication";
	}
	@GetMapping("admindeleteinternshipapplication")
	public String deleteInternshipApplication(Integer applicationId) {
		repositoryInternshipApplication.deleteById(applicationId);
		return "redirect:/adminlistinternshipapplications";
	}
}
