package com.grownited.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CityEntity;
import com.grownited.entity.StateEntity;
import com.grownited.repository.CityRepository;
import com.grownited.repository.StateRepository;

@Controller
public class CityController {
	@Autowired
	CityRepository repositoryCity;
	
	@Autowired
	StateRepository repositoryState;
	
	@GetMapping("newcity")
	public String newCity(Model model) {
		//select * from states;
		List<StateEntity> allStates = repositoryState.findAll();//allStates
		
//		fetchs the data from controller in allStates into jsp.
		model.addAttribute("allStates", allStates);
		return "City";
	}
	@PostMapping("savecity")
		public String saveCity(CityEntity entityCity) {
			System.out.println(entityCity.getCityName());
			repositoryCity.save(entityCity);
			return "redirect:/newcity";
		}
}