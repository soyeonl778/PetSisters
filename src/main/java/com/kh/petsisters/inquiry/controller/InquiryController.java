package com.kh.petsisters.inquiry.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.common.template.Pagination;
import com.kh.petsisters.inquiry.model.service.InquiryService;
import com.kh.petsisters.inquiry.model.vo.Inquiry;
import com.kh.petsisters.member.model.vo.Member;

@Controller
public class InquiryController {
	
	@Autowired
	private InquiryService inquiryService;
	
	@RequestMapping("list.in")
	public ModelAndView selectList(
			@RequestParam(value="cPage", defaultValue="1") int currentPage,
			ModelAndView mv
			, Member m) {
		
		int listCount = inquiryService.selectListCount();
		
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		List<Inquiry> list = inquiryService.selectList(pi, m);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("inquiry/inquiryList");
		
		return mv;
	}
	
	@RequestMapping("enrollForm.in")
	public String enrollForm() {
		
		return "inquiry/inquiryEnrollForm";
	}
	
	@RequestMapping("insert.in")
	public String insertInquiry(Inquiry i, MultipartFile upfile, HttpSession session, Model model) {
		
		if(!upfile.getOriginalFilename().equals("")) {
			
			String changeName = saveFile(upfile, session);
			
			i.setOriginName(upfile.getOriginalFilename());
			i.setChangeName("resources/upFiles/inquiry_upfiles/" + changeName);
		}
		
		int result = inquiryService.insertInquiry(i);
		
		if(result > 0) {
			
			System.out.println(i);
			session.setAttribute("alertMsg", "1:1 문의글 등록에 성공하였습니다.");
			
			return "redirect:/list.in";
			
		} else {
			System.out.println(i);
			model.addAttribute("errorMsg", "1:1 문의글 등록 실패");
			
			return "notice/errorPage";
		}
	}
	
	@RequestMapping("detail.in")
	public ModelAndView selectInquiry(ModelAndView mv, int inquiryNo) {
		
		int result = inquiryService.increaseCount(inquiryNo);
		
		if(result > 0) {
			
			Inquiry i = inquiryService.selectInquiry(inquiryNo);
			
			mv.addObject("i", i).setViewName("inquiry/inquiryDetail");
			
		} else {
			
			mv.addObject("errorMsg", "상세조회 실패").setViewName("notice/errorPage");
		}
		
		return mv;
	}
	
	
	// 현재 넘어온 첨부파일 그 자체를 파일명 수정 후 서버의 폴더에 저장시키는 일반 메소드 작성
	private String saveFile(MultipartFile upfile, HttpSession session) {
		
		String originName = upfile.getOriginalFilename();
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		// import java.util.Date
		
		int ranNum = (int)(Math.random() * 90000 + 10000);
		
		String ext = originName.substring(originName.lastIndexOf(".")); // ".jpg"
		
		String changeName = currentTime + ranNum + ext;
		
		String savePath = session.getServletContext().getRealPath("/resources/upFiles/inquiry_upfiles/");
	
		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
		
	}
	
}
