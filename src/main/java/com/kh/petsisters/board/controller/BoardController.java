package com.kh.petsisters.board.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.petsisters.board.model.service.BoardService;
import com.kh.petsisters.board.model.vo.Board;
import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.common.template.Pagination;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("list.bo")
	public ModelAndView selectList(
			@RequestParam(value="cPage", defaultValue="1") int currentPage, 
			ModelAndView mv) {
		
		// 페이징처리를 위한 PageInfo 객체 얻어내기
		int listCount = boardService.selectListCount();
		
		int pageLimit = 10;
		int boardLimit = 6;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
	
		
		ArrayList<Board> list = boardService.selectList(pi);
		
		
		
		System.out.println(list);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("board/boardCategoryForm");
		
		return mv;
	}
	
	@RequestMapping("enrollForm.bo")
	public String enrollForm() {
		
		// /WEB-INF/views/board/boardEnrollForm.jsp
		return "board/boardEnrollForm";
	}
	
	@RequestMapping("main.bo")
	public String mainView() {
		
		// /WEB-INF/views/board/boardEnrollForm.jsp
		return "board/boardMain";
	}
	
	/* boardDetailForm - 상세페이지 화면에 뿌려주기, bno로  board 정보 뿌려주기 */
	@RequestMapping("detail.bo")
	public ModelAndView selectBoard(ModelAndView mv, int bno) {
		
		// boardDetailForm.jsp 에서 필요로 하는 응답데이터를 조회
		Board b = boardService.selectBoard(bno);
		
		System.out.println(b);
		
		// 조회된 데이터를 mv 에 담아서 포워딩 페이지 경로를 잡아주기
		mv.addObject("b", b).setViewName("board/boardDetailForm");
		
		return mv;
	}
	
	@RequestMapping("insert.bo")
	public String insertBoard(Board b,
							  MultipartFile upfile,
							  HttpSession session,
							  Model model) {
	   /*
		if(!upfile.getOriginalFilename().equals("")) { // 넘어온 첨부파일이 있을 경우
			
			String changeName = saveFile(upfile, session);
			
			// 8. 원본파일명, 서버에 업로드된경로 + 수정파일명을 Board b 에 담기
			b.setOriginName(upfile.getOriginalFilename());
			b.setChangeName("resources/upFiles/board_upfiles/" + changeName);
		}
		*/
		
		System.out.println(b);
		// 이 시점 기준으로
		// 필드에 값들이 담겨 있음
		int result = boardService.insertBoard(b);
		
		if(result > 0) { // 성공 => 일회성 알람문구 띄운 뒤 게시글 리스트페이지로 url 재요청
					
			session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
			
			return "redirect:/list.bo"; // 내부적으로 1번 페이지로 향함
			
		} else { // 실패 => 에러 문구를 담아서 에러페이지로 포워딩
			
			model.addAttribute("errorMsg", "게시글 등록 실패");
			
			return "common/errorPage";
		}
	}
							  
	
	
	
	

}




















