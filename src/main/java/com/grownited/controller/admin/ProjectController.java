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
import com.grownited.entity.ProjectsEntity;
import com.grownited.repository.CompanyRepository;
import com.grownited.repository.ProjectRepository;

@Controller
public class ProjectController {
	@Autowired
	ProjectRepository repositoryProject;

	@Autowired
	CompanyRepository repositoryCompany;
	
	@GetMapping("adminproject")
	public String adminProject(Model model) {
		List<CompanyEntity> allCompanies = repositoryCompany.findAll();
		
		//fetches the data from controller in allCompanies to jsp
		model.addAttribute("allCompanies", allCompanies);
		
		return "Project";
	}
	@PostMapping("adminsaveproject")
	public String adminSaveProject(ProjectsEntity entityProjects) {
		//set the defalut values in the attributes when they click on submit.
		entityProjects.setActive(true);
		entityProjects.setcreatedAt(LocalDate.now());
		
		//print/s the data from Projects jsp form.
		System.out.println(entityProjects.getTitle());
		System.out.println(entityProjects.getDescription());
		
		//stored the data from Projects jsp form into table Projects through repositoryProjects object.
		repositoryProject.save(entityProjects);
	
		return "redirect:/adminproject";
	}
	@GetMapping("adminlistprojects")
	public String adminListProjects(Model model) {
		//fetchs the  data from table projects into controller in list projectsList
		List<ProjectsEntity> projectsList = repositoryProject.findAll();
		
		//fetchs the data from list projectsList into ListProjects jsp through Model object. 
		model.addAttribute("projectsList", projectsList);
		
		return "ListProjects";
	}
	@GetMapping("adminviewproject")
	public String adminViewProject(Integer projectId, Model model) {
		System.out.println("projectId => "+projectId);
		Optional<ProjectsEntity> op= repositoryProject.findById(projectId);
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
		return "ViewProject";
	}
	@GetMapping("admindeleteproject")
	public String adminDeleteProject(Integer projectId) {
		repositoryProject.deleteById(projectId);
		return "redirect:/adminlistprojects";
	}
	
	
}
