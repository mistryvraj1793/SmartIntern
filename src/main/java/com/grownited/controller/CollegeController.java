package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CollegeEntity;
import com.grownited.repository.CollegeRepository;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestBody;



@Controller
public class CollegeController {
	@Autowired
	CollegeRepository repositoryCollege;
	
	@GetMapping("admincollege")
	public String adminCollege() {
		return "College";
	}
	@PostMapping("adminsavecollege")
	public String adminSaveCollege(CollegeEntity entityCollege) {
		//save the entered data into table college.
		repositoryCollege.save(entityCollege);
		
		//print the data which are stored in the table college.
		System.out.println(entityCollege.getCollegeName());
		System.out.println(entityCollege.getCity());
		 
		return "College";
	}
	@GetMapping("adminlistcolleges")
	public String adminListColleges(Model model) {
	// fetchs the data from table to controller in which stored in list.
	List<CollegeEntity> collegeList = repositoryCollege.findAll();
	
	//fetchs the data from list to College jsp to display the existing data.
	model.addAttribute("collegeList", collegeList);
		return "ListColleges";
	}
	@GetMapping("adminviewcollege")
	public String adminViewCollege(Integer collegeId, Model model) {
		//print the collegeId
		System.out.println("Company Id ==> " + collegeId);
		
		//fetchs the data from table college into controller in Optional op through repositoryCollege object.
		Optional<CollegeEntity> op = repositoryCollege.findById(collegeId);
		if(!op.isPresent()) { //we don't consider this case.
			System.out.println("Not Found"); 
		}
		else { //we will consider this case.
			//data Found:
			CollegeEntity college = op.get();
			
			//send data into ViewCollege jsp.
			model.addAttribute("college", college);
		}
		return "ViewCollege";
	}
	@GetMapping("admineditcollege")
	public String adminEditCollege(Integer collegeId ,Model model) {
		Optional<CollegeEntity> op = repositoryCollege.findById(collegeId);
		if (op.isPresent()) {
			model.addAttribute("college", op.get());
			return "EditCollege";
		} else {
			return "redirect:/adminlistcolleges";
		}
	}
	@PostMapping("adminupdatecollege")
	public String adminUpdateCollege(Integer collegeId, CollegeEntity entityCollege) {
		Optional<CollegeEntity> op = repositoryCollege.findById(collegeId);
		if (op.isPresent()) {
			CollegeEntity dbCollege = op.get();
			dbCollege.setAddress(entityCollege.getAddress());
			dbCollege.setCity(entityCollege.getCity());
			dbCollege.setCollegeName(entityCollege.getCollegeName());
			dbCollege.setState(entityCollege.getState());
			repositoryCollege.save(dbCollege);
			return "redirect:/adminlistcolleges";
			
		} else {
			return "redirect:/admindashboard";
		}
	}
	
	
	@GetMapping("admindeletecollege")
	public String adminDeleteCollege(Integer collegeId) {
		//delete from table college where collegeId = :collegeId
		repositoryCollege.deleteById(collegeId); 
		
		return "redirect:/adminlistcolleges";
	}
	
}
