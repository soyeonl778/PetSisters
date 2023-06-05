package com.kh.petsisters.petsitter.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.petsitter.model.vo.PetSitter;

@Repository
public class PetSitterDao {

	public PetSitter selectPetSitter(SqlSessionTemplate sqlSession, int pno) {
		
		return sqlSession.selectOne("petSitterMapper.selectPetSitter", pno);
	}
	
	public int updatePetSitter(SqlSessionTemplate sqlSession, PetSitter p) {
		
		return sqlSession.update("petSitterMapper.updatePetSitter", p);
	}
	
	public int selectListCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("petSitterMapper.selectListCount");
	}
	
	public ArrayList<PetSitter> selectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); // offset : 건너 뛸 숫자
		int limit = pi.getBoardLimit(); // limit : 조회할 갯수
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("petSitterMapper.selectList", null, rowBounds);
	}
}




