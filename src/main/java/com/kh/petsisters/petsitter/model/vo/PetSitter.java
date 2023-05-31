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
	
	private int pNo;             //	P_NO	NUMBER
	private String pTitle;       //	P_TITLE	VARCHAR2(250 BYTE)
	private String pContent;     //	P_CONTENT	VARCHAR2(2000 BYTE)
	private String pService;     //	P_SERVICE	VARCHAR2(1000 BYTE)
	private String careList;     //	CARE_LIST	VARCHAR2(1000 BYTE)
	private String pMode;        //	P_MODE	VARCHAR2(1 BYTE)
	private int userNo;          //	USER_NO	NUMBER
	
}
