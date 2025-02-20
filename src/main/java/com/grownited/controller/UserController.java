package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	UserRepository repositoryUser;
	
	@GetMapping("listuser")
	public String listUser(Model model) {
		//how to sends data from database to Controller:
		//This statement retrieves all records from the users table and stores them in a List<UserEntity> collection.
		 List<UserEntity> userList = repositoryUser.findAll();// repositoryUser.findAll() works was select * from users(i.e;fetches all records from the users table.); 
		 //and this statement can do read all users from database to controller 
		
		 //how to sends data from controller to jsp
		 model.addAttribute("userList", userList);//where "userList" is a DataName and userList is a DataValue
		 return "ListUser";
	}
}
