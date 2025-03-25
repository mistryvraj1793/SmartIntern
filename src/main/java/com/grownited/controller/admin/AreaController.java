package com.grownited.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AreaEntity;
import com.grownited.entity.CityEntity;
import com.grownited.repository.AreaRepository;
import com.grownited.repository.CityRepository;

@Controller
public class AreaController {
	@Autowired
	AreaRepository repositoryArea;//through Autowired Annotation we directly create an object(i.e;repositoryArea)
	
	@Autowired
	CityRepository repositoryCity;
	
	@GetMapping("newarea")
	public String newArea(Model model) {
		//select * from cities;
		List<CityEntity> allCities = repositoryCity.findAll();//allCities
		
		//fetches the data from Controller in allCities into jsp.
		model.addAttribute("allCities", allCities);
		return"Area";
	}
	@PostMapping("savearea")
	public String saveArea(AreaEntity entityArea) {
		//read form console:
		System.out.println(entityArea.getAreaName());
		//write into table(i.e;areas)
		repositoryArea.save(entityArea);
		return "redirect:/newarea";
	}
	public AreaController(AreaRepository repositoryArea) {
		super();
		this.repositoryArea = repositoryArea;
	}
	@GetMapping("listareas")
	public String listAreas(Model model) {
		List<Object[]> listAreas = repositoryArea.getAll();
		model.addAttribute("allAreas", listAreas);
		return "ListAreas";
	}
}
