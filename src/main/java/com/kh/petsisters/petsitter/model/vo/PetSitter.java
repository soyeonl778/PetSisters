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
	
	// REVIEW
	private int reviewCount;			 // REVIEW_COUNT 후기 총갯수
	
	// P_ATTACHMENT
	private String changeName;           //	CHANGE_NAME
	private String paFilePath;           //	FILE_PATH
}




