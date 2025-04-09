package com.grownited.controller.admin;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;



@Controller
public class AdminController {
	@Autowired
	UserRepository repositoryUser;
	
	@Autowired
	PasswordEncoder encoder;
	
	@GetMapping("admindashboard")
	public String adminDashboard() {
		return "AdminDashboard";
	}
	@GetMapping("hrmentordashboard")
	public String hrMentorDashboard() {
		return "HrMentorDashboard";
	}
	@GetMapping("adminadduser")
	public String adminAddUser() {
		return "AddUser";
	}
	@PostMapping("adminsaveuser")
	public String adminSaveUser(UserEntity entityUser) {
		entityUser.setCreatedAt(LocalDate.now());//sets createdAt to the current system time.
		entityUser.setActivate(true);
		
		//Password encoder:
		String encordPassword = encoder.encode(entityUser.getPassword());
		System.out.println(encordPassword);
		entityUser.setPassword(encordPassword);
		
		if (entityUser.getRole().equals("HR")) {
			System.out.println(entityUser.getRole());
			entityUser.setRole("HR");
		} 
		else if (entityUser.getRole().equals("MENTOR")) {
			System.out.println(entityUser.getRole());
			entityUser.setRole("MENTOR");
		} 
		repositoryUser.save(entityUser);
		return "redirect:/adminadduser";
	}
	
}
