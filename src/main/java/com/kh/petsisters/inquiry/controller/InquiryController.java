package com.kh.petsisters.inquiry.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.common.template.Pagination;
import com.kh.petsisters.inquiry.model.service.InquiryService;
import com.kh.petsisters.inquiry.model.vo.Inquiry;

@Controller
public class InquiryController {
	
	@Autowired
	private InquiryService inquiryService;
	
	
	@RequestMapping("list.in")
	public ModelAndView selectList(
			@RequestParam(value="cPage", defaultValue="1") int currentPage,
			@RequestParam("userNo") int userNo,
			ModelAndView mv) {
		
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
	
	
}
