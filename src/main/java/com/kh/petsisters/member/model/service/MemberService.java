package com.kh.petsisters.member.model.service;

import com.kh.petsisters.member.model.vo.Member;

public interface MemberService {
	
	// 로그인 서비스
		Member login(Member m);
		
	// 회원추가 서비스
		int insertMember(Member m);

}
