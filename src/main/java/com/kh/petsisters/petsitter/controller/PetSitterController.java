package com.kh.petsisters.petsitter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
		
		// 상세조회용 응답데이터 조회
		PetSitter p = petSitterService.selectPetSitter(pno);
		
		// 조회된 데이터를 mv 에 담아서 포워딩 페이지 경로를 잡아주기
		mv.addObject("p", p).setViewName("petsitter/petSitterDetailView");
		
		return mv;
		
	}
	
	@RequestMapping("updateForm.pe")
	public ModelAndView updateForm(int pno,
			                       ModelAndView mv) {
		
		// 펫시터 상세조회용 selectPetSitter 메소드 요청
		PetSitter p = petSitterService.selectPetSitter(pno);
		
		mv.addObject("p", p).setViewName("petsitter/petSitterProfileForm");
		
		// System.out.println(p);
		
		return mv;
		
	}
	
	@RequestMapping("update.pe")
	public void updatePetSitter(PetSitter p,
			                    ModelAndView mv) {
		
		// System.out.println(p);
		
		
		
	}
	
	
	
	
	
}
