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
	
	// MEMBER
	private String address;              // ADDRESS 주소
	private String caStatus;             // CA_STATUS 펫시터자격증여부
	
	// RESERVATION
	private Date startDate;			     // 시작일시	START_DATE	DATE
	private Date endDate;			     // 종료일시 	END_DATE	DATE
	private int refPno;				     // 참조펫시터프로필번호  	REF_PNO	NUMBER
	
	private int reviewCount;			 // REVIEW_COUNT 후기 총갯수
}
