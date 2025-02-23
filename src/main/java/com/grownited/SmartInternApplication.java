package com.grownited;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

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
}
