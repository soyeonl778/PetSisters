package com.kh.petsisters.member.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.petsisters.chat.model.vo.ChatSession;
import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.common.template.Pagination;
import com.kh.petsisters.member.model.service.MemberService;
import com.kh.petsisters.member.model.vo.Dog;
import com.kh.petsisters.member.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	private ChatSession chatSession;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	
	// 로그인 페이지 이동 영역
	@RequestMapping("loginForm.me")
	public String loginForm() {
		return "/member/loginForm";
	}
	
	// 로그인 기능 영역
	@RequestMapping("login.me")
	public ModelAndView loginMember(Member m, 
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
		
		Member loginUser = memberService.loginMember(m);
		
		if(loginUser != null 
			/*&& bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())*/) { // 로그인 성공 처리
			
		    // ChatSession에 사용자 추가
		    chatSession.addLoginUser(loginUser.getUserNo());
		    
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
		
	    // 현재 로그인된 사용자의 정보를 가져옴
	    Member loginUser = (Member) session.getAttribute("loginUser");
	    
	    if (loginUser != null) {
	    	
	        // ChatSession에서 사용자 제거
	        chatSession.removeLoginUser(loginUser.getUserNo());
	    }
		
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
						 Member m) {
		
			System.out.println(m);
		
			Member idSearch = memberService.foundId(m);
			
			model.addAttribute("m", idSearch);
		
		return "/member/foundId";
	}
	
	// 비밀번호 찾기 페이지 이동 영역
	@RequestMapping("findPwdForm.me")
	public String findPwdForm() {
		return "/member/findPwdForm";
	}
	
	// 비밀번호 찾기 기능 영역
	@RequestMapping("foundPwd.me")
	public String foundPwd(HttpServletRequest request, 
			 			   Model model,
			 			   Member m) throws Exception {
		
		
		Member pwdSearch = memberService.foundPwd(m);
		
		System.out.println(pwdSearch);
		
		if(pwdSearch != null) {
			
			//임시 비밀번호 생성(UUID이용)
			String tempPw = UUID.randomUUID().toString().replace("-", "");//-를 제거
			tempPw = tempPw.substring(0,10);//tempPw를 앞에서부터 10자리 잘라줌
			
			pwdSearch.setUserPwd(tempPw);
			
			MailUtil mail = new MailUtil();
			mail.sendEmail(pwdSearch);
			
			memberService.updateMember(pwdSearch);
		}
		model.addAttribute("m", pwdSearch);
		return "/member/foundPwd";
	}
	
	// 마이페이지 내 프로필 조회 영역
	@RequestMapping("myProfile.me")
	public String myProfile() {
		return "/member/my_profile";
	}
	
	// 회원 수정 기능 영역
	@RequestMapping("update.me")
	public String updateMember(Member m,
							   HttpSession session,
							   @RequestParam("upfile") MultipartFile upfile,
							   Model model) {
		
		m.setFilePath(((Member)session.getAttribute("loginUser")).getFilePath());
		
		// 즉, filename 필드값 (원본파일명) 이 있을 경우
		if(!upfile.getOriginalFilename().equals("")) {
			
			// 1. 기존에 첨부파일이 있었을 경우 => 기존의 첨부파일을 찾아서 삭제
			if(m.getFilePath() != null) {
				String realPath =  session.getServletContext().getRealPath(m.getFilePath());
				new File(realPath).delete();
			}
			
			// 2. 새로 넘어온 첨부파일을 서버에 업로드 시키기
			String changeName = saveFile(upfile, session, "/resources/upFiles/member_profiles/");
			
			// 3. b 에 새로 넘어온 첨부파일에 대한 원본명, 수정파일명을 덮어 씌우기 (필드값 셋팅)
			m.setFilePath("/resources/upFiles/member_profiles/" + changeName);
		}
		
		int result = memberService.updateMember(m);
		
		if(result > 0) {
		
			Member updateMem = memberService.loginMember(m);
			
			session.setAttribute("loginUser", updateMem);
			
			session.setAttribute("alertMsg", "성공적으로 회원정보가 변경되었습니다.");
			
			return "redirect:/myProfile.me";
			
		} else {
			
			model.addAttribute("alertMsg", "회원정보 변경 실패");
			
			return "/member/my_profile";
			
		}
	}
	
	// 회원 탈퇴 기능 영역
	@RequestMapping("delete.me")
	public String deleteMember(String userId,
							   String userPwd,
							   HttpSession session,
							   Model model) {
		
		String encPwd = ((Member)session.getAttribute("loginUser")).getUserPwd();
		
		if(bcryptPasswordEncoder.matches(userPwd, encPwd)) {
			
			int result = memberService.deleteMember(userId);
			
			if(result > 0) {
				
				session.removeAttribute("loginUser");
				
				session.setAttribute("alertMsg", "정상적으로 탈퇴되었습니다. 펫시스터즈를 이용해주셔서 감사합니다.");
				
				return "redirect:/";
			} else {
				
				model.addAttribute("errorMsg", "정보가 일치하지 않습니다.");
				
				return "redirect:/myProfile.me";
			}
		} else {
			
			session.setAttribute("alertMsg", "비밀번호를 잘못 입력했습니다. 다시 확인해주세요.");
			
			return "redirect:/myProfile.me";
			
		}
	}
	
	// 마이페이지 나의펫 전체조회 영역
	@RequestMapping("petList.me")
	public ModelAndView petListView(@RequestParam(value="cPage", defaultValue="1")int currentPage,
							  ModelAndView mv,
							  HttpSession session) {
		int userNo = ((Member)session.getAttribute("loginUser")).getUserNo();
		int listCount = memberService.selectListCount(userNo);
		
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Dog> list = memberService.petListView(pi, userNo);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("member/petList");
		
		return mv;
	}
	
	// 펫 등록하기 페이지 영역
	@RequestMapping("petEnrollForm.me")
	public String petEnrollForm() {
		return "/member/petEnrollForm";
	}
	
	
	// 마이페이지 펫 프로필 등록 영역
	@RequestMapping("petInsert.me")
	public String petInsert(Dog d,
			   				Model model, 
			   				HttpSession session) {
		
		int result = memberService.petInsert(d);
		
		if(result > 0) {
			
			session.setAttribute("alertMsg", "정상적으로 나의 펫이 등록되었습니다.");
			
			return "redirect:/petList.me";
			
		} else {
			
			model.addAttribute("errorMsg", "잘못된 입력입니다. 다시 진행해주세요.");
			
			return "/member/enrollForm";
			
		}
	}
	
	// 마이페이지 나의펫 상세조회 영역
	@RequestMapping("petProfile.me")
	public ModelAndView petDetailView(ModelAndView mv,
								int dno) {
		
		Dog d = memberService.petDetailView(dno);
		
		mv.addObject("d", d).setViewName("member/pet_profile");
		
		return mv;
	}
	
	// 펫정보 수정 기능 영역
	@RequestMapping("petUpdate.me")
	public String petUpdate(Dog d,
			   			  	HttpSession session,
			   			  	@RequestParam("upfile") MultipartFile upfile,
			   			  	Model model) {
				
		// 즉, filename 필드값 (원본파일명) 이 있을 경우
		if(!upfile.getOriginalFilename().equals("")) {
			
			System.out.println(d.getFilePath());
			// 1. 기존에 첨부파일이 있었을 경우 => 기존의 첨부파일을 찾아서 삭제
			if(d.getFilePath() != null) {
				String realPath =  session.getServletContext().getRealPath(d.getFilePath());
				System.out.println(realPath);
				new File(realPath).delete();
			}
			
			// 2. 새로 넘어온 첨부파일을 서버에 업로드 시키기
			String changeName = saveFile(upfile, session, "/resources/upFiles/dog_profiles/");
			
			// 3. b 에 새로 넘어온 첨부파일에 대한 원본명, 수정파일명을 덮어 씌우기 (필드값 셋팅)
			d.setFilePath("/resources/upFiles/dog_profiles/" + changeName);
		}
		
		int result = memberService.petUpdate(d);
		
		if(result > 0) {
			
			session.setAttribute("alertMsg", "성공적으로 펫정보가 수정되었습니다.");
			
			return "redirect:/petProfile.me?dno=" + d.getDogNo();
		} else {
			
			model.addAttribute("alertMsg", "펫 정보 수정 실패");
			return "member/pet_profile";
		}
	}
	
	@RequestMapping("petDelete.me")
	public String petDelete(int dogNo,
							Model model,
							HttpSession session) {
		
		int result = memberService.petDelete(dogNo);
		
		
			
		return "/member/petList";
		
		
	}
	
	// 마이페이지 펫시터 찜 조회 영역
	@RequestMapping("petsiterLike.me")
	public String petsiterLike() {
		return "/member/petsiter_like";
	}
	
	// 마이페이지 내 게시글 조회 영역
	@RequestMapping("myBoard.me")
	public String myBoard() {
		return "/member/my_board";
	}
	
	// 마이페이지 내 댓글 조회 영역
	@RequestMapping("myReply.me")
	public String myReply() {
		return "/member/my_reply";
	}
	
	// 아이디 중복 체크 기능 영역
	@ResponseBody
	@RequestMapping(value = "idCheck.me", produces = "text/html; charset=UTF-8")
	public String idCheck(String checkId) {
		
		int count = memberService.idCheck(checkId);
		
		return (count > 0) ? "NNNNN" : "NNNNY";
	}
	
	public String saveFile(MultipartFile upfile, HttpSession session, String saveDirectory) {
		
		// 1. 원본파일명 뽑기
		String originName = upfile.getOriginalFilename(); // "bono.jpg"
		
		// 2. 현재 시간 형식을 문자열로 뽑아내기
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss")
													.format(new Date()); // "20230511104920"
		
		// 3. 뒤에 붙을 5자리 랜덤값 뽑기 (10000 ~ 99999)
		int ranNum = (int)(Math.random() * 90000 + 10000); // 13152
		
		// 4. 원본파일명으로부터 확장자명 뽑기
		String ext = originName.substring(originName.lastIndexOf(".")); // ".jpg"
		
		// 5. 2, 3, 4 단계에서 구한 값을 모두 이어 붙이기
		String changeName = currentTime + ranNum + ext;
		
		// 6. 업로드 하고자 하는 서버의 물리적인 경로 알아내기
		String savePath = session.getServletContext().getRealPath(saveDirectory);
		
		// 7. 경로와 수정파일명을 합체 후 파일을 업로드 해주기
		// MultipartFile 객체에서 제공하는 transferTo 메소드
		// [ 표현법 ]
		// upfile.transferTo(업로드하고자하는파일객체);
		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
	}
	
	
}
