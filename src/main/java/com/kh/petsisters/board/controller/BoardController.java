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
import com.kh.petsisters.petsitter.model.vo.PetSitterImg;


@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	
	
	// 커뮤니티 (메인페이지)
	@RequestMapping("main.bo")
	public String selectThumbnailList(Model model) {

		ArrayList<Board> list = boardService.selectTopList();
		ArrayList<Board> list1 = boardService.selectBottomList1();
		
		model.addAttribute("list", list);
		model.addAttribute("list1", list1);
		
		return "board/boardMain";
	}
	

	
	// 사진게시판 
	@RequestMapping("mypetList.bo")
	public ModelAndView mypetList(Board b,
								@RequestParam(value="cPage", defaultValue="1") int currentPage,
								ModelAndView mv) {
		
		b.setCategoryMain(2);
		
		int listCount = boardService.selectListCount(b);
		
		int pageLimit = 10;
		int boardLimit = 6;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Board> list = boardService.selectList(pi, b);
		
		System.out.println(pi);
		System.out.println(list);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("board/boardMypetList");
		
		return mv;
	}
	
	
	// 자유게시판
	@RequestMapping("freeList.bo")
	public ModelAndView select(Board b,
										@RequestParam(value="cPage", defaultValue="1") int currentPage,
										ModelAndView mv) {
		
		b.setCategoryMain(1);

		int listCount = boardService.selectListCount(b);
		
		int pageLimit = 10;
		int boardLimit = 6;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<Board> list = boardService.selectList(pi, b);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("board/boardFreeList");
		
		return mv;
	}
	
	
	// 자유게시판 : 등록하기폼 
	@RequestMapping("freeEnrollForm.bo")
	public ModelAndView enrollForm(ModelAndView mv) {
		
		Board b = new Board();
		b.setCategoryMain(1);
		b.setCategorySub(1);
		
		mv.addObject("b", b)
		  .setViewName("board/boardEnrollForm");
		
		return mv;
	}

	
	// detail.bo 에서 포워딩이 안되어서, 넘어온 bno 값이 없음
	@RequestMapping("updateForm.bo")
	public String updateBoard(int bno) {
		
		
		return "board/boardUpdateForm2";
	}
	
	
	
	// 사진/자유게시판 공통 : 글작성 insert 기능
	@RequestMapping("insert.bo")
	public String insertFreeBoard(Board b,
		  	@RequestParam("upfile") ArrayList<MultipartFile> upfileList,
								  HttpSession session,
								  Model model) {
		
		int result1 = 1;
		int result2 = 1;
		String filePath = "/resources/upFiles/board_upfiles/";
		
		result1 = boardService.insertBoard(b);
		
		
		// ------------------- 다중첨부파일 부분 -------------------
		ArrayList<Attachment> List = new ArrayList<>();
		// 새로 넘어온 첨부파일이 존재할 경우
	    if(upfileList.get(0).getSize() > 0) {
	    	
		    // upfileList의 크기 만큼 반복문 실행
	    	for(int i = 0; i < upfileList.size(); i++) {
	    		
	    		if (upfileList.get(i).getSize() > 0) {
	    			
	    			// 이미지 객체 생성
	    			Attachment at = new Attachment();
	    			
	    			// 서버에 업로드 시키기
	    			String changeName = saveFile(upfileList.get(i), session);
	    			
	    			// 펫시터 이미지 객체에 담기
	    			at.setOriginName(upfileList.get(i).getOriginalFilename());
	    			at.setChangeName(changeName);
	    			at.setFilePath(filePath);
	    			
	    			List.add(at);
	    		}
	    	}
	    	result2 = boardService.insertAttachmentList(List);
	    }
	    
	    int result = result1 * result2;
	    
	    if(result > 0) { // 등록 성공
	    	
			// 일회성 알람문구 담아서 프로필 상세페이지로 url 재요청
			session.setAttribute("alertMsg", "게시글 등록 완료");
			
			return "redirect:/detail.bo?bno=" + b.getBoardNo();
	    	
		} else { // 수정 실패
			
			// 에러 문구 일회성 알람 띄우기
			session.setAttribute("alertMsg", "게시글 등록 실패");
		
			return "redirect:/.bo";
		}
	}
	    
	
	// 상세페이지 포워딩
	@RequestMapping("detail.bo")
	public ModelAndView selectBoard(ModelAndView mv,
										int bno) {
		
		int result = boardService.increaseCount(bno);
		
		if(result > 0) { // 성공
			Board b = boardService.selectBoard(bno);
			
			// 조회된 데이터를 mv 에 담아서 포워딩 페이지 경로를 잡아주기
			mv.addObject("b", b).setViewName("board/boardDetailForm");
		} else { // 실패
			
			// 에러문구를 담아서 에러페이지로 포워딩 경로 잡아주기
			mv.addObject("alertMsg","게시글 상세조회 실패").setViewName("main");
			
		}
		
		return mv;
	}
	
	
	// 업데이트 
		@RequestMapping("update.bo")
		public String updateBoard(Board b,
				@RequestParam("upfile") ArrayList<MultipartFile> upfileList,
				   				    HttpSession session,
				   				    Model model) {
			
			
			int result1 = 1;
			int result2 = 1;
			String filePath = "/resources/upFiles/board_upfiles/";
			
			result1 = boardService.updateBoard(b);
			
			
			// ------------------- 다중첨부파일 부분 -------------------
			int boardNo = b.getBoardNo();
			result2 = boardService.deleteAttaAll(boardNo);
			
		    if(upfileList.get(0).getSize() > 0) {
		    	
		    	
		    	for(int i = 0; i < upfileList.size(); i++) {
		    		
		    		if (upfileList.get(i).getSize() > 0) {
		    			
		    			Attachment at = new Attachment();
		    			
		    			String changeName = saveFile(upfileList.get(i), session);
		    			
		    			// 펫시터 이미지 객체에 담기
		    			at.setOriginName(upfileList.get(i).getOriginalFilename());
		    			at.setChangeName(changeName);
		    			at.setFilePath(filePath);
		    			at.setRefBno(b.getBoardNo());
		    			
		    			result2 = boardService.updateAttachmentList(at);
		    		}
		    		
		    	}
		    	
		    	
		    	
		    }
		    
		   
		    
		    
		    int result = result1 * result2;
		    
		    if(result > 0) { // 등록 성공
		    	
				// 일회성 알람문구 담아서 프로필 상세페이지로 url 재요청
				session.setAttribute("alertMsg", "게시글 수정 완료");
				
				return "redirect:/.bo";
		    	
			} else { // 수정 실패
				
				// 에러 문구 일회성 알람 띄우기
				session.setAttribute("alertMsg", "게시글 수정 실패");
			
				return "redirect:/.bo";
			}

	}
	
	
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
		String savePath = session.getServletContext().getRealPath("/resources/upFiles/board_upfiles/");
		
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




















