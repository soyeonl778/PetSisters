package com.kh.petsisters.common.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileController {
	
	// 현재 넘어온 첨부파일 그 자체를 파일명 수정 후 서버의 폴더에 저장시키는 일반 메소드 작성
	// * Spring 의 Controller 클래스 내부에 반드시 요청을 받아 쳐주는 메소드만 존재하라는 법은 없음
	// => 즉, 일반 메소드들도 내가 필요하다면 언제든지 정의해서 쓸 수 있음
	public String saveFile(MultipartFile upfile, HttpSession session) {
		
		// 1. 원본파일명 뽑기
		String originName = upfile.getOriginalFilename(); // "bono.jpg"
		
		// 2. 현재 시간 형식을 문자열로 뽑아내기
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss")
													.format(new Date()); // "20230511104920"
		
		// 3. 뒤에 붙을 5자리 랜덤값 뽑기 (10000 ~ 99999)
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
















