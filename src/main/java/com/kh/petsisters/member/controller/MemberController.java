package com.kh.petsisters.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MemberController {

	
	@RequestMapping("supportInfo.me")
	public String supportInfo() {
		return "/member/supportInfo";
	}
	
	@RequestMapping("supportForm.me")
	public String supportForm() {
		return "/member/supportForm";
	}
	
}
