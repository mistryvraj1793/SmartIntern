package com.grownited.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CompanyEntity;
import com.grownited.entity.InternshipEntity;
import com.grownited.entity.InternshipProjectEntity;
import com.grownited.entity.ProjectsEntity;
import com.grownited.entity.TechnologiesEntity;
import com.grownited.repository.CompanyRepository;
import com.grownited.repository.InternshipProjectRepository;
import com.grownited.repository.InternshipRepository;
import com.grownited.repository.ProjectRepository;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class InternshipProjectController {
	@Autowired
	InternshipProjectRepository repositoryInternshipProject;
	
	@Autowired
	InternshipRepository repositoryInternship;
	
	@Autowired
	ProjectRepository repositoryProject;
		
	@Autowired
	CompanyRepository repositoryCompany;
	
	@GetMapping("internshipproject")
	public String internshipProject(Model model) {
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
		return "redirect:/internshipproject";
	}
	
	@GetMapping("adminlistinternshipprojects")
	public String adminListInternshipProjects(Model model) {
		//fetchs the data from table internship_project, internship, projects into controller in list internshipProjectList
		List<Object[]> internshipProjectList = repositoryInternshipProject.GetAllDetails();
		System.out.println(internshipProjectList);
		//fetchs the data from list internshipProjectList
		model.addAttribute("internshipProjectList", internshipProjectList);
		return "ListInternshipProjects";
	}
	@GetMapping("adminviewinternshipproject")
	public String adminViewInternshipProject(Integer internshipProjectId, Model model) {
		System.out.println("InternshipProjectId => "+internshipProjectId);
		List<Object[]> internshipProjectDetails = repositoryInternshipProject.GetInternshipProjectDetailsById(internshipProjectId);	
		//fetches the data from controller in internshipProject to jsp
		model.addAttribute("internshipProjectDetails", internshipProjectDetails);	
		return "ViewInternshipProject";
	}
	
	@GetMapping("admineditinternshipproject")
	public String admineditinternshipproject(Integer internshipProjectId, Model model) {
	    Optional<InternshipProjectEntity> op = repositoryInternshipProject.findById(internshipProjectId);
	    if (op.isPresent()) {
	        InternshipProjectEntity editInternshipProject = op.get();

	        List<InternshipEntity> allInternships = repositoryInternship.findAll();
	        List<ProjectsEntity> allProjects = repositoryProject.findAll();
	        List<CompanyEntity> allCompanies = repositoryCompany.findAll();

	        // Fetch selected project's companyId
	        Optional<ProjectsEntity> selectedProject = repositoryProject.findById(editInternshipProject.getProjectId());
	        Integer selectedCompanyId = selectedProject.isPresent() ? selectedProject.get().getCompanyId() : null;

	        model.addAttribute("editInternshipProject", editInternshipProject);
	        model.addAttribute("selectedCompanyId", selectedCompanyId); // 👈 passing selected companyId
	        model.addAttribute("allInternships", allInternships);
	        model.addAttribute("allCompanies", allCompanies);
	        model.addAttribute("allProjects", allProjects);
	        return "EditInternshipProject";
	    } else {
	        return "redirect:/adminlistinternshipprojects";
	    }
	}


	@GetMapping("admindeleteinternshipproject")
	public String adminDeleteInternshipProject(Integer internshipProjectId) {
		repositoryInternshipProject.deleteById(internshipProjectId);
		
		return "redirect:/adminlistinternshipprojects";
	}
	
}
