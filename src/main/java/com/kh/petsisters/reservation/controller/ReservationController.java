package com.kh.petsisters.reservation.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.common.template.Pagination;
import com.kh.petsisters.member.model.vo.Member;
import com.kh.petsisters.reservation.model.service.ReservationService;
import com.kh.petsisters.reservation.model.vo.Reservation;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;
	
	/**
	 * 예약 리스트조회
	 * @return
	 */
	@RequestMapping(value="reservationList")
	public String selectPetsitterList(@RequestParam(value="s", defaultValue="1") 
									  int currentPage, Model model, HttpSession session) {
		
		
		int userNo = ((Member)(session.getAttribute("loginUser"))).getUserNo();
		
		int listCount = reservationService.selectListCount(userNo);
		
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Reservation> list = reservationService.selectPetsitterList(pi, userNo);

		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "reservation/reservationList";
	}
	
	/**
	 * 후기 작성
	 * @return
	 */
	@RequestMapping(value="review")
	public String review() {
		
		return "reservation/review";
	}
	
	
	/**
	 * 돌봄 일지
	 * @return
	 */
	@RequestMapping(value="journalList")
	public String CareJournalList() {
		
		return "reservation/careJournalList";
	}
	
	
	

}
