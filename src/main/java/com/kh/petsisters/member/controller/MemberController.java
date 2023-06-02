package com.kh.petsisters.member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.petsisters.member.model.service.MemberService;
import com.kh.petsisters.member.model.vo.Member;


@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	
	// ***************************
	// 로그인 / 회원가입 / 마이페이지 영역 (소연)
	
	// 로그인 페이지 이동 영역
	@RequestMapping("loginForm.me")
	public String loginForm() {
		return "/member/loginForm";
	}
	
	// 로그인 기능 영역
	@RequestMapping("login.me")
	public ModelAndView login(Member m, 
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
		
		Member loginUser = memberService.login(m);
		
		
		if(loginUser != null 
			/*&& bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())*/) { // 로그인 성공 처리
				
			session.setAttribute("loginUser", loginUser);
			session.setAttribute("alertMsg", "로그인에 성공했습니다.");
				
			mv.setViewName("redirect:/");
				
		} else { // 로그인 실패 처리 

			mv.addObject("alertMsg", "로그인 실패");
				
			mv.setViewName("member/loginForm");
		}
		
		return mv;
	}
	
	// 로그아웃 기능 영역
	@RequestMapping("logout.me")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 회원가입 폼 이동 영역
	@RequestMapping("enrollForm.me")
	public String enrollForm() {
		return "/member/enrollForm";
	}
	
	// 회원가입(회원추가)기능 영역
	@RequestMapping("insert.me")
	public String insertMember(Member m, 
							   Model model, 
							   HttpSession session) {
		
		System.out.println(m);
		
		String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
		
		m.setUserPwd(encPwd);
		
		int result = memberService.insertMember(m);
		
		if(result > 0) {
			
			session.setAttribute("alertMsg", "회원가입 되셨습니다. 로그인을 해주세요.");
			
			return "redirect:/";
			
		} else {
			
			model.addAttribute("errorMsg", "잘못 입력 하셨습니다. 다시 회원가입을 진행해주세요.");
			
			return "/member/enrollForm";
			
		}
	}
	
	// 아이디 찾기 페이지 이동 영역
	@RequestMapping("findIdForm.me")
	public String findIdForm() {
		return "/member/findIdForm";
	}
	
	// 아이디 찾기 기능 영역 
	@RequestMapping("foundId.me")
	public String foundId(HttpServletRequest request, 
						 Model model,
						 @RequestParam(required = true, value = "userName") String userName,
						 @RequestParam(required = true, value = "email") String email,
						 Member m) {
		
			System.out.println(m);
		
			m.setUserName(userName);
			m.setEmail(email);
			Member memberSearch = memberService.foundId(m);
			
			model.addAttribute("m", memberSearch);
		
		return "/member/foundId";
	}
	
	// 비밀번호 찾기 페이지 이동 영역
	@RequestMapping("findPwdForm.me")
	public String findPwdForm() {
		return "/member/findPwdForm";
	}
	
	// 비밀번호 찾기 기능 영역
	@RequestMapping("foundPwd.me")
	public String foundPwd() {
		
		
		return "/member/foundPwd";
	}
	
	// 마이페이지 내 프로필 영역
	@RequestMapping("myProfile.me")
	public String myProfile() {
		return "/member/my_profile";
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
	
	// 아이디 중복 체크 기능 영역
	@ResponseBody
	@RequestMapping(value = "idCheck.me", produces = "text/html; charset=UTF-8")
	public String idCheck(String checkId) {
		
		// System.out.println(checkId);
		
		int count = memberService.idCheck(checkId);
		
		/*
		if(count > 0) { // 이미 존재하는 아이디 => 사용 불가능 ("NNNNN")
			return "NNNNN";
		} else { // 사용 가능한 아이디 ("NNNNY")
			return "NNNNY";
		}
		*/
		
		return (count > 0) ? "NNNNN" : "NNNNY";
	}
	
	
}
