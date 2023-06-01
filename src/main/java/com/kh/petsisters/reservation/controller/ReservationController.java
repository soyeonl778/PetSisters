package com.kh.petsisters.reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.petsisters.reservation.model.service.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;
	
	/**
	 * 예약 조회
	 * @return
	 */
	@RequestMapping(value="reservationList")
	public String reservationList() {
		
		
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
