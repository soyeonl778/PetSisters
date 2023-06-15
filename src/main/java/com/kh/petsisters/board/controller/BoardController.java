package com.kh.petsisters.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.petsisters.board.model.service.BoardService;
import com.kh.petsisters.board.model.vo.Attachment;
//import com.kh.petsisters.board.model.vo.Attachment;
import com.kh.petsisters.board.model.vo.Board;
import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.common.template.Pagination;


@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	/*
	@Autowired
	private Attachment at;
	*/

	/*
	// 내강아지자랑 게시판 : 사진게시판 (사진형식, 다중파일)
	@RequestMapping("mypetlist.bo")
	public ModelAndView selectList(
			@RequestParam(value="cPage", defaultValue="1") int currentPage, 
			ModelAndView mv) {
		
		// 헤더에서 전달값으로 cno="2" 넘겨주기 : 일반게시판
		
		
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
	
	
	
	@RequestMapping("mypetlist.bo")
	public String selectList() {
		
		// imsiBoardMain
		// boardEnrollForm
		return "board/imsiBoardEnrollForm";
	}
	
	
	// 자유게시판 : 일반게시판(목록형식)
	@RequestMapping("freelist.bo")
	public ModelAndView selectFreeList(
			@RequestParam(value="cPage", defaultValue="1") int currentPage, 
			ModelAndView mv) {

		
		// 페이징처리를 위한 PageInfo 객체 얻어내기 : CATEGORY_MAIN = "1"
		int listCount = boardService.selectFreeListCount();
		
		int pageLimit = 10;
		int boardLimit = 6;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
	
		
		ArrayList<Board> list = boardService.selectFreeList(pi);
		
		// System.out.println(list);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("board/boardFreeList");
		
		return mv;
	}
	

	@RequestMapping("freeEnrollForm.bo")
	public String FreeEnrollForm() {
		
		return "board/boardFreeEnrollForm";
	}
	
	
	@RequestMapping("enrollForm.bo")
	public String enrollForm() {
		
		return "board/boardEnrollForm";
	}
	
	@RequestMapping("detail.bo")
	public String selectBoard() {
		
	
		return "board/boardDetailForm";
	}
	
	/*
	@RequestMapping("detail.bo")
	public String selectBoard(int bno) {
		
		int result = boardService.increaseCount(bno);
		
		if(result > 0) {
			
			Board b = boardService.selectBoard(bno);
			
			mv.addObject("b", b).setViewName("board/boardDetailView");
			
		} else {
			
			mv.addObject("errorMsg", "게시글 상세조회 실패").setViewName("common/errorPage");
			
		}
		
		return mv;
	}
	*/
	
	// 테스트용
	@RequestMapping("test")
	public String test(ArrayList<MultipartFile> upfileList, 
			 		   HttpSession session, 
			 		   Attachment a) {
		
		ArrayList<Attachment> list = new ArrayList<>();
		
		for(int i = 0; i < upfileList.size(); i++) {
			
			if(!upfileList.get(i).getOriginalFilename().equals("")) {
				
				String changeName = saveFile(upfileList.get(i), session);
				
				a.setOriginName(upfileList.get(i).getOriginalFilename());
				a.setChangeName("resources/upFiles/board_upfiles/" + changeName);
				
			}
			
			list.add(a);
			System.out.println(list);
		}
		
		// System.out.println(b);
		
//		int result = boardService.insertFreeBoard(b);
//		
//		if(result > 0) { // 성공 => 일회성 알람문구 띄운 뒤 게시글 리스트페이지로 url 재요청
//			
//			session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
//			
//			return "redirect:/freelist.bo"; // 내부적으로 1번 페이지로 향함
//			
//		} else { // 실패 => 에러 문구를 담아서 에러페이지로 포워딩
//			
//			model.addAttribute("errorMsg", "게시글 등록 실패");
//			
//			return "common/errorPage";
//		}
		
		return "board/boardDetailForm";
	}
	
	/*
	// 자유게시판 : 글작성 insert 기능
	@RequestMapping("insert.bo")
	public String insertFreeBoard(Board b,
								  Attachment a,
								  MultipartFile test,
								  MultipartFile[] upfileList,
								  HttpSession session,
								  Model model,
								  String boardTitle) {
		
		// int userNo = ((Member)session.getAttribute("loginUser")).getUserNo();
		
		// b.setUserNo(userNo);
		
		System.out.println(upfileList);
		System.out.println(test);
		System.out.println(boardTitle);
		System.out.println("???");
		
		
		for(int i = 0; i < upfileList.size(); i++) {
			
			
			if(!upfileList.get(i).getOriginalFilename().equals("")) {	
			
				String changeName = saveFile(upfileList.get(i), session);
				
				// 8. 원본파일명, 서버에 업로드된경로 + 수정파일명을 Board b 에 담기
				a.setOriginName(upfileList.get(i).getOriginalFilename());
				a.setChangeName("resources/upFiles/board_upfiles/" + changeName);
			}
		
			ArrayList<Attachment> list = new ArrayList<>();
			list.add(a);
			
		}
	
		
		
		// 이 시점 기준으로
		// 넘어온 첨부파일이 있다면
		// boardTitle, boardWriter, boardContent, originName, changeName
		// 필드에 값들이 담겨 있음
		// 넘어온 첨부파일이 없다면
		// boardTitle, boardWriter, boardContent
		// 필드에 값들이 담겨 있음
//		int result = boardService.insertFreeBoard(b);
//		
//		if(result > 0) { // 성공 => 일회성 알람문구 띄운 뒤 게시글 리스트페이지로 url 재요청
//			
//			session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
//			
//			return "redirect:/freelist.bo"; // 내부적으로 1번 페이지로 향함
//			
//		} else { // 실패 => 에러 문구를 담아서 에러페이지로 포워딩
//			
//			model.addAttribute("errorMsg", "게시글 등록 실패");
//			
//			return "common/errorPage";
//		}
		
		return "board/boardDetailForm";
	}
	*/

	// 내강아지자랑 게시판 : 글작성 insert  
	/*
	@RequestMapping("insert.bo")
	public String insertFreeBoard(Board b,
							  Attachment a,
							  ArrayList<MultipartFile> upfileList,
							  HttpSession session,
							  Model model) {
		
		
		for(int i = 0; i < upfileList.size(); i++) {
			
			
			if(!upfileList.get(i).getOriginalFilename().equals("")) {	
				// 파일을 폴더에 저장 + changeName 반환
				String changeName = saveFile(upfileList.get(i), session);
				
				// 8. 원본파일명, 서버에 업로드된경로 + 수정파일명을 Board b 에 담기
				a.setOriginName(upfileList.get(i).getOriginalFilename());
				a.setChangeName("resources/upFiles/board_upfiles/" + changeName);
			}
		}
	
		
		
		// 이 시점 기준으로
		// 넘어온 첨부파일이 있다면
		// boardTitle, boardWriter, boardContent, originName, changeName
		// 필드에 값들이 담겨 있음
		// 넘어온 첨부파일이 없다면
		// boardTitle, boardWriter, boardContent
		// 필드에 값들이 담겨 있음
		int result = boardService.insertBoard(b);
		
		if(result > 0) { // 성공 => 일회성 알람문구 띄운 뒤 게시글 리스트페이지로 url 재요청
			
			session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
			
			return "redirect:/freelist.bo"; // 내부적으로 1번 페이지로 향함
			
		} else { // 실패 => 에러 문구를 담아서 에러페이지로 포워딩
			
			model.addAttribute("errorMsg", "게시글 등록 실패");
			
			return "common/errorPage";
		}
	}
	*/
	
	
	/* boardDetailForm - 상세페이지 화면에 뿌려주기, bno로  board 정보 뿌려주기 */
	/*
	@RequestMapping("detail.bo")
	public ModelAndView selectBoard(ModelAndView mv, int bno) {
		
		// boardDetailForm.jsp 에서 필요로 하는 응답데이터를 조회
		Board b = boardService.selectBoard(bno);
		
		System.out.println(b);
		
		// 조회된 데이터를 mv 에 담아서 포워딩 페이지 경로를 잡아주기
		mv.addObject("b", b).setViewName("board/boardDetailForm");
		
		return mv;
	}
	*/
	
	
	



	
	
	
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




















