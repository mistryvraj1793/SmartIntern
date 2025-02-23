package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CollegeEntity;
import com.grownited.repository.CollegeRepository;

@Controller
public class CollegeController {
	@Autowired
	CollegeRepository repositoryCollege;
	
	@GetMapping("college")
	public String college() {
		return "College";
	}
	@PostMapping("savecollege")
	public String saveCollege(CollegeEntity entityCollege) {
		//save the entered data into table college.
		repositoryCollege.save(entityCollege);
		
		//print the data which are stored in the table college.
		System.out.println(entityCollege.getCollegeName());
		System.out.println(entityCollege.getCity());
		 
		return "College";
	}
	@GetMapping("listcollege")
	public String listCollege(Model model) {
	// fetchs the data from table to controller in which stored in list.
	List<CollegeEntity> collegeList = repositoryCollege.findAll();
	
	//fetchs the data from list to College jsp to display the existing data.
	model.addAttribute("collegeList", collegeList);
		return "ListCollege";
	}
	
	
}
