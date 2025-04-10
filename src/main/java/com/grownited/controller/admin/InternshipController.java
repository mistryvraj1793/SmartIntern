package com.grownited.controller.admin;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.cloudinary.Cloudinary;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.grownited.entity.CompanyEntity;
import com.grownited.entity.InternshipEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CompanyRepository;
import com.grownited.repository.InternshipRepository;
import com.grownited.repository.UserRepository;

import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class InternshipController {

    private final Cloudinary cloudinary;
	@Autowired
	InternshipRepository repositoryInternship;
	
	@Autowired
	CompanyRepository repositoryCompany;
	
	@Autowired
	UserRepository repositoryUser;

    InternshipController(Cloudinary cloudinary) {
        this.cloudinary = cloudinary;
    }
	
	@GetMapping("admininternship")
	public String adminInternship(Model model) {
		
		List<CompanyEntity> allCompanies = repositoryCompany.findAll();
		
		//fetches the data from Controller in allCompanies to jsp.
		model.addAttribute("allCompanies", allCompanies);
				
		return "Internship";
	}
	@PostMapping("saveinternship")
	public String saveinternship(InternshipEntity entityInternship, Model model, HttpSession session) {	
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId();
		entityInternship.setPostedBy(userId);
		entityInternship.setCreatedAt(LocalDate.now());
		entityInternship.setStatus("OPEN");
		
		//print the data from Internship jsp form.
		System.out.println(entityInternship.getTitle());
		
		//store the data from Internship jsp form into table internship
		repositoryInternship.save(entityInternship);
		
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
