package com.kh.petsisters.common.model.service;

import java.util.ArrayList;

import com.kh.petsisters.member.model.vo.Member;
import com.kh.petsisters.member.model.vo.Support;
import com.kh.petsisters.petsitter.model.vo.PetSitter;

public interface DashboardService {
	
	ArrayList<Member> dashMemberView();
	
	int dashMemberDelete(Member m);

	ArrayList<PetSitter> dashPetsiterView();
	
	int dashPetsiterDelete(PetSitter p);
	
	ArrayList<Support> dashSupportView();
	
	int dashSupportApprove(Support s);
	
}
