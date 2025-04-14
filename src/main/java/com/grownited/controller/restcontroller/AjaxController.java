package com.grownited.controller.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.grownited.entity.ProjectsEntity;
import com.grownited.entity.TechnologiesEntity;
import com.grownited.repository.ProjectRepository;
import com.grownited.repository.TechnologiesRepository;

@RestController
public class AjaxController {
	
	@Autowired
	ProjectRepository repositoryProject;
	
	@Autowired
	TechnologiesRepository repositoryTechnology;
	
	@GetMapping("getallprojectbycompanyid/{companyId}")
	public List<ProjectsEntity> getAllProjectByCompanyId(@PathVariable Integer companyId ) {
		System.out.println(companyId);
		List<ProjectsEntity> allProject  = repositoryProject.findByCompanyId(companyId);
		return allProject;
	}
	
	@GetMapping("getalltechnologybycompanyid/{companyId}")
	public List<TechnologiesEntity> getAllTechnologyByCompanyId(@PathVariable Integer companyId) {
		System.out.println(companyId);
		List<TechnologiesEntity> allTechnology = repositoryTechnology.findByCompanyId(companyId);
		return allTechnology;
	}
	
	
}
