package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.InternshipApplicationEntity;
import com.grownited.repository.InternshipApplicationRepository;

@Controller
public class InternshipApplicationController {
	@Autowired
	InternshipApplicationRepository repositoryInternshipApplication;
	
	@GetMapping("internshipapplication")
	public String internshipApplication() {
		return "InternshipApplication";
	}
	@PostMapping("saveinternshipapplication")
	public String saveInternshipApplication(InternshipApplicationEntity entityInternshipApplication) {
		//prints data from the InternshipApplication jsp form.
		System.out.println(entityInternshipApplication.getResumePath());
		System.out.println(entityInternshipApplication.getCoverLetterPath());
		
		//store the data from InternshipApplication jsp form into table internship_application
		repositoryInternshipApplication.save(entityInternshipApplication);
		
		return "InternshipApplication";
	}
	@GetMapping("listinternshipapplication")
	public String listInternshipApplication(Model model) {
		//fetchs the data from table internship_application into controller in list internshipApplicationList
		List<InternshipApplicationEntity> internshipApplicationList = repositoryInternshipApplication.findAll();
		
		//fetchs the data from list internshipApplicationList into ListInternshipApplication jsp
		model.addAttribute("internshipApplicationList", internshipApplicationList);
		
		return "ListInternshipApplication";
	}
	
	
	
}
