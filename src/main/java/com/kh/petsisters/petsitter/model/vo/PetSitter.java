package com.kh.petsisters.petsitter.model.vo;

public class PetSitter {
	
	private int pNo;             //	P_NO	NUMBER
	private String pTitle;       //	P_TITLE	VARCHAR2(250 BYTE)
	private String pContent;     //	P_CONTENT	VARCHAR2(2000 BYTE)
	private String pService;     //	P_SERVICE	VARCHAR2(1000 BYTE)
	private String careList;     //	CARE_LIST	VARCHAR2(1000 BYTE)
	private String pMode;        //	P_MODE	VARCHAR2(1 BYTE)
	private int userNo;          //	USER_NO	NUMBER

	public PetSitter() { }

	public PetSitter(int pNo, String pTitle, String pContent, String pService, String careList, String pMode,
			int userNo) {
		super();
		this.pNo = pNo;
		this.pTitle = pTitle;
		this.pContent = pContent;
		this.pService = pService;
		this.careList = careList;
		this.pMode = pMode;
		this.userNo = userNo;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getpTitle() {
		return pTitle;
	}

	public void setpTitle(String pTitle) {
		this.pTitle = pTitle;
	}

	public String getpContent() {
		return pContent;
	}

	public void setpContent(String pContent) {
		this.pContent = pContent;
	}

	public String getpService() {
		return pService;
	}

	public void setpService(String pService) {
		this.pService = pService;
	}

	public String getCareList() {
		return careList;
	}

	public void setCareList(String careList) {
		this.careList = careList;
	}

	public String getpMode() {
		return pMode;
	}

	public void setpMode(String pMode) {
		this.pMode = pMode;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "PetSitter [pNo=" + pNo + ", pTitle=" + pTitle + ", pContent=" + pContent + ", pService=" + pService
				+ ", careList=" + careList + ", pMode=" + pMode + ", userNo=" + userNo + "]";
	}
	
}
