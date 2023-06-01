package com.kh.petsisters.petsitter.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
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
	
}
