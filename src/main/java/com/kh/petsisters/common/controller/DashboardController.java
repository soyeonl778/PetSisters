package com.kh.petsisters.common.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.petsisters.common.model.service.DashboardService;
import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.common.template.Pagination;
import com.kh.petsisters.inquiry.model.service.InquiryService;
import com.kh.petsisters.inquiry.model.vo.Inquiry;
import com.kh.petsisters.member.model.vo.Member;

@Controller
public class DashboardController {
	
	@Autowired
	private DashboardService dashboardService;
	
	@Autowired
	private InquiryService inquiryService;
	
	@RequestMapping("member.da")
	public ModelAndView dashMemberView(ModelAndView mv) {
		ArrayList<Member> list = dashboardService.dashMemberView();
		  mv.addObject("list", list)
		  .setViewName("dashboard/dash_member");
		return mv;
	}
	
	@RequestMapping("memberDelete.da")
	public String dashMemberDelete(int userNo, HttpSession session) {
		
		int result = dashboardService.dashMemberDelete(userNo);
		
		if(result > 0)  {
			session.setAttribute("alertMsg", "성공적으로 회원이 탈퇴 되었습니다."); 
			return "redirect:/member.da";
		} else {
			session.setAttribute("alertMsg", "회원 탈퇴 실패");
			return "redirect:/member.da";
		}
		
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
	
	// 대시보드 조회용 list
	@RequestMapping("inquiry.da")
	public ModelAndView selectDashboardList(
			@RequestParam(value="cPage", defaultValue="1") int currentPage,
			ModelAndView mv,
			HttpSession session) {
		
		List<Inquiry> list = inquiryService.selectDashboardList();
		
		mv.addObject("list", list)
		  .setViewName("dashboard/dash_inquiry");
		
		return mv;
	}
	
	
	
	

}
