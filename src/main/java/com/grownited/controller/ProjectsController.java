package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ProjectsEntity;
import com.grownited.repository.ProjectsRepository;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ProjectsController {
	@Autowired
	ProjectsRepository repositoryProjects;
	
	@GetMapping("projects")
	public String projects() {
		return "Projects";
	}
	@PostMapping("saveprojects")
	public String saveProjects(ProjectsEntity entityProjects) {
		//print/s the data from Projects jsp form.
		System.out.println(entityProjects.getTitle());
		System.out.println(entityProjects.getDescription());
		
		//stored the data from Projects jsp form into table Projects through repositoryProjects object.
		repositoryProjects.save(entityProjects);
	
		return "Projects";
	}
	@GetMapping("listprojects")
	public String listProjects(Model model) {
		//fetchs the  data from table projects into controller in list projectsList
		List<ProjectsEntity> projectsList = repositoryProjects.findAll();
		
		//fetchs the data from list projectsList into ListProjects jsp through Model object. 
		model.addAttribute("projectsList", projectsList);
		
		return "ListProjects";
	}
	@GetMapping("viewprojects")
	public String viewProjects(Integer projectId, Model model) {
		System.out.println("projectId => "+projectId);
		Optional<ProjectsEntity> op= repositoryProjects.findById(projectId);
		if(op.isEmpty()){
			//Data Not Found:
			System.out.println("Not Found");
		}
		else {
			//Data Found:
			ProjectsEntity projects = op.get();
			
			//send to jsp
			model.addAttribute("projects", projects);
		}
		return "ViewProjects";
	}
	@GetMapping("deleteprojects")
	public String deleteProjects(Integer projectId) {
		repositoryProjects.deleteById(projectId);
		return "redirect:/listprojects";
	}
	
	
}
