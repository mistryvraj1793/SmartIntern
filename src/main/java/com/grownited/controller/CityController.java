package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CityEntity;
import com.grownited.repository.CityRepository;

@Controller
public class CityController {
	@Autowired
	CityRepository repositoryCity;
	
	@GetMapping("newcity")
	public String newCity() {
		return "City";
	}
	@PostMapping("savecity")
		public String saveCity(CityEntity entityCity) {
			System.out.println(entityCity.getCityName());
			repositoryCity.save(entityCity);
			return "City";
		}
}
