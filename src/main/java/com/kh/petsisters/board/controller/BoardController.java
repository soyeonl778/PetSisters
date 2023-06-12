package com.kh.petsisters.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.petsisters.board.model.service.BoardService;
import com.kh.petsisters.board.model.vo.Board;
import com.kh.petsisters.common.controller.FileController;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	//@Autowired
	// private Attachment at;
	
	@Autowired
	private FileController fileController;
	/*
	// 내강아지자랑 게시판 : 사진게시판 (사진형식, 다중파일)
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
		
		// 다중파일 업로드 
		
		
		
		System.out.println(list);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("board/boardCategoryForm");
		
		return mv;
	}
	*/
	
	/*
	// 자유게시판 : 일반게시판(목록형식)
	@RequestMapping("freelist.bo")
	public ModelAndView selectFreeList(
			@RequestParam(value="cPage", defaultValue="1") int currentPage, 
			ModelAndView mv) {
		
		// 페이징처리를 위한 PageInfo 객체 얻어내기
		int listCount = boardService.selectListCount();
		
		int pageLimit = 10;
		int boardLimit = 6;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
	
		
		ArrayList<Board> list = boardService.selectFreeList(pi);
		
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("board/boardFreeBoard");
		
		return mv;
	}
	*/
	@RequestMapping("mypetlist.bo")
	public String boardMain() {
		
		return "board/boardMain";
	}
	
	@RequestMapping("enrollForm.bo")
	public String enrollForm() {
		
		// /WEB-INF/views/board/boardEnrollForm.jsp
		return "board/boardEnrollForm";
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
	
	/*
	@RequestMapping("insert.bo")
	public String insertBoard(Board b,
							  Attachment at,
							  ArrayList<MultipartFile> upfile,
							  HttpSession session,
							  Model model) {
	   
		int result = boardService.insertBoard(b);
		System.out.println(b);
		
		
		
		if(!((MultipartFile) upfile).getOriginalFilename().equals("")) { // 넘어온 첨부파일이 있을 경우
			
			String changeName = fileController.saveFile((MultipartFile) upfile, session);
			
			// 8. 원본파일명, 서버에 업로드된경로 + 수정파일명을 Board b 에 담기
			at.setOriginName(((MultipartFile) upfile).getOriginalFilename());
			at.setChangeName("resources/upFiles/board_upfiles/" + changeName);
			
			// 첨부파일의 갯수만큼 반복을 돌려가면서 insert 요청 보내기 
			for(MultipartFile multipartfile : upfile) {
				
			}
			
		}
		
		
		
		// 이 시점 기준으로
		// 필드에 값들이 담겨 있음
		
		
		if(result > 0) { // 성공 => 일회성 알람문구 띄운 뒤 게시글 리스트페이지로 url 재요청
					
			session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
			
			return "redirect:/list.bo"; // 내부적으로 1번 페이지로 향함
			
		} else { // 실패 => 에러 문구를 담아서 에러페이지로 포워딩
			
			model.addAttribute("errorMsg", "게시글 등록 실패");
			
			return "common/errorPage";
		}
	}
							  
	*/
	
	
	// 현재 넘어온 첨부파일 그 자체를 파일명 수정 후 서버의 폴더에 저장시키는 일반 메소드 작성
		// * Spring 의 Controller 클래스 내부에 반드시 요청을 받아 쳐주는 메소드만 존재하라는 법은 없음
		// => 즉, 일반 메소드들도 내가 필요하다면 언제든지 정의해서 쓸 수 있음
		public String saveFile(MultipartFile upfile, HttpSession session) {
			
			// 파일명 수정 작업 후 서버에 업로드 시키기
			// => 왠만해선 파일명이 겹치지 않게끔 !!
			
			// MyFileRenamePolicy 에서 지정했던 로직 그대로 재현
			// 예) "bono.jpg" => "20230511104425xxxxx.jpg"
			// 1. 원본파일명 뽑기
			String originName = upfile.getOriginalFilename(); // "bono.jpg"
			
			// 2. 현재 시간 형식을 문자열로 뽑아내기
			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss")
									 .format(new Date()); // "20230511104920"
			
			// 3. 뒤에 붙을 5자리 랜덤값 뽑기 (10000 ~ 99999 범위)
			int ranNum = (int)(Math.random() * 90000 + 10000); // 13152
			
			// 4. 원본파일명으로부터 확장자명 뽑기
			String ext = originName.substring(originName.lastIndexOf(".")); // ".jpg"
			
			// 5. 2, 3, 4 단계에서 구한 값을 모두 이어 붙이기
			String changeName = currentTime + ranNum + ext;
			
			// 6. 업로드 하고자 하는 서버의 물리적인 경로 알아내기
			String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
			
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




















