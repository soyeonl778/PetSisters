package com.kh.petsisters.member.model.service;

import com.kh.petsisters.member.model.vo.Member;

public interface MemberService {
	
	// 로그인 서비스
		Member login(Member m);
		
	// 회원추가 서비스
		int insertMember(Member m);

	// 아이디중복체크 서비스 (select)
		int idCheck(String checkId);
		
	// 아이디 찾기 서비스
		Member foundId(Member m);
}
