package com.kh.petsisters.reservation.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.common.template.Pagination;
import com.kh.petsisters.member.model.vo.Member;
import com.kh.petsisters.reservation.model.service.ReservationService;
import com.kh.petsisters.reservation.model.vo.Reservation;
import com.kh.petsisters.reservation.model.vo.Review;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;
	
	/**
	 * 예약 리스트 조회
	 * @param currentPage
	 * @param checkReview
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value="reservationList")
	public String selectPetsitterList(@RequestParam(value="rPage", defaultValue="1") 
									  int currentPage,
									  @RequestParam(value="checkReview", required=false) Integer checkReview,
									  Model model, HttpSession session) {
		
		
		int userNo = ((Member)(session.getAttribute("loginUser"))).getUserNo();
		
		int listCount = reservationService.selectListCount(userNo);
		
		int pageLimit = 10;
		int boardLimit = 6;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Reservation> list = reservationService.selectPetsitterList(pi, userNo, checkReview);

		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
//		System.out.println(list);
		
		return "reservation/reservationList";
	}
	
	
	/**
	 * 후기 작성 시 기본 정보 불러오기
	 * @param model
	 * @param writeReviewNo
	 * @return
	 */
	@RequestMapping(value="getReviewDate")
	public String selectReview(Model model, @RequestParam(value="rNo") int writeReviewNo) {
		
//		System.out.println(writeReviewNo);
		Reservation rev = reservationService.selectReview(writeReviewNo);
		
		model.addAttribute("rev", rev);
		
//		System.out.println(rev);
		
		return "reservation/review";
	}
	
	
	/**
	 * 후기 작성
	 * @param upfile
	 * @param session
	 * @param model
	 * @param r
	 * @return
	 */
	@RequestMapping("reviewInsert")
	public String insertReview(MultipartFile upfile, HttpSession session, Model model, Review r) {
		// System.out.println(r);
		
		if(!upfile.getOriginalFilename().equals("")) {
			
			String changeName = saveFile(upfile, session);
			
			r.setFilePath(upfile.getOriginalFilename());
			r.setChangeName("resources/upFiles/review_upfiles/" + changeName);
			
		}
		
		int result = reservationService.insertReview(r);
		System.out.println(result);
		if(result > 0) {
			
			return "redirect:/reservationList";
		} else {
			
			//TODO 에러 페이지만들면 포워딩 바꿔줄 것
			return null;
		}
	}
	
	
	/**
	 * 후기 수정시 기본 정보 불러오기
	 * @param model
	 * @param rNo
	 * @return
	 */
	@RequestMapping("reviewUpdate")
	public String updateReview(Model model, @RequestParam(value = "rNo") int rNo) {
		
		// System.out.println(rNo);
		
		Review r = reservationService.updateReview(rNo);
		
		// System.out.println(r);
		
		model.addAttribute("r", r);
		
		return "reservation/reviewUpdate";
	}
	
	
	/**
	 * 후기 수정
	 * @param model
	 * @param reupfile
	 * @param session
	 * @param r
	 * @return
	 */
	@RequestMapping("updateReviewForm")
	public String updateForm(Model model, MultipartFile reupfile,
							HttpSession session, Review r) {
		
		
		// System.out.println(r);
		if(!reupfile.getOriginalFilename().contentEquals("")) {
			
			String changeName = saveFile(reupfile, session);
			
			r.setFilePath(reupfile.getOriginalFilename());
			r.setChangeName("resources/upFiles/review_upfiles/" + changeName);
		}
		
		int result = reservationService.updateForm(r);
		// System.out.println(result);
		if(result > 0) {
			return "redirect:/reservationList";
		} else {
			
			//TODO 에러페이지 완성시 포워딩 변경할 것
			return null;
		}
		
	}
	
	
	
	@RequestMapping("deleteReservation")
	public String deleteReservation(Model model, HttpSession session, @RequestParam(value = "rNo") int rNo) {
		
		
		int result = reservationService.deleteReservation(rNo);
		System.out.println(rNo);
		
		System.out.println(result);
		if(result > 0) {
			
			return "redirect:/reservationList";
		} else {
			
			//TODO 에러페이지 완성 시 포워딩 바꿔줄 것
			return null;
		}
	}
	
	
//	@RequestMapping("deleteReservation")
//	public String deleteReservation(Model model, 
//			@RequestParam(value = "rNo") int rNo) {
//		
//		
//		
//		
//		return "reservation/reservationDetail";
//	}
//	
	
	
	
	
	/**
	 * 파일 저장 메소드
	 * @param upfile
	 * @param session
	 * @return
	 */
	public String saveFile(MultipartFile upfile, HttpSession session) {
		
		String originName = upfile.getOriginalFilename();
		System.out.println(originName);
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		int ranNum = (int)(Math.random() * 90000 + 10000);
		
		String ext = originName.substring(originName.lastIndexOf("."));
		
		String changeName = currentTime + ranNum + ext;
		
		String savePath = session.getServletContext().getRealPath("resources/upFiles/review_upfiles/");
		
		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch(IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
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
