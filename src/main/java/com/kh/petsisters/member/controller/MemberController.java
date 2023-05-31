package com.kh.petsisters.member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.petsisters.member.model.service.MemberService;
import com.kh.petsisters.member.model.vo.Member;


@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;

	
	@RequestMapping("supportInfo.me")
	public String supportInfo() {
		return "/member/supportInfo";
	}
	
	@RequestMapping("supportForm.me")
	public String supportForm() {
		return "/member/supportForm";
	}
	
	
	// ***************************
	// 로그인 / 회원가입 / 마이페이지 영역 (소연)
	
	// 로그인 영역
	@RequestMapping("login.me")
	public String login(Member m, 
						HttpSession session, 
						ModelAndView mv, 
						String saveId,
						HttpServletResponse response) {
		
		// 아이디 저장 기능
		if(saveId != null && saveId.equals("y")) {
			Cookie cookie = new Cookie("saveId", m.getUserId());
			cookie.setMaxAge(24 * 60 * 60 * 1); // 유효기간 1일 
			
			response.addCookie(cookie);
			
		} else {
			Cookie cookie = new Cookie("saveId", m.getUserId());
			cookie.setMaxAge(0);
			
			response.addCookie(cookie);
		}
		
		return "/member/login";
	}
	
	// 아이디 찾기 영역
	@RequestMapping("findId.me")
	public String findId() {
		return "/member/find_id";
	}
	
	// 비밀번호 찾기 영역
	@RequestMapping("findPwd.me")
	public String findPwd() {
		return "/member/find_pwd";
	}
	
	// 회원가입 영역
	@RequestMapping("enrollForm.me")
	public String enrollForm() {
		return "/member/enrollForm";
	}
	
	// 마이페이지 내 프로필 영역
	@RequestMapping("myProfile.me")
	public String myProfile() {
		return "/member/mp_profile";
	}
	
	// 마이페이지 펫 프로필 영역
	@RequestMapping("petProfile.me")
	public String petProfile() {
		return "/member/pet_profile";
	}
	
	// 마이페이지 펫시터 찜 영역
	@RequestMapping("petsiterLike.me")
	public String petsiterLike() {
		return "/member/petsiter_like";
	}
	
	// 마이페이지 내 게시글 영역
	@RequestMapping("myBoard.me")
	public String myBoard() {
		return "/member/my_board";
	}
	
	// 마이페이지 내 댓글 영역
	@RequestMapping("myReply.me")
	public String myReply() {
		return "/member/my_reply";
	}
	
}
