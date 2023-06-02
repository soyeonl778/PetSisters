package com.kh.petsisters.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {
	
	@RequestMapping("chatForm.ch")
	public String chatForm() {
		
		// 회원가입 페이지 포워딩
		// /WEB-INF/views/member/memberEnrollForm.jsp
		return "/common/chatForm";
	}
	
	

}
