package com.kh.petsisters.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DashboardController {
	
	@RequestMapping("member.da")
	public String dashMemberView() {
		return "dashboard/dash_member";
	}
	
	@RequestMapping("petsiter.da")
	public String dashPetsiterView() {
		return "dashboard/dash_petsiter";
	}
	
	@RequestMapping("support.da")
	public String dashSupportView() {
		return "dashboard/dash_support";
	}
	
	@RequestMapping("or.da")
	public String ongoingReservationView() {
		return "dashboard/dash_ongoingReservation";
	}
	
	@RequestMapping("cr.da")
	public String completedReservationView() {
		return "dashboard/dash_completedReservation";
	}
	
	@RequestMapping("review.da")
	public String reviewView() {
		return "dashboard/dash_review";
	}
	
	@RequestMapping("inquiry.da")
	public String inquiryView() {
		return "dashboard/dash_inquiry";
	}
	
	
	
	

}
