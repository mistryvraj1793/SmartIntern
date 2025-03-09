package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CompanyUserEntity;
import com.grownited.repository.CompanyUserRepository;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class CompanyUserController {
	@Autowired
	CompanyUserRepository repositoryCompanyUser;
	
	@GetMapping("companyuser")
	public String companyUser() {
		return "CompanyUser";
	}
	@PostMapping("savecompanyuser")
	public String saveCompanyUser(CompanyUserEntity entityCompanyUser) {
		//print the data from CompanyUser jsp form.
		System.out.println(entityCompanyUser.getTitle());
		
		//stored the data from the savecompanyuser url.
		repositoryCompanyUser.save(entityCompanyUser);
		return "CompanyUser";
	}
	@GetMapping("listcompanyuser")
	public String listCompanyUser(Model model) {
		//fetchs the data from table company_user into controller in list companyUserList.
		List<CompanyUserEntity>	companyUserList = repositoryCompanyUser.findAll();
		
		//fetchs the data from list companyuserList into ListCompanyUser jsp.
		model.addAttribute("companyUserList", companyUserList);
		
		return "ListCompanyUser";
	}
	@GetMapping("viewcompanyuser")
	public String viewCompanyUser(Integer companyUserId, Model model) {
		System.out.println("companyId => "+companyUserId);
		Optional<CompanyUserEntity> op = repositoryCompanyUser.findById(companyUserId);
		if(op.isEmpty()) {
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
	@GetMapping("deletecompanyuser")
	public String deleteCompanyUser(Integer companyUserId) {
		repositoryCompanyUser.deleteById(companyUserId);
		return "redirect:/listcompanyuser";
	}
	
}
