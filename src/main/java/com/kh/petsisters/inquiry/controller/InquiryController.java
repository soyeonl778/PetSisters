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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.common.template.Pagination;
import com.kh.petsisters.inquiry.model.service.InquiryService;
import com.kh.petsisters.inquiry.model.vo.CSReply;
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
			, HttpSession session) {
		
		int userNo = ((Member)session.getAttribute("loginUser")).getUserNo();
				
		int listCount = inquiryService.selectListCount();
		
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		List<Inquiry> list = inquiryService.selectList(pi, userNo);
		
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
	public String insertInquiry(Inquiry i, 
								MultipartFile upfile, 
								HttpSession session, 
								Model model) {
		
	    try {
	    	
	        if (upfile != null && !upfile.isEmpty()) {
	        	
	            String filePath = session.getServletContext().getRealPath("/resources/upFiles/inquiry_upfiles/") + upfile.getOriginalFilename();
	            upfile.transferTo(new File(filePath));
	            
	        }
	        
	        int result = inquiryService.insertInquiry(i);
	        
	        if (result > 0) {
	        	
	            session.setAttribute("message", "성공적으로 문의글을 등록했습니다.");
	            return "redirect:/detail.in?inquiryNo=" + i.getInquiryNo();
	            
	        } else {
	        	
	            model.addAttribute("errorMsg", "문의글 등록에 실패했습니다.");
	            
	            return "common/errorPage";
	        }
	        
	    } catch (IOException e) {
	    	
	        model.addAttribute("i", i);
	        model.addAttribute("errorMsg", "업로드 실패");
	        
	        return "inquiry/inquiryEnrollForm";
	    }
	}
	
	@RequestMapping("detail.in")
	public ModelAndView selectInquiry(ModelAndView mv, int inquiryNo) {
		
			Inquiry i = inquiryService.selectInquiry(inquiryNo);
			
			mv.addObject("i", i).setViewName("inquiry/inquiryDetail");
			
			// mv.addObject("errorMsg", "상세조회 실패").setViewName("notice/errorPage");
		
		return mv;
	}
	
	@RequestMapping("delete.in")
	public String deleteInquiry(int inquiryNo, Model model, String filePath, HttpSession session) {
		
		int result = inquiryService.deleteInquiry(inquiryNo);
		
		if(result > 0) {
			
			session.setAttribute("message", "성공적으로 문의글을 삭제하였습니다.");
			
			return "redirect:/list.in";
			
		} else {
			
			model.addAttribute("errorMsg", "문의글 삭제 실패");
			
			return "common/errorPage";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="rlist.in", produces="application/json; charset=UTF-8")
	public String ajaxSelectReplyList(int inquiryNo) {
		
		List<CSReply> list = inquiryService.selectReplyList(inquiryNo);

		return new Gson().toJson(list);
		
	}
	
	@ResponseBody
	@RequestMapping(value="rinsert.in", produces="text/html; charset=UTF-8")
	public String ajaxInsertReply(CSReply r) {
		
		int result = inquiryService.insertReply(r);
		
		return (result > 0) ? "success" : "fail"; // 무조건 문자열 타입으로 응답데이터 리턴
	}
	
	public String saveFile(MultipartFile upfile, HttpSession session) {
		
		String originName = upfile.getOriginalFilename();
		System.out.println(originName);
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		int ranNum = (int)(Math.random() * 90000 + 10000);
		
		String ext = originName.substring(originName.lastIndexOf("."));
		 
		String changeName = currentTime + ranNum + ext;
		
		String savePath = session.getServletContext().getRealPath("resources/upFiles/inquiry_upfiles/");
		
		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch(IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
	}
	
}
