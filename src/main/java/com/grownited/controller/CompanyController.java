package com.grownited.controller;

import java.util.Date;

//import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CompanyEntity;
import com.grownited.repository.CompanyRepository;

@Controller
public class CompanyController {
	@Autowired
	CompanyRepository repositoryCompany;
	
	@GetMapping("addcompany")
	public String addCompany() {
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
		return "Company";
	}
	
}
