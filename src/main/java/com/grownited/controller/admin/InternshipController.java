package com.grownited.controller.admin;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CompanyEntity;
import com.grownited.entity.InternshipEntity;
import com.grownited.repository.CompanyRepository;
import com.grownited.repository.InternshipRepository;
import com.grownited.repository.UserRepository;

@Controller
public class InternshipController {
	@Autowired
	InternshipRepository repositoryInternship;
	
	@Autowired
	CompanyRepository repositoryCompany;
	
	@Autowired
	UserRepository repositoryUser;
	
	@GetMapping("admininternship")
	public String adminInternship(Model model) {
		
		List<CompanyEntity> allCompanies = repositoryCompany.findAll();
		
		//fetches the data from Controller in allCompanies to jsp.
		model.addAttribute("allCompanies", allCompanies);
				
		return "Internship";
	}
	@PostMapping("saveinternship")
	public String saveinternship(InternshipEntity entityInternship,Model model) {	
		entityInternship.setCreatedAt(LocalDate.now());
		entityInternship.setStatus("OPEN");
		
		//print the data from Internship jsp form.
		System.out.println(entityInternship.getTitle());
		
		//store the data from Internship jsp form into table internship
		repositoryInternship.save(entityInternship);
		
		return "redirect:/admininternship";
	}
	@GetMapping("adminlistinternships")
	public String adminListinternships(Model model) {
		//fetchs the data from table internship into Controller in List internshipList
		List<InternshipEntity> internshipList = repositoryInternship.findAll();
		
		//store the data from list internshipList into internship jsp.
		model.addAttribute("internshipList", internshipList);
		
		return "ListInternships";
	}
	@GetMapping("adminviewinternship")
	public String adminViewInternship(Integer internshipId, Model model) {
		System.out.println("InternshipId => "+internshipId);
		Optional<InternshipEntity> op = repositoryInternship.findById(internshipId);
		if(op.isEmpty()) {
			//Data Not Found:
		}
		else {
			//Data Found:
			InternshipEntity internship = op.get();
			
			//Send Data to jsp:
			model.addAttribute("internship", internship);
		}
		return "ViewInternship";
	}
	@GetMapping("admindeleteinternship")
	public String adminDeleteInternship(Integer internshipId) {
		return "redirect:/adminlistinternships";
	}
}
