package com.kh.petsisters.petsitter.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.member.model.vo.Dog;
import com.kh.petsisters.petsitter.model.vo.PetSitter;
import com.kh.petsisters.petsitter.model.vo.PetSitterImg;
import com.kh.petsisters.reservation.model.vo.Review;

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
	
	public ArrayList<Review> selectReviewList(SqlSessionTemplate sqlSession, int pno) {

		return (ArrayList)sqlSession.selectList("petSitterMapper.selectReviewList", pno);
	}
	
	public ArrayList<Dog> selectDogList(SqlSessionTemplate sqlSession, int pno) {
		
		return (ArrayList)sqlSession.selectList("petSitterMapper.selectDogList", pno);
	}
	
	public int updateComment(SqlSessionTemplate sqlSession, Review r) {
		
		return sqlSession.update("petSitterMapper.updateComment", r);
	}
	
	public int deleteComment(SqlSessionTemplate sqlSession, Review r) {
		
		return sqlSession.delete("petSitterMapper.deleteComment", r);
	}
	
	public int insertPetSitterImg(SqlSessionTemplate sqlSession, PetSitterImg psImg) {
		
		return sqlSession.insert("petSitterMapper.insertPetSitterImg", psImg);
	}
	
	public ArrayList<PetSitterImg> selectPetSitterImg(SqlSessionTemplate sqlSession, int pno) {
		
		return (ArrayList)sqlSession.selectList("petSitterMapper.selectPetSitterImg", pno);
	}
}




