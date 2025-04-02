package com.grownited.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.InternshipEntity;
import com.grownited.entity.InternshipProjectEntity;
import com.grownited.entity.ProjectsEntity;
import com.grownited.repository.InternshipProjectRepository;
import com.grownited.repository.InternshipRepository;
import com.grownited.repository.ProjectRepository;

@Controller
public class InternshipProjectController {
	@Autowired
	InternshipProjectRepository repositoryInternshipProject;
	
	@Autowired
	InternshipRepository repositoryInternship;
	
	@Autowired
	ProjectRepository repositoryProject;
		
	@GetMapping("admininternshipproject")
	public String adminInternshipProject(Model model) {
	 	List<InternshipEntity> allInternships = repositoryInternship.findAll();
	 	List<ProjectsEntity> allProjects = repositoryProject.findAll();
	 	
	 	System.out.println(allInternships);
	 	//fetches the data from Controller in allInternships to jsp
	 	model.addAttribute("allInternships", allInternships);
		model.addAttribute("allProjects", allProjects);
	 	
		return "InternshipProject";
	}
	@PostMapping("saveinternshipproject")
	public String saveInternshipProject(InternshipProjectEntity entityInternshipProject) {
	 	
	 	repositoryInternshipProject.save(entityInternshipProject);
		return "redirect:/admininternshipproject";
	}
	
	@GetMapping("adminlistinternshipprojects")
	public String adminListInternshipProjects(Model model) {
		//fetchs the data from table internship_project, internship, projects into controller in list internshipProjectList
		List<InternshipProjectEntity> internshipProjectList = repositoryInternshipProject.findAll();
		System.out.println(internshipProjectList);
		
		//fetchs the data from list internshipProjectList
		model.addAttribute("internshipProjectList", internshipProjectList);
		
		return "ListInternshipProjects";
	}
	@GetMapping("adminviewinternshipproject")
	public String adminViewInternshipProject(Integer internshipProjectId, Model model) {
		System.out.println("InternshipProjectId => "+internshipProjectId);
		
		Optional<InternshipProjectEntity> op = repositoryInternshipProject.findById(internshipProjectId);
		if(op.isPresent()) {
			//Data found:
			InternshipProjectEntity internshipProject = op.get();
			
			//fetches the data from controller in internshipProject to jsp
			model.addAttribute("internshipProject", internshipProject);
		}
		else {
			//Data not found:
			System.out.println("Not Found");
		}
		return "ViewInternshipProject";
	}
	@GetMapping("admindeleteinternshipproject")
	public String adminDeleteInternshipProject(Integer internshipProjectId) {
		repositoryInternshipProject.deleteById(internshipProjectId);
		
		return "redirect:/adminlistinternshipprojects";
	}
	
}
