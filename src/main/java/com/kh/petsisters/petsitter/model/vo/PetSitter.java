package com.kh.petsisters.petsitter.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
public class PetSitter {
	
	private int petSitterNo;             //	P_NO	NUMBER
	private String petSitterTitle;       //	P_TITLE	VARCHAR2(250 BYTE)
	private String petSitterContent;     //	P_CONTENT	VARCHAR2(2000 BYTE)
	private String petSitterService;     //	P_SERVICE	VARCHAR2(1000 BYTE)
	private String careList;     		 //	CARE_LIST	VARCHAR2(1000 BYTE)
	private String petSitterMode;        //	P_MODE	VARCHAR2(1 BYTE)
	private int userNo;                  //	USER_NO	NUMBER
	private String userName;             // USER_NAME VARCHAR2(10 BYTE)
	
	// MEMBER
	private String address;              // ADDRESS 주소
	private String caStatus;             // CA_STATUS 펫시터자격증여부
	private String userFilePath;         // FILE_PATH	회원 파일 경로
	
	// RESERVATION
	private Date startDate;			     // 시작일시	START_DATE	DATE
	private Date endDate;			     // 종료일시 	END_DATE	DATE
	private int refPno;				     // 참조펫시터프로필번호  	REF_PNO	NUMBER
	
	// REVIEW
	private int revNo;                   // REV_NO 후기 번호
	private String revContent;           // REV_CONTENT 후기 내용
	private Date createDate;             // CREATE_DATE 후기 작성일
	private String revFilePath;          // FILE_PATH 후기 파일 경로
	private int reviewCount;			 // REVIEW_COUNT 후기 총갯수
	
	// DOG
	private int dogNo;                   //	DOG_NO	강아지 번호
	private String dogName;              //	DOG_NAME	강아지 이름
	private String dogGender;            //	DOG_GENDER	성별
	private String dogBreed;             //	DOG_BREED	종류
	private Date dogBirthday;            //	DOG_BIRTHDAY	생일
	private String dogFilePath;          //	FILE_PATH	강아지 파일 경로
}




