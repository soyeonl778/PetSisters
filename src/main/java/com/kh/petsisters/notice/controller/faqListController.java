package com.kh.petsisters.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class faqListController {
	
	@GetMapping("/showFaq")
    public ModelAndView showFaq() {
		
        ModelAndView modelAndView = new ModelAndView();
        
        modelAndView.setViewName("notice/faqList");
        
        return modelAndView;
    }

}