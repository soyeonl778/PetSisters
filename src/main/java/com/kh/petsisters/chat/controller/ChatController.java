package com.kh.petsisters.chat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {
	
	@RequestMapping("chatForm.ch")
	public String chatForm() {
		return "/common/chatForm";
	}
	
	
	

}
