package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;

@Controller
public class SessionController {
	//@GetMapping(value = {"/","signup","SIGNUP"})
	@GetMapping("signup")//url
	public String signup() {
		return "Signup";//jsp file name
	}
	@GetMapping("login")
	public String login() {
		return "Login";
	}
	@PostMapping("saveuser")
	public String saveUser(UserEntity userEntity) { //UserEntity is a class and userEntity is a object of that class.
		
		//read:
		System.out.println(userEntity.getFirstName());
		System.out.println(userEntity.getLastName());
		System.out.println(userEntity.getEmail());
		System.out.println(userEntity.getPassword());
		System.out.println(userEntity.getGender());
		return "Login";
	}
	@GetMapping("forgetpassword")
	public String forgetPassword() {
		return "ForgetPassword";
	}
	@PostMapping("resetpassword")
	public String updatePassword(){
		return "Login";
	}
}
