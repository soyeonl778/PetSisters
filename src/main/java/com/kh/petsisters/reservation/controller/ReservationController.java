package com.kh.petsisters.reservation.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
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
		System.out.println(pi);
		System.out.println(list);
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
		
		Reservation rev = reservationService.selectReview(writeReviewNo);
		
		model.addAttribute("rev", rev);
		
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
		
		Review r = reservationService.updateReview(rNo);
		
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
		
		if(!reupfile.getOriginalFilename().contentEquals("")) {
			
			String changeName = saveFile(reupfile, session);
			
			r.setFilePath(reupfile.getOriginalFilename());
			r.setChangeName("resources/upFiles/review_upfiles/" + changeName);
		}
		
		int result = reservationService.updateForm(r);
		
		if(result > 0) {
			return "redirect:/reservationList";
		} else {
			
			//TODO 에러페이지 완성시 포워딩 변경할 것
			return null;
		}
		
	}
	
	
	/**
	 * 예약 리스트 삭제
	 * @param model
	 * @param session
	 * @param rNo
	 * @return
	 */
	@RequestMapping("deleteReservation")
	public String deleteReservation(Model model, HttpSession session, @RequestParam(value = "rNo") int rNo) {
		
		
		int result = reservationService.deleteReservation(rNo);
		
		if(result > 0) {
			
			return "redirect:/reservationList";
		} else {
			
			//TODO 에러페이지 완성 시 포워딩 바꿔줄 것
			return null;
		}
	}
	
	/**
	 * 예약페이지 상세 보기
	 * @param model
	 * @param rNo
	 * @return
	 */
	@RequestMapping("reservationDetail")
	public String reservationDetail(Model model, 
			@RequestParam(value = "rNo") int rNo) {
		
		// System.out.println(rNo);
		Reservation rev = reservationService.reservationDetail(rNo);
		
		System.out.println(rev);
		
		model.addAttribute("rev", rev);
		
		return "reservation/reservationDetail";
	}
	
	
	@RequestMapping("journalList")
	public String journalList() {
		
		
		return "reservation/careJournalList";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 여기서 부터 펫시터 관련 컨트롤
	/**
	 * 펫시터 예약 리스트
	 * @param session
	 * @param model
	 * @param currentPage
	 * @return
	 */
	@RequestMapping(value="petsitterRev", produces = "application/json; charset=UTF-8")
	public String petsitterRevList(HttpSession session, Model model,
			@RequestParam(value="pPage", defaultValue="1") int currentPage,
			@RequestParam(value="keyword", required=false) String keyword
			) {
//		@RequestParam(value="startDate", required=false) String startDateStr,
//		@RequestParam(value="endDate", required=false) String endDateStr
		
		int userNo = ((Member)(session.getAttribute("loginUser"))).getUserNo();
		
		int listCount = reservationService.selectListPetsitterRev(userNo,keyword);
		
		int pageLimit = 10;
		int boardLimit = 10;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Reservation> rev = reservationService.petsitterRevList(userNo, pi, keyword);
		
		
		model.addAttribute("rev", rev);
		model.addAttribute("pi", pi);
		model.addAttribute("keyword", keyword);
		
		return "reservation/reservationListPetsiter";
	}


	@ResponseBody
	@RequestMapping(value="dateFilter", produces = "application/json; charset=UTF-8")
	public String dateFilter(String startDate, String endDate, HttpSession session) {
		
		int userNo = ((Member)(session.getAttribute("loginUser"))).getUserNo();
		
		System.out.println(startDate);
		System.out.println(endDate);
		System.out.println(userNo);
		
		ArrayList<Reservation> rev = reservationService.dateSelect(userNo, startDate, endDate);
		
		System.out.println(rev);
		
		
		
		return new Gson().toJson(rev);
	}

	
	
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
	
	
	
	
	

}
