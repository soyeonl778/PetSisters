package com.kh.petsisters.reservation.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Review {
	
	private int revNo;			// 	후기번호   REV_NO	NUMBER
	private String revTitle;	//	후기제목   REV_TITLE	VARCHAR2(250 BYTE)
	private String revContent;	//	후기내용   REV_CONTENT	VARCHAR2(2000 BYTE)
	private Date createDate;	//	작성일   CREATE_DATE	DATE
	private String acontent;	//	답변내용   A_CONTENT	VARCHAR2(1000 BYTE)
	private Date adate;			//	답변일   A_DATE	DATE
	private String status;		//	삭제여부   STATUS	VARCHAR2(1 BYTE)
	private String filePath;	//	파일경로   FILE_PATH	VARCHAR2(1000 BYTE)
	private int refResNo;		//	참조예약번호   REF_RESNO	NUMBER
	private String changeName;	// 	변경된 파일 경로
	private int rNo;			//  제발 등록되라 고유번호
	private Date revStartDate;	//  예약 시작일
	private Date revEndDate;	//  예약 종료일
	private String userName;	// 	유저 이름
	
}
