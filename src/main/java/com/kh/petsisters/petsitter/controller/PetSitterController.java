package com.kh.petsisters.petsitter.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.common.template.Pagination;
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
		
		// System.out.println(p);
		
		mv.addObject("p", p).setViewName("petsitter/petSitterProfileForm");
		
		return mv;
	}
	
	@RequestMapping("update.pe")
	public String updatePetSitter(PetSitter p,
								  HttpSession session,
			                      Model model) {
		
		int result = petSitterService.updatePetSitter(p);
		
		if(result > 0) { // 수정 성공
			
			// 일회성 알람문구 담아서 프로필 상세페이지로 url 재요청
			session.setAttribute("alertMsg", "성공적으로 프로필이 수정되었습니다.");
			
			return "redirect:/detail.pe?pno=" + p.getPetSitterNo();
			
		} else { // 수정 실패
			
			// 에러 문구 일회성 알람 띄우기
			session.setAttribute("alertMsg", "프로필 수정에 실패했습니다.");
			
			return "redirect:/updateForm.pe?pno=" + p.getPetSitterNo();
		}
	}
	
	@RequestMapping("list.pe")
	public ModelAndView selectList(
			@RequestParam(value="cPage", defaultValue="1") int currentPage,
			ModelAndView mv) {
		
		// PageInfo 객체 얻어내기
		int listCount = petSitterService.selectListCount();
        // int reviewCount = petSitterService.selectReviewCount();
		
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<PetSitter> list = petSitterService.selectList(pi);
		
		System.out.println(list);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("petsitter/petSitterListView");
		
		return mv;
	}
	
	
	
}




