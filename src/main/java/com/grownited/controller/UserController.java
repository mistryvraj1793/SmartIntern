package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	UserRepository repositoryUser;

	@GetMapping("userdashboard")
	public String userDashboard() {
		return "UserDashboard";
	}
	
	@GetMapping("home")
	public String home() {
		return "Home";
	}
	@GetMapping("adminlistusers")
	public String adminListUsers(Model model) {
		//how to sends data from database to Controller:
		//This statement retrieves all records from the users table and stores them in a List<UserEntity> collection.
		 List<UserEntity> userList = repositoryUser.findAll();// repositoryUser.findAll() works was select * from users(i.e;fetches all records from the users table.); 
		 //and this statement can do read all users from database to controller 
		
		 //how to sends data from controller to jsp
		 model.addAttribute("userList", userList);//where "userList" is a DataName and userList is a DataValue
		 return "ListUsers";
	}
	
	@GetMapping("adminviewuser")
	public String adminViewUser(Integer userId, Model model) {
		System.out.println("id => "+userId);
		Optional<UserEntity> op = repositoryUser.findById(userId);
		if(op.isEmpty()) {
			//not found but we dont consider this case.
			System.out.println("Not found"); // If user is not found
		} 
		else{
			//data found
			UserEntity user = op.get();
			//send data to jsp
			model.addAttribute("user", user); // Pass user data to JSP
		}
		return "ViewUser"; // Display ViewUser.jsp
	}
	@GetMapping("adminedituser")
	public String adminEditUser(Integer userId, Model model) {
		Optional<UserEntity> op = repositoryUser.findById(userId);
		if(op.isEmpty()) {
			return "redirect:/adminlistusers";
		}
		else {
			model.addAttribute("user", op.get());
			return "EditUser";
		}
		//save -> entity -> no id present -> redirect to listusers 
	 	//save -> entity -> id present -> not present in db -> insert  
	}
	@PostMapping("updateuser")
	public String adminUpdateUser(UserEntity entityUser){
		//save -> entity -> id present -> present in db -> update
		System.out.println(entityUser.getUserId()); 
		Optional<UserEntity> op = repositoryUser.findById(entityUser.getUserId());
		if (op.isPresent()) {
			UserEntity dbUser = op.get();
			
			dbUser.setFirstName(entityUser.getFirstName());
			dbUser.setLastName(entityUser.getLastName());
			dbUser.setEmail(entityUser.getEmail());
			dbUser.setGender(entityUser.getGender());
			dbUser.setRole(entityUser.getRole());
			dbUser.setContactNum(entityUser.getContactNum());
			dbUser.setBornYear(entityUser.getBornYear());
			repositoryUser.save(dbUser);
		}
		return "redirect:/adminlistusers";
	}
	@GetMapping("admindeleteuser")
	public String adminDeleteUser(Integer userId) {
		repositoryUser.deleteById(userId); //delete from users where userId = :userId or  Deletes user from database
		return "redirect:/adminlistusers"; // Redirects to the user list page
	}

}