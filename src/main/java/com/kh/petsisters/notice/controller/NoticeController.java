package com.kh.petsisters.notice.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.common.template.Pagination;
import com.kh.petsisters.notice.model.service.NoticeService;
import com.kh.petsisters.notice.model.vo.Notice;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	// 메뉴바 클릭 시 => list.bo (쿼리스트링이 없더라도 기본적으로 1페이지를 요청)
	// 페이징바 클릭 시 => list.bo?cPage=요청하는페이지수
	
	@RequestMapping("list.no")
	public ModelAndView selectList(
			@RequestParam(value="cPage", defaultValue="1") int currentPage,
			ModelAndView mv) {
		
		// 페이징 처리를 위한 PageInfo 객체 얻어내기
		int listCount = noticeService.selectListCount();
		
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Notice> list = noticeService.selectList(pi);
		
		mv.addObject("pi", pi).addObject("list", list).setViewName("notice/noticeList");
		
		return mv;
	}
	
	// faqList 화면 띄우기
	@GetMapping("/showFaq")
    public ModelAndView showFaq() {
		
        ModelAndView modelAndView = new ModelAndView();
        
        modelAndView.setViewName("notice/faqList");
        
        return modelAndView;
    }
	
	// 공지사항 작성 기능
	@RequestMapping("enrollForm.no")
	public String enrollForm() {
		
		return "notice/noticeEnrollForm";
	}
	
	// 공지사항 등록
	@RequestMapping("insert.no")
	public String insertNotice(Notice n, HttpSession session, Model model) {
		
		int result = noticeService.insertNotice(n);
		
		if(result > 0) {
			
			session.setAttribute("alertMsg", "성공적으로 공지사항을 등록했습니다.");
			
			return "redirect:/list.no";
		
		} else {
			
			model.addAttribute("errorMsg", "공지사항 등록에 실패했습니다.");
			
			return "redirect:/enrollForm.no";
		}
	}

	// 공지사항 상세조회
	@RequestMapping("detail.no")
	public ModelAndView selectNotice(ModelAndView mv, int noticeNo) {
		
		int result = noticeService.increaseCount(noticeNo);
		
		if(result > 0) {
			
			Notice n = noticeService.selectNotice(noticeNo);
			
			mv.addObject("n", n).setViewName("notice/noticeDetail");
			
		} else {
			
			System.out.println("오류다!");
		}
		
		return mv;
	}
	
	// 공지사항 삭제
	
	@RequestMapping("delete.no")
	public String deleteNotice(int noticeNo, Model model, HttpSession session) {
		
		int result = noticeService.deleteNotice(noticeNo);
		
		if(result > 0) {
			
			session.setAttribute("alertMsg", "성공적으로 공지사항을 삭제했습니다.");
			
			return "redirect:/list.no";
			
		} else {
			
			model.addAttribute("errorMsg", "공지사항 삭제에 실패했습니다.");
			
			return "notice/errorPage";
		}
	}
	
	// 공지사항 수정 페이지로
	@RequestMapping("updateForm.no")
	public String updateForm(int noticeNo, Model model) {
		
		Notice n = noticeService.selectNotice(noticeNo);
		
		model.addAttribute("n", n);
		
		return "notice/noticeUpdate";
	}

	// 공지사항 수정 기능
	@RequestMapping("update.no")
	public String updateNotice(Notice n, HttpSession session, Model model) {
		
		int result = noticeService.updateNotice(n);
		
		if(result > 0) {
			
			session.setAttribute("alertMsg", "성공적으로 공지사항을 수정했습니다.");
			
			return "redirect:/detail.no?noticeNo=" + n.getNoticeNo();
		
		} else {
			
			model.addAttribute("errorMsg", "공지사항 수정에 실패했습니다.");
			
			return "notice/errorPage";
		}
		
	}
	
}
