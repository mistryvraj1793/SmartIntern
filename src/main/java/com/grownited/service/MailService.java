package com.grownited.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailService {
	@Autowired
	JavaMailSender mailSender; //Inject JavaMailSender
//	This service method will send a welcome email when called.

	public void sendWelcomeMail(String email, String firstName) {
		String subject ="Welcome to SmartIntern";
		String body ="Hey "+ firstName +", We're excited to have you on board. If you have any questions, feel free to reach out – we’re here to help!";
		String from ="mistryvraj1234@gmail.com";

		//Logic:
		//Creates an email service to send simple text emails.
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom(from);
		message.setTo(email);
		message.setSubject(subject);
		message.setText(body);
		
		mailSender.send(message);
	}
	
	public void SendOtpForForgetPassword(String email, String firstName, String otp) {
		String subject = "OTP for ResetPassword";
		String body = "Hey " +firstName+ ", It seems you have request for forget password, please use below otp for reset password. If not then simply ignore the message! And Do not Share to Anyone OTP: " +otp;
		String from = "mistryvraj1234@gmail.com";
		
		//Logic:
		//Creates an email service to send simple text emails.
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom(from);
		message.setTo(email);
		message.setSubject(subject);
		message.setText(body);
		
		mailSender.send(message);
	}
	
}
