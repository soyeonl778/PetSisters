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
import com.kh.petsisters.inquiry.model.service.InquiryService;
import com.kh.petsisters.inquiry.model.vo.Inquiry;
import com.kh.petsisters.member.model.vo.Member;
import com.kh.petsisters.member.model.vo.Support;
import com.kh.petsisters.petsitter.model.vo.PetSitter;
import com.kh.petsisters.reservation.model.service.ReservationService;
import com.kh.petsisters.reservation.model.vo.Reservation;
import com.kh.petsisters.reservation.model.vo.Review;

@Controller
public class DashboardController {
	
	@Autowired
	private DashboardService dashboardService;
	
	@Autowired
	private InquiryService inquiryService;
	
	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping("member.da")
	public ModelAndView dashMemberView(ModelAndView mv) {
		ArrayList<Member> list = dashboardService.dashMemberView();
		  mv.addObject("list", list)
		  .setViewName("dashboard/dash_member");
		return mv;
	}
	
	@RequestMapping("memberDelete.da")
	public String dashMemberDelete(Member m, HttpSession session) {
		
		if(m.getStatus().equals("Y")) {
			m.setStatus("N");
			session.setAttribute("alertMsg", "성공적으로 회원 탈퇴 되었습니다."); 
		} else {
			m.setStatus("Y");
			session.setAttribute("alertMsg", "성공적으로 복구 되었습니다.");
		}
		
		int result = dashboardService.dashMemberDelete(m);
		
		if(result > 0)  {
			return "redirect:/member.da";
		} else {
			session.setAttribute("alertMsg", "회원 탈퇴/복구 실패");
			return "redirect:/member.da";
		}
	}
	
	@RequestMapping("petsiter.da")
	public ModelAndView dashPetsiterView(ModelAndView mv) {
		ArrayList<PetSitter> list = dashboardService.dashPetsiterView();
		  mv.addObject("list", list)
		  .setViewName("dashboard/dash_petsiter");
		return mv;
	}
	
	@RequestMapping("petsiterDelete.da")
	public String dashPetsiterDelete(PetSitter p, HttpSession session) {
		
		if(p.getCaStatus().equals("Y")) {
			p.setCaStatus("N");
			session.setAttribute("alertMsg", "성공적으로 비활성화 되었습니다."); 
		} else {
			p.setCaStatus("Y");
			session.setAttribute("alertMsg", "성공적으로 복구 되었습니다.");
		}
		
		int result = dashboardService.dashPetsiterDelete(p);
		
		if(result > 0)  {
			return "redirect:/petsiter.da";
		} else {
			session.setAttribute("alertMsg", "처리 실패");
			return "redirect:/petsiter.da";
		}
	}
	
	@RequestMapping("support.da")
	public ModelAndView dashSupportView(ModelAndView mv) {
		ArrayList<Support> list = dashboardService.dashSupportView();
		  mv.addObject("list", list)
		  .setViewName("dashboard/dash_support");
		return mv;
	}
	
	@RequestMapping("supportApprove.da")
	public String dashSupportApprove(Support s, HttpSession session) {

		int result = dashboardService.dashSupportApprove(s);
		
		if(result > 0)  {
			if(s.getStatus().equals("Y")) {
				session.setAttribute("alertMsg", "성공적으로 펫시터 등록이 되었습니다."); 
			} else {
				session.setAttribute("alertMsg", "펫시터 등록이 반려 되었습니다.");
			}
			return "redirect:/support.da";
		} else {
			session.setAttribute("alertMsg", "처리 실패");
			return "redirect:/support.da";
		}
	}
	
	@RequestMapping("reservation.da")
	public ModelAndView selectDashboardReserv(
			ModelAndView mv,
			HttpSession session) {
		
		List<Reservation> list = reservationService.selectDashboardReserv();
		
		mv.addObject("list", list)
		  .setViewName("dashboard/dash_reservation");
		
		return mv;
	}
	
	@RequestMapping("review.da")
	public ModelAndView selectDashboardReview(
			ModelAndView mv,
			HttpSession session) {
		
		List<Review> list = reservationService.selectDashboardReview();
		
		mv.addObject("list", list)
		  .setViewName("dashboard/dash_review");
		
		return mv;
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
