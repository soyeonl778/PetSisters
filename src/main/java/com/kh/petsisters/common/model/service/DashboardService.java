package com.kh.petsisters.common.model.service;

import java.util.ArrayList;

import com.kh.petsisters.member.model.vo.Member;

public interface DashboardService {
	
	ArrayList<Member> dashMemberView();
	
	int dashMemberDelete(int userNo);

}
