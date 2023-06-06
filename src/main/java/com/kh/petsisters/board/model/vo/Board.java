package com.kh.petsisters.board.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class Board {
	
	
	private int boardNo;
	private String boardTitle; 
	private String boardContent; 
	private String createDate; 
	private String status; 
	private int count; 
	private String userNo; 
}
