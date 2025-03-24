package com.grownited;

import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

@SpringBootApplication
public class SmartInternApplication {

	public static void main(String[] args) {
		SpringApplication.run(SmartInternApplication.class, args);
	}
	
	@Bean
	PasswordEncoder encoder() {
//		return new BCryptPasswordEncoder(5);//Uses default strength (10 rounds).
		return new BCryptPasswordEncoder(5); //Uses 5 rounds, making it faster but less secure.
	}
	
	@Bean
 	Cloudinary cloudinary() {
 		Map<String, String> config = ObjectUtils.asMap("cloud_name", "dzdca16gp", "api_key", "861963932898423",
 				"api_secret", "Hx_M0SqWFUxEVqPSHa2_KbDFfvo");
 		return new Cloudinary(config);
 	}
}
