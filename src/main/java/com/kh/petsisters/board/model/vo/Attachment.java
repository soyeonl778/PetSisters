package com.kh.petsisters.board.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class Attachment {

	private int fileNo; 
	private String originName; 
	private String changeName; 
	private String filePath; 
	private String createDate; 
	private String status; 
	private int fileLevel;
	private int ref_bno; 

}