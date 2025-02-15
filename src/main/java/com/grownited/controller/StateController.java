package com.grownited.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.StateEntity;
import com.grownited.repository.StateRepository;

@Controller
public class StateController {
	@Autowired
	StateRepository repositoryState;
	
	@GetMapping("newstate")
	public String newState() {
		return "State";
	}
	@PostMapping("savestate")
	public String saveState(StateEntity entitystate) {
		System.out.println(entitystate.getStateName());
		repositoryState.save(entitystate);
		return "State";
	}
}
