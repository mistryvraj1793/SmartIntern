package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.InternshipTechnologiesEntity;
import com.grownited.repository.InternshipTechnologiesRepository;

@Controller
public class InternshipTechnologiesController {
	@Autowired
	InternshipTechnologiesRepository repositoryInternshipTechnologies;
	@GetMapping("internshiptechnologies")
	public String internshipTechnologies() {
		return "InternshipTechnologies";
	}
	@GetMapping("listinternshiptechnologies")
	public String listInternshipTechnologies(Model model) {
		//fetchs the data from tables internship, technologies into controller in list internshipTechnologiesList
		List<InternshipTechnologiesEntity> internshipTechnologiesList = repositoryInternshipTechnologies.findAll();
		
		//fetchs the data from list internshipTechnologiesList into ListInternshipTechnologies jsp.
		model.addAttribute("internshipTechnologiesList", internshipTechnologiesList);
		
		return "ListInternshipTechnologies";
	}
	
	
}
