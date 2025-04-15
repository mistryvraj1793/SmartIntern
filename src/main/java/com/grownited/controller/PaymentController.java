package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.InternshipApplicationEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.InternshipApplicationRepository;
import com.grownited.service.MailService;
import com.grownited.service.PaymentService;

import jakarta.servlet.http.HttpSession;

@Controller
public class PaymentController {

	
	@Autowired
	PaymentService servicePayment;
	
	@Autowired
	InternshipApplicationRepository internshipApplicationRepository;
	
	@Autowired 
	MailService mailService;
	
	
	@GetMapping("applicationfee")
	public String applicationFee(Model model) {
		
		model.addAttribute("amount", 500.0);
		return "ApplicationFee";
	}
	
	@PostMapping("applicationpayment")
	public String applicationPayment(Double amount,String ccNum,String expDate,String email, HttpSession session, Integer applicationId) {
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		//("9G7ERUQ4yt7Q", "7MR382D8Rvvm2qjR", 500.0, ccNum, expDate, user.getEmail()
		Integer paymentId = servicePayment.chargeCreditCard("9G7ERUQ4yt7Q", "7MR382D8Rvvm2qjR", 500.0, ccNum, expDate, user.getEmail());
		
		InternshipApplicationEntity dbApplication = internshipApplicationRepository.findById(applicationId).get();
		
		dbApplication.setPaymentId(paymentId);
		internshipApplicationRepository.save(dbApplication);
		
		
		String last4 = ccNum.substring(ccNum.length() - 4);
		mailService.sendPaymentStatusMail(user.getEmail(), user.getFirstName(), amount, last4);
		
		
		return "redirect:/userdashboard";
		
		//"9G7ERUQ4yt7Q", "7MR382D8Rvvm2qjR"
	}
}
