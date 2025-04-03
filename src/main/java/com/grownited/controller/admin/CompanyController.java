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
import com.grownited.entity.UserEntity;
import com.grownited.repository.CompanyRepository;
import com.grownited.repository.UserRepository;



@Controller
public class CompanyController {
	@Autowired
	CompanyRepository repositoryCompany;
	
	@Autowired
	UserRepository repositoryUser;
	
	@GetMapping("admincompany")
	public String adminCompany(Model model) {
		List<UserEntity> allUsers= repositoryUser.findAll();
		
		//Fetches the data from Controller in allUsers to jsp.
		model.addAttribute("allUsers", allUsers);
		return "Company";
	}
	@PostMapping("adminsavecompany")
	public String adminSaveCompany(CompanyEntity entityCompany) {
		//read from the company jsp
		System.out.println(entityCompany.getCompanyName());
		
		//for set as Default 
		entityCompany.setCreatedAt(LocalDate.now());
		entityCompany.setActive(true);
		
		//for save the attributes data into table company using object of a Singleton of ComapanyRepository class.
		repositoryCompany.save(entityCompany);
		
		//read from database
		return "redirect:/admincompany";
	}
	@GetMapping("adminlistcompanies")
	public String adminListCompanies(Model model) {
	//how to sends data from database to Controller:
	//This statement retrieves all records from the company table and stores them in a List<CompanyEntity> collection.
	List<CompanyEntity>	companyList = repositoryCompany.findAll();
	
	//how to sends data from controller to jsp
	model.addAttribute("companyList", companyList);
		return "ListCompanies";
	}
	@GetMapping("adminviewcompany")
	public String adminViewCompany(Integer companyId, Model model) {
		System.out.println("id==> " + companyId);
		
		Optional<CompanyEntity> op = repositoryCompany.findById(companyId);
		if(op.isEmpty()) {
			System.out.println("Not Found");
		}
		else {
			CompanyEntity company= op.get();
			
			model.addAttribute("company", company);
		}
		return "ViewCompany";
	}
	@GetMapping("admindeletecompany")
	public String adminDeleteCompany(Integer companyId) {
		repositoryCompany.deleteById(companyId);
		return "redirect:/adminlistcompanies";
	}
	
	
	
}
