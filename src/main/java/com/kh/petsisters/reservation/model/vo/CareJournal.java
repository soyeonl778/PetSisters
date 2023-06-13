package com.kh.petsisters.reservation.model.vo;


import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class CareJournal {

		// JOURNAL 테이블	
		private int jNo;			//	돌봄일지 번호
		private String jtitle;		//	돌봄일지 제목
		private String jcontent;	//	돌봄일지 내용
		private String create_date;	//	게시일
		private String status;		//	삭제여부 'Y' 는 유지중
		private int refResNo;		//	참조에약번호 (예약테이블)
		
		
		// J_ATTACHMENT 테이블
		private int fileNo;			//	파일번호
		private String originName;	//	원본파일명
		private String changeName;	//	수정파일명
		private String filePath;	//	파일경로
		private String createDate;	//	파일업로드날짜
		private String attachStatus;//	삭제여부
		private int fileLevel;		//	파일레벨
		private int refJno;			//	참조 돌봄일지 번호
		
		
		// 돌봄일지 조회용 추가
		private Date startDate;			//  예약 시작일
		private Date endDate;			//  예약 종료일
		private String revStatus;		//  예약 상
		private String userName;		//  담당 펫시터 이름
		private int pno;				//  담당 펫시터 번호
		private String petistterName; 	//  펫시터 이름
		
		
	
}
