package com.kh.petsisters.board.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class Board {
	
	
	private int boardNo;
	private String boardTitle; 
	private String boardContent; 
	private String createDate; 
	private String status; 
	private int count; 
	private int userNo;
	// 카테고리
	private int categoryMain;
	private int categorySub;
	
	private String dogName;
	private String dogImg;
	
	private String originName;
	private String changeName;
	private String atFilePath;		// 보드 조회용 게시글 사진
	


	
}






















