
package com.grownited.controller;

import java.util.Date;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;

@Controller
public class SessionController {
	@Autowired
	PasswordEncoder encoder;
	
	@Autowired
	MailService serviceMail;
	
	@Autowired
	UserRepository repositoryUser; //we directly can't create object of a instance (i.e UserRepository).
	//@GetMapping(value = {"/","signup","SIGNUP"})
	
	@GetMapping("signup")//url
	public String signup() {
		return "Signup";//jsp file name
	}
	@PostMapping("saveuser")
	public String saveUser() {
		return "Login";
	}
	@GetMapping("login")
	public String login() {
		return "Login";
	}
	@GetMapping("forgetpassword")
	public String forgetPassword() {
		return "ForgetPassword";
	}
	@PostMapping("resetpassword")
	public String resetPassword(){
		return "UpdatePassword";
	}
	@PostMapping("updatepassword")
	public String updatePassword() {
		return "Login";
	}
	@GetMapping("register")
	public String newRegister() {
		return "Register";
	}
	@PostMapping("saveregister")
	public String saveUser(UserEntity entityUser) { //UserEntity is a class and userEntity is a object of that class.
		
		//read from the jsp input in the browser:
//		System.out.println(entityUser.getFirstName());
//		System.out.println(entityUser.getLastName());
//		System.out.println(entityUser.getEmail());
//		System.out.println(entityUser.getPassword());
//		System.out.println(entityUser.getGender());
		
		//By-default set as:
		entityUser.setCreatedAt(new Date());//sets createdAt to the current system time.
		entityUser.setRole("USER");
		entityUser.setActivate(true);
		
		//Password encoder:
		String encordePassword = encoder.encode(entityUser.getPassword());
		System.out.println(encordePassword);
		entityUser.setPassword(encordePassword);
		
		//Write into a entity or table:
		repositoryUser.save(entityUser); //Saves the entityUser object (which represents a user) into the database table users, using .save(entityUser)
		
		// send mail
		serviceMail.sendWelcomeMail(entityUser.getEmail(), entityUser.getFirstName() );
		return "Register";
	}
	
	@PostMapping("authenticate")
	public String authenticate(String email, String password,Model model) { //soham@gmail.com   soham //not register
		System.out.println(email);
		System.out.println(password);
		
		//users ->email,password
		Optional<UserEntity> op = repositoryUser.findByEmail(email); //select * from users where email = :email and password = :password
		if(op.isPresent()) { //isPresent() return a boolean datatype (i.e;either true or false).
			//email
			UserEntity dataBaseUser=op.get();
			if(encoder.matches(password, dataBaseUser.getPassword())) {
				return "Register";
			}
		}
		else {
			model.addAttribute("error", "Invalid Credentials");//you don't tell to your that your password is incorrect (i.e;either email or password is incorrect).
		}
		
		return "Login";
	}

}

