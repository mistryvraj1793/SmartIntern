package com.grownited.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CompanyEntity;
import com.grownited.entity.CompanyUserEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CompanyRepository;
import com.grownited.repository.CompanyUserRepository;
import com.grownited.repository.UserRepository;

@Controller
public class CompanyUserController {
	@Autowired
	CompanyUserRepository repositoryCompanyUser;
	
	@Autowired
	CompanyRepository repositoryCompany;
	
	@Autowired
	UserRepository repositoryUser;
	
	@GetMapping("companyuser")
	public String companyUser(Model model) {
		List<CompanyEntity> allCompanies = repositoryCompany.findAll();
		List<UserEntity> allUsers = repositoryUser.findAll();
		
		//fetches the data from Controller in allCompanies and allUsers to jsp.
		model.addAttribute("allCompanies", allCompanies);
		model.addAttribute("allUsers", allUsers);
		
		return "CompanyUser";
	}
	@PostMapping("savecompanyuser")
	public String saveCompanyUser(CompanyUserEntity entityCompanyUser) {
		//print the data from CompanyUser jsp form.
		System.out.println(entityCompanyUser.getTitle());
		
		//stored the data from the savecompanyuser url.
		repositoryCompanyUser.save(entityCompanyUser);
		return "redirect:/companyuser";
	}
	@GetMapping("adminlistcompanyusers")
	public String adminListCompanyUsers(Model model) {
		//fetchs the data from table company_user into controller in list companyUserList.
		List<CompanyUserEntity>	companyUserList = repositoryCompanyUser.findAll();
		
		//fetchs the data from list companyuserList into ListCompanyUser jsp.
		model.addAttribute("companyUserList", companyUserList);
		
		return "ListCompanyUsers";
	}
	@GetMapping("adminviewcompanyuser")
	public String adminViewCompanyUser(Integer companyUserId, Model model) {
		System.out.println("companyId => "+companyUserId);
		Optional<CompanyUserEntity> op = repositoryCompanyUser.findById(companyUserId);
		if(!op.isPresent()) {
			//Data Not Found:
			System.out.println("Not Found");
		}
		else {
			//Data Found:
			CompanyUserEntity companyUser =op.get();
			
			//send data to jsp:
			model.addAttribute("companyUser", companyUser);
		}
		return "ViewCompanyUser";
	}
	@GetMapping("admindeletecompanyuser")
	public String adminDeleteCompanyUser(Integer companyUserId) {
		repositoryCompanyUser.deleteById(companyUserId);
		return "redirect:/adminlistcompanyusers";
	}
	
}
