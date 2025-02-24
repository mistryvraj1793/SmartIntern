package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CollegeEntity;
import com.grownited.entity.StudentDetailEntity;
import com.grownited.repository.StudentDetailRepository;


@Controller
public class StudentDetailController {
	@Autowired
	StudentDetailRepository repositoryStudentDetail;
	
	@GetMapping("studentdetail")
	public String studentDetail() {
		return "StudentDetail";
	}
	@PostMapping("savestudentdetail")
	public String saveStudentDetail(StudentDetailEntity entityStudentDetail) {
		//print the data from the table student_detail. 
		System.out.println(entityStudentDetail.getCity());
		System.out.println(entityStudentDetail.getDegree());
	
		//stored the data into table student_detail through repository object. 
		repositoryStudentDetail.save(entityStudentDetail);
		
		return "StudentDetail";
	}
	@GetMapping("liststudentdetail")
	public String listStudentDetail(Model model) {
		//fetchs the data from the table student_detail into controller list.
		List<StudentDetailEntity> studentDetailList = repositoryStudentDetail.findAll();
	
		//fetchs the data from controller in list into ListStudentDetail jsp.
		model.addAttribute("studentDetailList", studentDetailList);
		
		return "ListStudentDetail";
	}
	@GetMapping("viewstudentdetail")
	public String viewStudentDetail(Integer studentDetailId, Model model) {
		//print the studentDetailId
		System.out.println("id==> " + studentDetailId);
		
		//fetchs the data from table student_detail into controller in Optional op through repositoryStudentDetail object.
		Optional<StudentDetailEntity> op = repositoryStudentDetail.findById(studentDetailId);
		if(op.isEmpty()) {
			System.out.println("Not Found");
		}
		else {
			//data Found:
			StudentDetailEntity studentDetail = op.get();
			
			//send data into ViewStudentDetail jsp.
			model.addAttribute("studentDetail", studentDetail);
		}
		return "ViewStudentDetail";
	}
	@GetMapping("deletestudentdetail")
	public String deleteStudentDetail(Integer studentDetailId) {
		//delete from table college where collegeId = :collegeId
		repositoryStudentDetail.deleteById(studentDetailId);
		
		return "redirect:/liststudentdetail";
	}
	
	
	
}
