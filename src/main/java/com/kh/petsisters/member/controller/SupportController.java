package com.kh.petsisters.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.petsisters.member.model.service.SupportService;
import com.kh.petsisters.member.model.vo.Support;

@Controller
public class SupportController {
	
	@Autowired
	private SupportService supportService;
	
	@RequestMapping("supportInfo.me")
	public String supportInfo() {
		return "/member/supportInfo";
	}
	
	@RequestMapping("supportForm.me")
	public String supportForm() {
		return "/member/supportForm";
	}
	
	@RequestMapping("insertSupport.me")
	public String insertSupport(Support s, 
											Model model,
											HttpSession session) {
		
		System.out.println(s);
		
		int result = supportService.insertSupport(s);
		
		if(result > 0) { // 성공 => 메인페이지로 url 재요청
			
			// sessionScope 에 일회성 알람문구 담기
			session.setAttribute("alertMsg", "성공적으로 제출 되었습니다.");
			
			return "redirect:/";
			
		} else { // 실패 => 에러페이지로 포워딩
			
			model.addAttribute("errorMsg", "제출 실패");
			
			// /WEB-INF/views/common/errorPage.jsp
			return "common/errorPage";
		}
		
	}

}
