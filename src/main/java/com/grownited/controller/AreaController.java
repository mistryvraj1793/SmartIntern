package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.AreaEntity;
import com.grownited.repository.AreaRepository;

@Controller
public class AreaController {
	@Autowired
	AreaRepository repositoryArea;//through Autowired Annotation we directly create an object(i.e;repositoryArea)
	
	@GetMapping("newarea")
	public String newArea() {
		return"Area";
	}
	@PostMapping("savearea")
	public String saveArea(AreaEntity entityArea) {
		//read form console:
		System.out.println(entityArea.getAreaName());
		//write into table(i.e;areas)
		repositoryArea.save(entityArea);
		return "Area";
	}
}
