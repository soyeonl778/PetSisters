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
import com.kh.petsisters.petsitter.model.service.PetSitterService;
import com.kh.petsisters.petsitter.model.vo.PetSitter;
import com.kh.petsisters.petsitter.model.vo.PetSitterImg;
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
		
		// 조회된 데이터를 mv 에 담아서 포워딩 페이지 경로를 잡아주기
		mv.addObject("p", p);
		mv.addObject("revList", revList);
		mv.addObject("reviewCount", reviewCount);
		mv.addObject("dogList", dogList);
		mv.addObject("psImgList", psImgList);
		mv.setViewName("petsitter/petSitterDetailView");

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
								  ArrayList<PetSitterImg> psImgList,
		  @RequestParam("upfile") ArrayList<MultipartFile> upfileList,
								  HttpSession session,
			                      Model model) {
		
		System.out.println(upfileList);
		
		int fileLevel = 0;
	    int result2 = 1;
		
		// 기존 첨부파일 또는 새로운 첨부파일이 있을 경우
	    if (psImgList != null || upfileList.size() > 0) {
	    	
	    	// 새로운 첨부파일 ArrayList의 크기 만큼 반복문 실행
	        for (int i = 0; i < upfileList.size(); i++) {
	        	
	        	// 새로운 첨부파일이 있을 경우
	        	if(upfileList.size() > 0) {
	            	
	    			// 새로운 첨부파일은 서버에 업로드 시키기
	    			String changeName = saveFile(upfileList.get(i), session);
    				PetSitterImg psImg = new PetSitterImg();
	    			
	    			// 1. 기존 첨부파일이 있을 경우
	    			if(psImgList != null) {
	    				
	    				// 기존 첨부파일은 삭제
	    				String realPath = session.getServletContext().getRealPath(psImg.getChangeName());
	    				System.out.println(psImg.getChangeName());
	    				System.out.println(realPath);
	    				System.out.println("-------");
	    				
	    				new File(realPath).delete();
	    				
	    				// 새로운 첨부파일의 원본명, 수정파일명을 update (UPDATE)
	    				psImg.setOriginName(upfileList.get(i).getOriginalFilename());
	    				psImg.setChangeName(changeName);
	    				psImg.setFilePath("/resources/upFiles/petsitter_upfiles/");
	    				
	    				System.out.println(psImg);
	    				
	    				// result2 = petSitterService.updatePetSitterImg(psImg);
	    				
	    			} else {
	    				// 2. 기존 첨부파일이 없을 경우 (INSERT)
	    				psImg.setOriginName(upfileList.get(i).getOriginalFilename());
	    				psImg.setChangeName(changeName);
	    				psImg.setFilePath("/resources/upFiles/petsitter_upfiles/");
	    				psImg.setRefPno(p.getPetSitterNo());
	    				result2 = petSitterService.insertPetSitterImg(psImg);
	    			}
	    			
	    			// 파일 레벨 설정 (대표이미지는 1, 아닐 경우 2)
	    			if(fileLevel == i) {
	    				psImg.setFileLevel(i);
	    			}
	    			
	    			// PetSitterImg 객체에 값을 설정하고 리스트에 추가
	                psImgList.add(psImg);
	            }
	    	}
	    }
	    
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
	public ModelAndView selectList(
			@RequestParam(value="cPage", defaultValue="1") int currentPage,
			ModelAndView mv) {
		
		// PageInfo 객체 얻어내기
		int listCount = petSitterService.selectListCount();
		
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
		
		ArrayList<PetSitter> list = petSitterService.selectList(pi);
		
		mv.addObject("pi", pi)
		  .addObject("list", list)
		  .setViewName("petsitter/petSitterListView");
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="updateComment.pe", produces="text/html; charset=UTF-8")
	public String ajaxUpdateComment(Review r) {
		
		int result = petSitterService.updateComment(r);
		
		return (result > 0) ? "success" : "fail"; // 무조건 문자열 타입으로 응답데이터 리턴
	}
	
	@ResponseBody
	@RequestMapping(value="deleteComment.pe", produces="text/html; charset=UTF-8")
	public String ajaxDeleteComment(Review r) {
		
		int result = petSitterService.deleteComment(r);
		
		return (result > 0) ? "success" : "fail";
	}
	
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
	
	// 펫시터 프로필 이미지 조회용 일반 메소드
	public ArrayList<PetSitterImg> selectPetSitterImg(int pno) {
		
		ArrayList<PetSitterImg> psImgList = petSitterService.selectPetSitterImg(pno);
		
		return psImgList;
	}
	
}




