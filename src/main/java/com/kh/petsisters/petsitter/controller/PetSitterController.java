package com.kh.petsisters.petsitter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.petsisters.petsitter.model.service.PetSitterService;
import com.kh.petsisters.petsitter.model.vo.PetSitter;

@Controller
public class PetSitterController {
	
	@Autowired
	private PetSitterService petSitterService;

	@RequestMapping("detail.pe")
	public ModelAndView selectPetSitter(ModelAndView mv,
			                            int pno) {
		// System.out.println(pno);
		
		// 상세조회용 응답데이터 조회
		PetSitter p = petSitterService.selectPetSitter(pno);
		
		// 조회된 데이터를 mv 에 담아서 포워딩 페이지 경로를 잡아주기
		mv.addObject("p", p).setViewName("petsitter/petSitterDetailView");
		
		return mv;
		
	}
	
}
