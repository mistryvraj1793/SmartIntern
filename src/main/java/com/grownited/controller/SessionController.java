package com.grownited.controller;

import java.time.LocalDate;
import java.util.Enumeration;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.StudentDetailEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.StudentDetailRepository;
import com.grownited.repository.UserRepository;
import com.grownited.service.MailService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SessionController {
	@Autowired
	PasswordEncoder encoder;
	
	@Autowired
	MailService serviceMail;
	
	@Autowired
	UserRepository repositoryUser;//we directly can't create object of a instance (i.e UserRepository).
	
	@Autowired
	StudentDetailRepository repositoryStudentDetail;
	
	//@GetMapping(value = {"/","signup","SIGNUP"})
	@GetMapping("signup")//url
	public String signup() {
		return "Signup";//jsp file name
	}
	@GetMapping("login")
	public String login() {
		return "Login";
	}
	@GetMapping("forgetpassword")
	public String forgetPassword() {
		return "ForgetPassword";
	}
	@PostMapping("sendotp")
	public String sendOtp(String email, Model model){
		Optional<UserEntity> op = repositoryUser.findByEmail(email);
		if(!op.isPresent()) {
			//email is Invalid:
			System.out.println("Email not Found!");
			model.addAttribute("error", "Email not Found!");
			return "ForgetPassword";
		}
		else {
			//email is Valid:
			//Generate otp 
			//send mail with otp
			
			String otp="";
			//generate otp with random method
			otp = (int)(Math.random() * 1000000)+"";//if you don't convert to int datatype then otp look like: 949298.1878581222
			//stored otp into Users table with set otp using UserEntity object user
			UserEntity user = op.get();
			user.setOtp(otp);
			
			//insert otp using repositoryUser object using save method.
			repositoryUser.save(user);//update otp for user
			
			serviceMail.sendOtpForForgetPassword(email, user.getFirstName(), otp);
			return "UpdatePassword";
		}
	}
	@PostMapping("updatepassword")
	public String updatePassword(String email, String otp, String password, Model model) {
		Optional<UserEntity> op = repositoryUser.findByEmail(email);
		if(!op.isPresent()) {
			//invalid data
			model.addAttribute("error", "Invalid Data");
			return "UpdatePassword";
		}
		else {
			UserEntity user = op.get();
			if(user.getOtp().equals(otp)) {//valid otp
				//encrypt the password and store it into encryptPassword
				String encryptPassword = encoder.encode(password);
				//
				user.setPassword(encryptPassword);
				user.setOtp("");
				repositoryUser.save(user);//password Updated and stored in users table.
			}
			else {
				//invalid otp
				model.addAttribute("error", "Invalid OTP");
				return "UpdatePassword";
			}
		}
		model.addAttribute("msg", "Password Updated");
		return "Login";
	}
	@PostMapping("saveuser")
	public String saveUser(UserEntity entityUser) { //UserEntity is a class and userEntity is a object of that class.	
		//read from the jsp input in the browser:
//		System.out.println(entityUser.getFirstName());

		
		//By-default set as:
		entityUser.setCreatedAt(LocalDate.now());//sets createdAt to the current system time.
		entityUser.setRole("USER");
		entityUser.setActivate(true);
		
		//Password encoder:
		String encordPassword = encoder.encode(entityUser.getPassword());
		System.out.println(encordPassword);
		entityUser.setPassword(encordPassword);
		
		//Write into a entity or table:
		repositoryUser.save(entityUser); //Saves the entityUser object (which represents a user) into the database table users, using .save(entityUser)
		
		// send mail
		serviceMail.sendWelcomeMail(entityUser.getEmail(), entityUser.getFirstName() );
		return "Login";
	}
	
	@PostMapping("authenticate")
	public String authenticate(String email, String password,Model model,HttpSession session) { //soham@gmail.com   soham //not register
		System.out.println(email);
		System.out.println(password);
		
		//users ->email,password
		Optional<UserEntity> op = repositoryUser.findByEmail(email); //select * from users where email = :email and password = :password
		if(op.isPresent()) { //isPresent() return a boolean datatype (i.e;either true or false).
			//email (i.e;true)
			UserEntity dataBaseUser=op.get();
			System.out.println("Email id is correct");
			//password (i.e;true)
			if(encoder.matches(password, dataBaseUser.getPassword())) {
				
				//using session object to store users information
				boolean ans = encoder.matches(password, dataBaseUser.getPassword());
				
				System.out.println("Password is Correct");
				if(ans==true) {
					session.removeAttribute("user");

					session.setAttribute("user", dataBaseUser); //session -> user set
					
					//set the session for studentDetail through userId			
					
					UserEntity user = (UserEntity) session.getAttribute("user");
					Integer userId =user.getUserId(); 
					//System.out.println("Id => "+userId);

		            // fetch corresponding studentDetail if exists
					/*
					 * Optional<StudentDetailEntity> studentDetailOptn =
					 * repositoryStudentDetail.findByUserId(userId); if
					 * (studentDetailOptn.isPresent()) { StudentDetailEntity dataBaseStudentDetail =
					 * studentDetailOptn.get(); session.setAttribute("studentDetail",
					 * dataBaseStudentDetail); //System.out.println(dataBaseStudentDetail); }
					 */
					
					//checking the role is ADMIN or Not.
					if(dataBaseUser.getRole().equals("ADMIN")) {
						System.out.println("It is Admin role");
						return "redirect:/admindashboard";
					}
					else if(dataBaseUser.getRole().equals("HR")) {
						System.out.println("It is Hr role");
						return "redirect:/hrmentordashboard";
					}
					else if(dataBaseUser.getRole().equals("MENTOR")) {
						System.out.println("It is Mentor role");
						return "redirect:/hrmentordashboard";
					}
					else if (dataBaseUser.getRole().equals("USER") || dataBaseUser.getRole().equals("INTERN")) {
						System.out.println("It is User role");
						return "redirect:/userdashboard";
					}
					else {
						model.addAttribute("error", "Please contact with Error code #0991");
						System.out.println("It is not a Admin and User role");
						return "Login";
					}
					
				}
			
			}
		}
		else {
			model.addAttribute("error", "Invalid Credentials");//you don't tell to your that your password is incorrect (i.e;either email or password is incorrect).
			System.out.println("Invalid Email or Password!");
			return "Login";
		}
		return "Signup";
	}
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}

}

