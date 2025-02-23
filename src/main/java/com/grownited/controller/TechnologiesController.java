package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.TechnologiesEntity;
import com.grownited.repository.TechnologiesRepository;

@Controller
public class TechnologiesController {
	@Autowired
	TechnologiesRepository repositoryTechnologies;
	@GetMapping("technologies")
	public String technologies() {
		return "Technologies";
	}
	@PostMapping("savetechnologies")
	public String saveTechnologies(TechnologiesEntity entityTechnologies) {
		//print data from Technologies jsp form.
		System.out.println(entityTechnologies.getName());
		System.out.println(entityTechnologies.getFrontend());
		System.out.println(entityTechnologies.getBackend());
		
		//store the data from Technologies jsp form into table technologies
		repositoryTechnologies.save(entityTechnologies);
		
		return "Technologies";
	}
	@GetMapping("listtechnologies")
	private String listTechnologies(Model model) {
		//fetchs the data from table technologies into controller in list technologiesList
		List<TechnologiesEntity> technologiesList = repositoryTechnologies.findAll();
		
		//fetchs the data from list technologiesList into ListTechnologies jsp.
		model.addAttribute("technologiesList", technologiesList);
			
		return "ListTechnologies";
	}
	
}
