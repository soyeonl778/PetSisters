package com.kh.petsisters.board.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class BoardReply {
	
	private int repNo;				//	댓글번호
	private String repContent;		//	댓글 내용
	private String replyCreateDate;	//	댓글작성일
	private String replyStatus;		//	댓글공개여부
	private int replyUserNo;		//	댓글작성회원번호
	private int refBno;				//	참조게시글번호
	private String userNickName;	//  댓글작성자 별칭
	private String userFile;		//  댓글작성사프로필사진

}
