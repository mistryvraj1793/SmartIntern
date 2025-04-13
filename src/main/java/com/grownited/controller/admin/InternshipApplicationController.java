package com.grownited.controller.admin;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.grownited.entity.InternshipApplicationEntity;
import com.grownited.entity.InternshipEntity;
import com.grownited.entity.StudentDetailEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.InternshipApplicationRepository;
import com.grownited.repository.InternshipRepository;
import com.grownited.repository.StudentDetailRepository;
import com.grownited.repository.UserRepository;

import jakarta.servlet.http.HttpSession;


@Controller
public class InternshipApplicationController {
	@Autowired
	InternshipApplicationRepository repositoryInternshipApplication;
	
	@Autowired
	InternshipRepository repositoryInternship;
	
	@Autowired
	UserRepository repositoryUser;
	
	@Autowired
	Cloudinary cloudinary;
	
	@Autowired
	StudentDetailRepository repositoryStudentDetail;
	
	@GetMapping("userinternshipapplications")
	public String userInternshipApplications(Integer internshipId,Model model) {
		Optional<InternshipEntity> op = repositoryInternship.findById(internshipId);
		if (op.isPresent()) {
		 	InternshipEntity internshipById = op.get();
		 	model.addAttribute("internshipById", internshipById);
		 	return "InternshipApplications";
		}
		else {
			return "redirect:/userstudentdetail";
		}
	}
	@PostMapping("saveinternshipapplication")
	public String saveInternshipApplication(Integer internshipId, InternshipApplicationEntity entityInternshipApplication, MultipartFile resume, MultipartFile coverLetter, HttpSession session) {
	    UserEntity user = (UserEntity) session.getAttribute("user");
	    Integer userId = user.getUserId();
	    StudentDetailEntity studentDetail = (StudentDetailEntity) session.getAttribute("studentDetail");

	    Optional<InternshipEntity> internshipOptn = repositoryInternship.findById(internshipId);
	    Optional<UserEntity> userOptn = repositoryUser.findById(userId);

	    if (internshipOptn.isPresent()) {
	        entityInternshipApplication.setUserId(userId);
	        entityInternshipApplication.setInternshipId(internshipId);
	        entityInternshipApplication.setAppliedAt(LocalDate.now());
	        entityInternshipApplication.setStatus("PENDING");

	        // Update user role to INTERN if present
	        if (userOptn.isPresent()) {
	            UserEntity dbUser = userOptn.get();
	            dbUser.setRole("INTERN");
	            repositoryUser.save(dbUser);
	        }

	        // Upload resume if student detail not present or resume is missing
	        if (studentDetail == null || studentDetail.getResumePath() == null) {
	            try {
	                Map resultResume = cloudinary.uploader().upload(resume.getBytes(), ObjectUtils.emptyMap());
	                entityInternshipApplication.setResumePath(resultResume.get("url").toString());
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        } else {
	            entityInternshipApplication.setResumePath(studentDetail.getResumePath());
	        }
	        
	     // Only upload cover letter if user uploaded one (optional)
	        if (coverLetter != null && coverLetter.getSize() > 0) {
	            try {
	                Map resultCoverLetter = cloudinary.uploader().upload(coverLetter.getBytes(), ObjectUtils.emptyMap());
	                entityInternshipApplication.setCoverLetterPath(resultCoverLetter.get("url").toString());
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        }

	        repositoryInternshipApplication.save(entityInternshipApplication);
	        return "redirect:/userdashboard";
	    } else {
	        return "redirect:/userstudentdetail";
	    }
	}
	@GetMapping("adminlistinternshipapplications")
	public String adminlistInternshipApplications(Model model) {
		//fetchs the data from table internship_application into controller in list internshipApplicationList
		List<Object[]> internshipApplicationList = repositoryInternshipApplication.GetInternAppliedByUser();
		
		//fetchs the data from list internshipApplicationList into ListInternshipApplication jsp
		model.addAttribute("internApplied", internshipApplicationList);
		return "ListInternshipApplications";
	}
	@GetMapping("adminviewinternshipapplication")
	public String adminviewInternshipApplication(Integer applicationId, Model model) {
		System.out.println("InternshipApplicationId => "+applicationId);
	 	List<Object[]> allInternshipApplicationDetails = repositoryInternshipApplication.GetInternAppliedId(applicationId);
		
	 	//sends data to jsp:
		model.addAttribute("internApplication", allInternshipApplicationDetails);
		
		return "ViewInternshipApplication";
	}
	@GetMapping("admineditinternshipapplication")
	public String adminEditInternshipApplication(Integer applicationId, Model model){
		System.out.println("InternshipApplicationId => "+applicationId);
	 	List<Object[]> editInternApplicationDetails = repositoryInternshipApplication.GetInternAppliedId(applicationId);
		
	 	//sends data to jsp:
		model.addAttribute("adminEditinternApplied", editInternApplicationDetails);
		
		return "EditInternshipApplication";
	}
	@PostMapping("adminupdateinternshipapplication")
	public String adminUpdateInternshipApplication(Integer applicationId, InternshipApplicationEntity entityInternshipApplication) {
		System.out.println(entityInternshipApplication.getApplicationId());
		Optional<InternshipApplicationEntity> op = repositoryInternshipApplication.findById(applicationId);
		if (op.isPresent()) {
			InternshipApplicationEntity dbInternApplied = op.get();
			
			//set
			dbInternApplied.setStatus(entityInternshipApplication.getStatus());
			
			repositoryInternshipApplication.save(dbInternApplied);
			return "redirect:/adminlistinternshipapplications";
		}
		else {
			return "redirect:/admindashboard";
		}
		
	}
	
	@GetMapping("admindeleteinternshipapplication")
	public String deleteInternshipApplication(Integer applicationId) {
		repositoryInternshipApplication.deleteById(applicationId);
		return "redirect:/adminlistinternshipapplications";
	}
}
