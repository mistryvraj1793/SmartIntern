package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.InternshipEntity;
import com.grownited.repository.InternshipRepository;


@Controller
public class InternshipController {
	@Autowired
	InternshipRepository repositoryInternship;
	
	@GetMapping("internship")
	public String internship() {
		return "Internship";
	}
	@PostMapping("saveinternship")
	public String saveinternship(InternshipEntity entityInternship) {		
		//print the data from Internship jsp form.
		System.out.println(entityInternship.getTitle());
		
		//store the data from Internship jsp form into table internship
		repositoryInternship.save(entityInternship);
		
		return "Internship";
	}
	@GetMapping("listinternship")
	public String listinternship(Model model) {
		//fetchs the data from table internship into Controller in List internshipList
		List<InternshipEntity> internshipList = repositoryInternship.findAll();
		
		//store the data from list internshipList into internship jsp.
		model.addAttribute("internshipList", internshipList);
		
		return "ListInternship";
	}
	@GetMapping("viewinternship")
	public String viewInternship(Integer internshipId, Model model) {
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
	@GetMapping("deleteinternship")
	public String deleteInternship(Integer internshipId) {
		return "redirect:/listinternship";
	}
}
