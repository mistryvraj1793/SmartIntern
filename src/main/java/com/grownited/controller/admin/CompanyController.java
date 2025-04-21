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
	public String adminCompany(CompanyEntity entityCompany) {
		
		
		return "Company";
	}
	@PostMapping("adminsavecompany")
	public String adminSaveCompany(Integer userId,Model model, CompanyEntity entityCompany) {
		System.out.println("userId =>"+userId);
		Optional<UserEntity> op = repositoryUser.findById(userId);
		if (op.isPresent()) {
			//for set as Default 
			entityCompany.setCreatedAt(LocalDate.now());
			entityCompany.setActive(true);
			entityCompany.setUserId(userId);
			System.out.println(entityCompany.getAnyOtherInfoUrl()); 
			
			//read from the company jsp
			System.out.println(entityCompany.getCompanyName());	
			
			//for save the attributes data into table company using object of a Singleton of ComapanyRepository class.
			repositoryCompany.save(entityCompany);
			return "redirect:/admindashboard";
		}
		else {
			//read from database
			System.out.println("Not Found!");
		}
		return "redirect:/admindashboard";
	}
	@GetMapping("adminlistcompanies")
	public String adminListCompanies(Model model) {
		List<Object[]> allCompanyUsersDetails = repositoryCompany.GetAll();
		model.addAttribute("allCompany", allCompanyUsersDetails);
		return "ListCompanies";
	}
	@GetMapping("adminviewcompany")
	public String adminViewCompany(Integer companyId, Model model) {
		System.out.println("id==> " + companyId);
		List<Object[]> viewCompanyUserDetails = repositoryCompany.findByCompanyId(companyId);
		model.addAttribute("companyUserDetails", viewCompanyUserDetails);
		/*
		 * Optional<CompanyEntity> op = repositoryCompany.findById(companyId);
		 * if(op.isEmpty()) { System.out.println("Not Found"); } else { CompanyEntity
		 * company= op.get();
		 * 
		 * model.addAttribute("company", company); }
		 */
		return "ViewCompany";
	}
	@GetMapping("admineditcompany")
	public String adminEditCompany(Integer companyId, Model model) {
		Optional<CompanyEntity> op = repositoryCompany.findById(companyId);
		if (op.isPresent()) {
			model.addAttribute("company", op.get());
			return "EditCompany";
		} else {
			return "redirect:/adminlistcompanies";
		}
	}
	@PostMapping("adminupdatecompany")
	public String adminUpdateCompany(Integer companyId, Integer userId, CompanyEntity entityCompany) {
		Optional<CompanyEntity> op = repositoryCompany.findById(companyId);
		if (op.isPresent()) {
			CompanyEntity dbCompany = op.get();
			dbCompany.setActive(entityCompany.getActive());
			dbCompany.setAddress(entityCompany.getAddress());
			dbCompany.setAnyOtherInfoUrl(entityCompany.getAnyOtherInfoUrl());
			dbCompany.setCompanyName(entityCompany.getCompanyName());
			dbCompany.setCompanyProfileUrl(entityCompany.getCompanyProfileUrl());
			dbCompany.setExternalGuide(entityCompany.getExternalGuide());
			dbCompany.setExternalGuideContactNum(entityCompany.getExternalGuideContactNum());
			dbCompany.setPersonName(entityCompany.getPersonName());
			dbCompany.setUrl(entityCompany.getUrl());
			dbCompany.setUserId(userId);
			repositoryCompany.save(dbCompany);
			return "redirect:/adminlistcompanies";
		} else {
			return "redirect:/admindashboard";
		}
	}
	
	@GetMapping("admindeletecompany")
	public String adminDeleteCompany(Integer companyId) {
		repositoryCompany.deleteById(companyId);
		return "redirect:/adminlistcompanies";
	}
	
	
	
}
