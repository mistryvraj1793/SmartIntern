package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.TechnologiesEntity;
import com.grownited.repository.TechnologiesRepository;
import org.springframework.web.bind.annotation.RequestParam;


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
	public String listTechnologies(Model model) {
		//fetchs the data from table technologies into controller in list technologiesList
		List<TechnologiesEntity> technologiesList = repositoryTechnologies.findAll();
		
		//fetchs the data from list technologiesList into ListTechnologies jsp.
		model.addAttribute("technologiesList", technologiesList);
			
		return "ListTechnologies";
	}
	@GetMapping("viewtechnologies")
	public String viewTechnologies(Integer technologyId, Model model) {
		System.out.println("id => "+technologyId);
		Optional<TechnologiesEntity> op = repositoryTechnologies.findById(technologyId);
		if(op.isEmpty()) {
			//Data not Found:
			System.out.println("Not Found");
		}
		else {
			//Data Found:
			TechnologiesEntity technologies = op.get();
			
			//Send to jsp
			model.addAttribute("technologies", technologies);
		}
		return "ViewTechnologies";
	}
	@GetMapping("deletetechnologies")
	public String deleteTechnologies(Integer technologyId) {
		repositoryTechnologies.deleteById(technologyId);
		return "redirect:/listtechnologies";
	}
	
}
