package com.kh.petsisters.petsitter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.petsisters.petsitter.model.service.PetSitterService;

@Controller
public class PetSitterController {
	
	@Autowired
	private PetSitterService petSitterService;

	@RequestMapping("updateForm.pe")
	public void updateForm() {
		
		// 
	}
	
}
