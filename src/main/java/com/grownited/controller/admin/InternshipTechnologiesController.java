package com.grownited.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.InternshipTechnologiesEntity;
import com.grownited.entity.TechnologiesEntity;
import com.grownited.repository.InternshipTechnologiesRepository;
import com.grownited.repository.TechnologiesRepository;

@Controller
public class InternshipTechnologiesController {
	@Autowired
	InternshipTechnologiesRepository repositoryInternshipTechnologies;
	
	@Autowired
	TechnologiesRepository repositoryTechnology;
	
	@GetMapping("internshiptechnologies")
	public String internshipTechnologies(Model model) {
		List<TechnologiesEntity> allTechnologies = repositoryTechnology.findAll();
	
		//fetches the data from controller in allTechnologies to jsp
		model.addAttribute("allTechnologies", allTechnologies);
		
		return "InternshipTechnologies";
	}
	@PostMapping("saveinternshiptechnologies")
	public String saveInternshipTechnologies(InternshipTechnologiesEntity entityInternshipTechnologies) {
		repositoryInternshipTechnologies.save(entityInternshipTechnologies);
		
		return "redirect:/internshiptechnologies";
	}
	
	@GetMapping("listinternshiptechnologies")
	public String listInternshipTechnologies(Model model) {
		//fetchs the data from tables internship, technologies into controller in list internshipTechnologiesList
		List<InternshipTechnologiesEntity> internshipTechnologiesList = repositoryInternshipTechnologies.findAll();
		
		//fetchs the data from list internshipTechnologiesList into ListInternshipTechnologies jsp.
		model.addAttribute("internshipTechnologiesList", internshipTechnologiesList);
		
		return "ListInternshipTechnologies";
	}
	@GetMapping("viewinternshiptechnology")
	public String viewInternshipTechnology(Integer internshipTechnologyId, Model model) {
		Optional<InternshipTechnologiesEntity> op = repositoryInternshipTechnologies.findById(internshipTechnologyId);
		if(op.isPresent()) {
			//data found:
			InternshipTechnologiesEntity allInternshipTechnology = op.get();
			
			//fetches the data from entity object in allInternshipTechnology to jsp
			model.addAttribute("allInternshipTechnology", allInternshipTechnology);
		}
		else {
			//data not found:
			System.out.println("Not Found");
		}
		return "ViewInternshipTechnology";
	}
	@GetMapping("deleteinternshiptechnology")
	public String deleteInternshipTechnology(Integer internshipTechnologyId) {
		repositoryInternshipTechnologies.deleteById(internshipTechnologyId);
		return "redirect:/listinternshiptechnologies";
	}
}
