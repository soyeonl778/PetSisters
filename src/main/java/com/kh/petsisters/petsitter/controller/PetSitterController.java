package com.kh.petsisters.petsitter.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.common.template.Pagination;
import com.kh.petsisters.member.model.vo.Dog;
import com.kh.petsisters.member.model.vo.Member;
import com.kh.petsisters.petsitter.model.service.PetSitterService;
import com.kh.petsisters.petsitter.model.vo.PetSitter;
import com.kh.petsisters.petsitter.model.vo.PetSitterImg;
import com.kh.petsisters.petsitter.model.vo.PetSitterLike;
import com.kh.petsisters.reservation.model.vo.Review;

@Controller
public class PetSitterController {
	
	@Autowired
	private PetSitterService petSitterService;

	@RequestMapping("detail.pe")
	public ModelAndView selectPetSitter(ModelAndView mv,
										HttpSession session,
			                            int pno) {
		
		// 프로필 상세조회용 PetSitter 객체 조회
		PetSitter p = petSitterService.selectPetSitter(pno);
		
		// 프로필 상세페이지 후기 리스트 조회
		ArrayList<Review> revList = petSitterService.selectReviewList(pno);
		
		// 프로필 상세페이지 후기 갯수 조회
		int reviewCount = revList.size();
		
		// 프로필 상세페이지 반려동물 조회
		ArrayList<Dog> dogList = petSitterService.selectDogList(pno);
		
		// 프로필 상세페이지 이미지 리스트 조회
		ArrayList<PetSitterImg> psImgList = petSitterService.selectPetSitterImg(pno);
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if(loginUser != null) {
			PetSitterLike psLike = new PetSitterLike();
			int userNo = loginUser.getUserNo();
			
			psLike.setUserNo(userNo);
			psLike.setRefPno(pno);
			
			// 회원의 찜 체크 여부 조회
			int likeCheck = petSitterService.selectLikeCheck(psLike); // 1 또는 0 (0일 때 빈 하트)
			
			mv.addObject("likeCheck", likeCheck);
		}
		
		// 펫시터 찜 갯수 조회
		int likeCount = petSitterService.selectLikeCount(pno);
		
		// 조회된 데이터를 mv 에 담아서 포워딩 페이지 경로를 잡아주기
		mv.addObject("p", p)
		  .addObject("revList", revList)
		  .addObject("reviewCount", reviewCount)
		  .addObject("dogList", dogList)
		  .addObject("psImgList", psImgList)
		  .addObject("likeCount", likeCount)
		  .setViewName("petsitter/petSitterDetailView");

		return mv;
	}
	
	@RequestMapping("updateForm.pe")
	public ModelAndView updateForm(int pno,
			                       ModelAndView mv) {
		
		// 펫시터 상세조회용 selectPetSitter 메소드 요청
		PetSitter p = petSitterService.selectPetSitter(pno);
		
		// 프로필 상세페이지 이미지 리스트 조회
		ArrayList<PetSitterImg> psImgList = petSitterService.selectPetSitterImg(pno);
		
		mv.addObject("p", p);
		mv.addObject("psImgList", psImgList);
		mv.setViewName("petsitter/petSitterProfileForm");
		
		return mv;
	}
	
	@RequestMapping("update.pe")
	public String updatePetSitter(PetSitter p,
		  @RequestParam("upfile") ArrayList<MultipartFile> upfileList,
		  @RequestParam(value="delete", required = false) ArrayList<Integer> deleteList,
								  HttpSession session,
			                      Model model) {
		
	    int result2 = 1;
	    String filePath = "/resources/upFiles/petsitter_upfiles/";
    		
	    // 프로필폼에서 기존 이미지 파일을 삭제할 경우
	    if(deleteList != null) {
	    	
		    // 삭제할 fileNo 이 담긴 리스트를 보내면서 삭제 요청
		    result2 = petSitterService.deletePetSitterImg(deleteList);
	    }

		// ------------ 새로운 첨부파일 -------------

    	// 펫시터 이미지 배열 생성
	    ArrayList<PetSitterImg> newList = new ArrayList<>();

	    // 새로 넘어온 첨부파일이 존재할 경우
	    if(upfileList.get(0).getSize() > 0) {
	    	
		    // upfileList의 크기 만큼 반복문 실행
	    	for(int i = 0; i < upfileList.size(); i++) {
	    		
	    		// 펫시터 이미지 객체 생성
	    		PetSitterImg psImg = new PetSitterImg();
	    		
	    		// 서버에 업로드 시키기
	    		String changeName = saveFile(upfileList.get(i), session);
	    		
	    		// 펫시터 이미지 객체에 담기
				psImg.setOriginName(upfileList.get(i).getOriginalFilename());
				psImg.setChangeName(changeName);
				psImg.setFilePath(filePath);
				psImg.setRefPno(p.getPetSitterNo());
				
				// 리스트에 담기
				newList.add(psImg);
	    	}
	    	// 펫시터 프로필 다중파일 등록 요청
	    	result2 = petSitterService.insertPetSitterImg(newList);
	    }
	    
	    // 펫시터 프로필 수정용 펫시터 객체 UPDATE 요청
		int result1 = petSitterService.updatePetSitter(p);
		
		int result = result1 * result2; // 1 또는 0
	    
		if(result > 0) { // 수정 성공
			
			// 일회성 알람문구 담아서 프로필 상세페이지로 url 재요청
			session.setAttribute("alertMsg", "프로필이 성공적으로 수정되었습니다.");
			
			return "redirect:/detail.pe?pno=" + p.getPetSitterNo();
			
		} else { // 수정 실패
			
			// 에러 문구 일회성 알람 띄우기
			session.setAttribute("alertMsg", "프로필 수정에 실패했습니다.");
		
			return "redirect:/updateForm.pe?pno=" + p.getPetSitterNo();
		}
	}
	
	@RequestMapping("list.pe")
	public ModelAndView selectList(@RequestParam(value="keyword", defaultValue="0") String keyword,
								   @RequestParam(value="startDate", defaultValue="0") String startDate,
								   @RequestParam(value="endDate", defaultValue="0") String endDate,
								   @RequestParam(value="cPage", defaultValue="1") int currentPage,
								   ModelAndView mv) {
		
		// 펫시터 리스트 총 갯수 조회
		int listCount = petSitterService.selectListCount();
		
		int pageLimit = 10;
		int boardLimit = 5;
		
		// PageInfo 객체 얻어내기
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		PetSitter p = new PetSitter();
		p.setKeyword(keyword);
		p.setStartDate(startDate);
		p.setEndDate(endDate);
		
		System.out.println(p);
		
		// 펫시터 리스트 전체 조회
		ArrayList<PetSitter> list = petSitterService.selectList(pi, p);
		
		System.out.println(list);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("petsitter/petSitterListView");
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="updateComment.pe", produces="text/html; charset=UTF-8")
	public String ajaxUpdateComment(Review r) {
		
		System.out.println("-----");
		System.out.println(r);
		System.out.println("-----");
		
		// 펫시터 후기 답글 수정
		int result = petSitterService.updateComment(r);
		
		return (result > 0) ? "success" : "fail"; // 무조건 문자열 타입으로 응답데이터 리턴
	}
	
	@ResponseBody
	@RequestMapping(value="deleteComment.pe", produces="text/html; charset=UTF-8")
	public String ajaxDeleteComment(Review r) {
		
		// 펫시터 후기 답글 삭제
		int result = petSitterService.deleteComment(r);
		
		System.out.println(result);
		
		return (result > 0) ? "success" : "fail";
	}
	
	@ResponseBody
	@RequestMapping(value="like.pe", produces="text/html; charset=UTF-8")
	public String petSitterLike(PetSitterLike psLike,
								int check,
								HttpSession session) {
		
		int result = 0;
		
		if(check == 0) { // 빈 하트 일 때 INSERT
			
			// 펫시터 찜 추가 요청
			result = petSitterService.insertLike(psLike);
			
		} else { // 채워진 하트 일 때 DELETE
			
			// 펫시터 찜 삭제 요청
			result = petSitterService.deleteLike(psLike);	
		}
		
		return (result > 0) ? "success" : "fail";
		
	}
	
	
	
	
	
	// ----------------------------------------------------------------
	// 현재 넘어온 첨부파일 그 자체를 파일명 수정 후 서버의 폴더에 저장시키는 일반 메소드
	public String saveFile(MultipartFile upfile, HttpSession session) {
		
		// 파일명 수정 작업 후 서버에 업로드 시키기
		// 1. 원본파일명 뽑기
		String originName = upfile.getOriginalFilename();
		
		// 2. 현재 시간 형식을 문자열로 뽑아내기
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss")
				                 .format(new Date()); // "20230511104920"
		
		// 3. 뒤에 붙을 5자리 랜덤값 뽑기 (10000 ~ 99999 범위)
		int ranNum = (int)(Math.random() * 90000 + 10000);
		
		// 4. 원본파일명으로부터 확장자명 뽑기
		String ext = originName.substring(originName.lastIndexOf("."));
		
		// 5. 2, 3, 4 단계에서 구한 값을 모두 이어 붙이기
		String changeName = currentTime + ranNum + ext;
		
		// 6. 업로드 하고자 하는 서버의 물리적인 경로 알아내기
		String savePath = session.getServletContext().getRealPath("/resources/upFiles/petsitter_upfiles/");
		
		// 7. 경로와 수정파일명을 합체 후 파일을 업로드 해주기
		try {
			upfile.transferTo((new File(savePath + changeName)));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
	}
	
}




