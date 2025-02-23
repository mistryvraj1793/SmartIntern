package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.InternshipProjectEntity;
import com.grownited.repository.InternshipProjectRepository;

@Controller
public class InternshipProjectController {
	@Autowired
	InternshipProjectRepository repositoryInternshipProject;
	
	@GetMapping("internshipproject")
	public String internshipProject() {
		return "InternshipProject";
	}
	@GetMapping("listinternshipproject")
	private String listInternshipProject(Model model) {
		//fetchs the data from table internship_project, internship, projects into controller in list internshipProjectList
		List<InternshipProjectEntity> internshipProjectList = repositoryInternshipProject.findAll();
		
		//fetchs the data from list internshipProjectList
		model.addAttribute("internshipProjectList", internshipProjectList);
		
		return "ListInternshipProject";
	}
}
