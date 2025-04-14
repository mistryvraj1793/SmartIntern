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
		
		//stored the data from Projects jsp form into projectViewtable Projects through repositoryProjects object.
		repositoryProject.save(entityProjects);
	
		return "redirect:/adminproject";
	}
	@GetMapping("adminlistprojects")
	public String adminListProjects(Model model) {
	 	List<Object[]> projectCompanyUserList = repositoryProject.GetAll(); 
		model.addAttribute("projectList", projectCompanyUserList);
		
		return "ListProjects";
	}
	@GetMapping("adminviewproject")
	public String adminViewProject(Integer projectId, Model model) {
		System.out.println("projectId => "+projectId);
	 	List<Object[]> projectsCompanyUserDetails = repositoryProject.findByProjectId(projectId);
		model.addAttribute("projects", projectsCompanyUserDetails);
		return "ViewProject";
	}
	@GetMapping("admineditproject")
	public String adminEditProject(Integer projectId, Model model) {
		Optional<ProjectsEntity> op = repositoryProject.findProjectByProjectId(projectId);
		if (op.isPresent()) {
		List<CompanyEntity> allCompanies = repositoryCompany.findAll();
		//fetches the data from controller in allCompanies to jsp
		model.addAttribute("allCompanies", allCompanies);
		model.addAttribute("editProjectDetail", op.get());
		return "EditProject";
		} else {
			System.out.println("Not Present");
			return "redirect:/admindashboard";
		}
	}
	@PostMapping("adminupdateproject")
	public String adminUpdateProject(Integer projectId, ProjectsEntity entityProject) {
		Optional<ProjectsEntity> op = repositoryProject.findById(projectId);
		if (op.isPresent()) {
			ProjectsEntity dbProject = op.get();
			
			dbProject.setActive(entityProject.getActive());
			dbProject.setCompanyId(entityProject.getCompanyId());
			dbProject.setDescription(entityProject.getDescription());
			dbProject.setTitle(entityProject.getTitle());
			
			repositoryProject.save(dbProject);
			return "redirect:/adminlistprojects";
		} else {
			return "redirect:/admindashboard";
		}
	}
	
	
	@GetMapping("admindeleteproject")
	public String adminDeleteProject(Integer projectId) {
		repositoryProject.deleteById(projectId);
		return "redirect:/adminlistprojects";
	}
	
	
}
