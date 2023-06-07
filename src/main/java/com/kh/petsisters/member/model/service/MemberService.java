package com.kh.petsisters.member.model.service;

import com.kh.petsisters.member.model.vo.Dog;
import com.kh.petsisters.member.model.vo.Member;

public interface MemberService {
	
	// 로그인 서비스
		Member loginMember(Member m);
		
	// 회원추가 서비스
		int insertMember(Member m);

	// 아이디 찾기 서비스
		Member foundId(Member m);
		
	// 비밀번호 찾기 서비스
		Member foundPwd(Member m);
	
	// 회원 수정 서비스
		int updateMember(Member m);
	
	// 회원 탈퇴 서비스
		int deleteMember(String userId);
		
	// 펫 정보 수정 서비스
		int petUpdate(Dog d);
	
	// 아이디중복체크 서비스 (select)
		int idCheck(String checkId);
}
