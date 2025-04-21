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
		List<Object[]>	companyUserList = repositoryCompanyUser.GetAll();
		
		//fetchs the data from list companyuserList into ListCompanyUser jsp.
		model.addAttribute("companyUserList", companyUserList);
		
		return "ListCompanyUsers";
	}
	@GetMapping("adminviewcompanyuser")
	public String adminViewCompanyUser(Integer companyUserId, Model model) {
		System.out.println("companyId => "+companyUserId);
		Optional<CompanyUserEntity> op = repositoryCompanyUser.findById(companyUserId);
		if(op.isPresent()) {
			//Data Found:
			List<Object[]> companyUser = repositoryCompanyUser.findByCompanyUserId(companyUserId);
			//send data to jsp:
			model.addAttribute("companyUser", companyUser);
		}
		else {
			//Data Not Found:
			System.out.println("Not Found");
			return "redirect:/admindashboard";
		}
		return "ViewCompanyUser";
	}
	@GetMapping("admineditcompanyuser")
	public String admineditcompanyuser(Integer companyUserId, Model model) {
		Optional<CompanyUserEntity> op = repositoryCompanyUser.findById(companyUserId);
		if (op.isPresent()) {
			List<Object[]> editCompanyUser = repositoryCompanyUser.GetCompanyUserByCompanyUserId(companyUserId);
			List<CompanyEntity> allCompanies = repositoryCompany.findAll();
				
			//fetches the data from Controller in allCompanies to jsp.
			model.addAttribute("allCompanies", allCompanies);
			model.addAttribute("companyUser", editCompanyUser);
			return "EditCompanyUser";
		} else {
			System.out.println("Id Doesn't Exist");
			return "redirect:/adminlistcompanyusers";
		}
		
	}
	@PostMapping("adminupdatecompanyuser")
	public String adminupdatecompanyuser(Integer companyUserId, Integer userId, CompanyUserEntity entityCompanyUser, UserEntity entityUser) {
		Optional<CompanyUserEntity> compUserOptn = repositoryCompanyUser.findById(companyUserId);
		if (compUserOptn.isPresent()) {
			CompanyUserEntity dbCompanyUser = compUserOptn.get();
			dbCompanyUser.setCompanyId(companyUserId);
			dbCompanyUser.setTitle(entityCompanyUser.getTitle());
			dbCompanyUser.setUserId(userId);
			
			if (entityCompanyUser.getTitle().equals("HR")) {
				System.out.println(entityCompanyUser.getTitle());
				entityUser.setRole("HR");
			} 
			else if(entityCompanyUser.getTitle().equals("MENTOR")) {
				System.out.println(entityCompanyUser.getTitle());
				entityUser.setRole("MENTOR");
			} 
			UserEntity savedUser = repositoryUser.save(entityUser); 
			CompanyUserEntity savedCompanyUser = repositoryCompanyUser.save(dbCompanyUser);
			return "redirect:/adminlistcompanyusers";	
		} 
		else {
				System.out.println("userId Not Found");
				return "redirect:/admindashboard";
			}
		
	}
	
	
	@GetMapping("admindeletecompanyuser")
	public String adminDeleteCompanyUser(Integer companyUserId) {
		repositoryCompanyUser.deleteById(companyUserId);
		return "redirect:/adminlistcompanyusers";
	}
	
}
