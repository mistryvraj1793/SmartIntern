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
import com.grownited.entity.InternshipEntity;
import com.grownited.entity.InternshipProjectEntity;
import com.grownited.entity.InternshipTechnologiesEntity;
import com.grownited.entity.ProjectsEntity;
import com.grownited.entity.TechnologiesEntity;
import com.grownited.repository.*;

@Controller
public class InternshipController {

	@Autowired
	InternshipRepository repositoryInternship;
	
	@Autowired
	CompanyRepository repositoryCompany;
	
	@Autowired
	UserRepository repositoryUser;
	
	@Autowired
	ProjectRepository repositoryProject;
	
	@Autowired
	TechnologiesRepository repositoryTechnology;
	
	@Autowired
	InternshipProjectRepository repositoryInternshipProject;
	
	@Autowired
	InternshipTechnologiesRepository repositoryInternshipTechnology;
	
	@GetMapping("admininternship")
	public String adminInternship(Model model) {
		List<CompanyEntity> allCompanies = repositoryCompany.findAll();
		List<ProjectsEntity> allProjects = repositoryProject.findAll();
		List<TechnologiesEntity> allTechnologies = repositoryTechnology.findAll();
		
		//fetches the data from Controller in allCompanies to jsp.
		model.addAttribute("allCompanies", allCompanies);
		model.addAttribute("allProjects", allProjects);
		model.addAttribute("allTechnologies", allTechnologies);
		return "Internship";
	}
	@PostMapping("saveinternship")
	public String saveinternship(InternshipEntity entityInternship, Model model, Integer userId,InternshipProjectEntity entityInternshipProject, InternshipTechnologiesEntity entityInternshipTechnology, Integer projectId, Integer technologyId) {	
		/*
		 * UserEntity user = (UserEntity) session.getAttribute("user"); Integer userId =
		 * user.getUserId();
		 */
		entityInternship.setPostedBy(userId);
		entityInternship.setCreatedAt(LocalDate.now());
		entityInternship.setStatus("OPEN");
		
		//print the data from Internship jsp form.
		System.out.println(entityInternship.getTitle());
		
		//store the data from Internship jsp form into table internship
		InternshipEntity savedInternship = repositoryInternship.save(entityInternship);
		
		//save into InternshipProject table:
		entityInternshipProject.setInternshipId(savedInternship.getInternshipId());
		entityInternshipProject.setProjectId(projectId);
		repositoryInternshipProject.save(entityInternshipProject);
		
		//save into InternshipTechnology table:
		entityInternshipTechnology.setInternshipId(savedInternship.getInternshipId());
		entityInternshipTechnology.setTechnologyId(technologyId);
		repositoryInternshipTechnology.save(entityInternshipTechnology);
		return "redirect:/admininternship";
	}
	@GetMapping("adminlistinternships")
	public String adminListinternships(Model model) {
		//fetchs the data from table internship into Controller in List internshipList
		List<Object[]> internshipList = repositoryInternship.GetAll();
		
		//store the data from list internshipList into internship jsp.
		model.addAttribute("allInternshipDetail", internshipList);
		
		return "ListInternships";
	}
	@GetMapping("adminviewinternship")
	public String adminViewInternship(Integer internshipId,Model model) {
		List<Object[]> viewInternshipByAdmin = repositoryInternship.GetPostedById(internshipId);
		model.addAttribute("viewInternship", viewInternshipByAdmin);
		return "ViewInternship";
	}
	
	@GetMapping("admineditinternship")
	public String admineditinternship(Integer internshipId, Model model) {
		Optional<InternshipEntity> op = repositoryInternship.findById(internshipId);
		if (op.isPresent()) {
			List<CompanyEntity> allCompanies = repositoryCompany.findAll();
			//fetches the data from Controller in allCompanies to jsp.
			model.addAttribute("allCompanies", allCompanies);
			
			model.addAttribute("admineditInternship", op.get());
			
			return "EditInternship";
		}
		else {
			return "redirect:/adminlistinternships";
		}
	}
	@PostMapping("adminupdateinternship")		
	public String adminUpdateInternship(InternshipEntity entityInternship, Model model) {
		System.out.println(entityInternship.getInternshipId()); 
		Optional<InternshipEntity> op = repositoryInternship.findById(entityInternship.getInternshipId());
		if (op.isPresent()) {
			InternshipEntity dbInternship = op.get();
			
			//set via dbInternship into internships table.
			dbInternship.setTitle(entityInternship.getTitle());
			dbInternship.setApplicationDeadLine(entityInternship.getApplicationDeadLine());
			dbInternship.setCompanyId(entityInternship.getCompanyId());
			dbInternship.setDescription(entityInternship.getDescription());
			dbInternship.setRequirements(entityInternship.getRequirements());
			dbInternship.setCompanyId(entityInternship.getCompanyId());
			dbInternship.setDurationWeeks(entityInternship.getDurationWeeks());
			dbInternship.setLocation(entityInternship.getLocation());
			dbInternship.setStatus(entityInternship.getStatus());
			dbInternship.setStipend(entityInternship.getStipend());
			
			repositoryInternship.save(dbInternship);
			return "redirect:/adminlistinternships";
		}
		else {
			return "redirect:/admindashboard";
		}
		
	}
	
	@GetMapping("admindeleteinternship")
	public String adminDeleteInternship(Integer internshipId) {
		repositoryInternship.deleteById(internshipId);
		return "redirect:/adminlistinternships";
	}
}
