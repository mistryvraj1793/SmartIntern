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
	    String subject = "🎉 Welcome to SmartIntern – Your Account Has Been Created!";
	    
	    String body = "Hello " + firstName + ",\n\n" +
	                  "Welcome to *SmartIntern*! We're thrilled to have you on board.\n\n" +
	                  "Your account has been successfully created, and you're all set to explore exciting internship opportunities.\n\n" +
	                  "If you have any questions or need assistance, feel free to reach out – we're here to help you succeed!\n\n" +
	                  "Wishing you a great journey ahead,\n\n" +
	                  "Best regards,\n" +
	                  "SmartIntern Team";
	    
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
	public void sendHrMentorWelcomeMail(String email, String firstName, String role) {
	    String subject = "🎉 Welcome to SmartIntern – Your " + role + " Account Is Ready!";
	    
	    String body = "Hello " + firstName + ",\n\n" +
	                  "Welcome aboard as a " + role + " on *SmartIntern*! We’re excited to have you join our mission of shaping the future of aspiring interns.\n\n" +
	                  "Your account has been successfully created, and you can now log in to start managing your internship roles, mentoring students, and collaborating with your company team.\n\n" +
	                  "If you have any questions or need support, our team is always here to assist you.\n\n" +
	                  "Wishing you a great journey with SmartIntern!\n\n" +
	                  "Best regards,\n" +
	                  "SmartIntern Team";
	    
	    String from = "mistryvraj1234@gmail.com";

	    SimpleMailMessage message = new SimpleMailMessage();
	    message.setFrom(from);
	    message.setTo(email);
	    message.setSubject(subject);
	    message.setText(body);

	    mailSender.send(message);
	}

	public void sendOtpForForgetPassword(String email, String firstName, String otp) {
	    String subject = "🔐 SmartIntern – Password Reset OTP";

	    String body = "Hello " + firstName + ",\n\n" +
	                  "We received a request to reset your SmartIntern password. Please use the OTP below to proceed with resetting your password:\n\n" +
	                  "👉 Your OTP: **" + otp + "**\n\n" +
	                  "This OTP is valid for a limited time. If you didn’t request a password reset, please ignore this email or contact support immediately.\n\n" +
	                  "Stay secure,\n" +
	                  "SmartIntern Team";

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
	
	public void sendPaymentStatusMail(String email, String firstName, Double amount, String last4Digits) {
	    String subject = "Internship Payment Confirmation";
	    String body = "Hello " + firstName + ",\n\n"
	            + "This is to confirm that we have received your payment for the internship.\n"
	            + "Amount: ₹" + amount + "\n"
	            + "Card Number (Last 4 Digits): **** **** **** " + last4Digits + "\n\n"
	            + "Thank you for being a part of SmartIntern!\n\n"
	            + "Regards,\n"
	            + "SmartIntern Team";

	    String from = "mistryvraj1234@gmail.com";

	    // logic
	    SimpleMailMessage message = new SimpleMailMessage();

	    message.setFrom(from);
	    message.setTo(email);
	    message.setSubject(subject);
	    message.setText(body);

	    mailSender.send(message);
	}


	
}
