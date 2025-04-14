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
import com.grownited.entity.TechnologiesEntity;
import com.grownited.repository.CompanyRepository;
import com.grownited.repository.TechnologiesRepository;


@Controller
public class TechnologiesController {
	@Autowired
	TechnologiesRepository repositoryTechnologies;
	
	@Autowired
	CompanyRepository repositoryCompany;
	
	@GetMapping("admintechnology")
	public String adminTechnology(Model model) {
		List<CompanyEntity> allCompanies = repositoryCompany.findAll();
		
		//fetches the data from Controller in allCompanies to jsp.
		model.addAttribute("allCompanies", allCompanies);
		return "Technology";
	}
	@PostMapping("adminsavetechnology")
	public String adminSaveTechnology(TechnologiesEntity entityTechnologies) {
		//set the createdAt as today's Date.
		entityTechnologies.setCreatedAt(LocalDate.now());
		
		//print data from Technologies jsp form.
		System.out.println(entityTechnologies.getName());
		System.out.println(entityTechnologies.getFrontend());
		System.out.println(entityTechnologies.getBackend());
		
		//store the data from Technologies jsp form into table technologies
		repositoryTechnologies.save(entityTechnologies);
		
		return "redirect:/admintechnology";
	}
	@GetMapping("adminlisttechnologies")
	public String adminListTechnologies(Model model) {
		//fetchs the data from table technologies into controller in list technologiesList
		List<Object[]> technologiesList = repositoryTechnologies.findActiveTechnologies();
		//fetchs the data from list technologiesList into ListTechnologies jsp.
		model.addAttribute("technologiesList", technologiesList);
			
		return "ListTechnologies";
	}
	@GetMapping("adminviewtechnology")
	public String adminViewTechnology(Integer technologyId, Model model) {
		System.out.println("id => "+technologyId);
		List<Object[]> techDetailsById = repositoryTechnologies.GetTechnologyDetailById(technologyId);
		//Send to jsp
		model.addAttribute("techDetails", techDetailsById);
		
		return "ViewTechnology";
	}
	@GetMapping("admindeletetechnology")
	public String adminDeleteTechnologies(Integer technologyId) {
		repositoryTechnologies.deleteById(technologyId);
		return "redirect:/adminlisttechnologies";
	}
	
}
