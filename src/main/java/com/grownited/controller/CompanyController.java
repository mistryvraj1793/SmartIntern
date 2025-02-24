package com.grownited.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

//import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CompanyEntity;
import com.grownited.repository.CompanyRepository;



@Controller
public class CompanyController {
	@Autowired
	CompanyRepository repositoryCompany;
	
	@GetMapping("company")
	public String company() {
		return "Company";
	}
	@PostMapping("savecompany")
	public String saveCompany(CompanyEntity entityCompany) {
		//read from the company jsp
		System.out.println(entityCompany.getCompanyName());
		
		//for set as Default 
		entityCompany.setCreatedAt(new Date());
		entityCompany.setActive(true);
		
		//for save the attributes data into table company using object of a Singleton of ComapanyRepository class.
		repositoryCompany.save(entityCompany);
		
		//read from database
		return "redirect:/company";
	}
	@GetMapping("listcompany")
	public String listCompany(Model model) {
	//how to sends data from database to Controller:
	//This statement retrieves all records from the company table and stores them in a List<CompanyEntity> collection.
	List<CompanyEntity>	companyList = repositoryCompany.findAll();
	
	//how to sends data from controller to jsp
	model.addAttribute("companylist", companyList);
		return "ListCompany";
	}
	@GetMapping("viewcompany")
	public String viewCompany(Integer companyId, Model model) {
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
	@GetMapping("deletecompany")
	public String deleteCompany(Integer companyId) {
		repositoryCompany.deleteById(companyId);
		return "redirect:/listcompany";
	}
	
	
	
}
