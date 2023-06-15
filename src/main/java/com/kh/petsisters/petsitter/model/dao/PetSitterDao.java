package com.kh.petsisters.petsitter.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.member.model.vo.Dog;
import com.kh.petsisters.petsitter.model.vo.PetSitter;
import com.kh.petsisters.petsitter.model.vo.PetSitterImg;
import com.kh.petsisters.petsitter.model.vo.PetSitterLike;
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
		
//		(ArrayList)sqlSession.selectList("petSitterMapper.selectList", null, rowBounds);
//		sqlSession.selectList("petSitterMapper.selectThumbnailList", null, rowBounds);
		
		return null;
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
	
	public int insertPetSitterImg(SqlSessionTemplate sqlSession, ArrayList<PetSitterImg> newList) {
		
		int result = 1;
		
		for(PetSitterImg psImg : newList) {
			result *= sqlSession.insert("petSitterMapper.insertPetSitterImg", psImg);
		}
		
		return result;
	}
	
	public ArrayList<PetSitterImg> selectPetSitterImg(SqlSessionTemplate sqlSession, int pno) {
		
		return (ArrayList)sqlSession.selectList("petSitterMapper.selectPetSitterImg", pno);
	}
	
	public int deletePetSitterImg(SqlSessionTemplate sqlSession, ArrayList<Integer> deleteList) {
		
		int result = 0;
		
		for(Integer fileNo : deleteList) {
			result *= sqlSession.update("petSitterMapper.deletePetSitterImg", fileNo);
		}
		
		return result;
	}
	
	public int selectLikeCheck(SqlSessionTemplate sqlSession, PetSitterLike psLike) {
		
		return sqlSession.selectOne("petSitterMapper.selectLikeCheck", psLike);
	}
	
	public int insertLike(SqlSessionTemplate sqlSession, PetSitterLike psLike) {

		return sqlSession.insert("petSitterMapper.insertLike", psLike);
	}
	
	public int deleteLike(SqlSessionTemplate sqlSession, PetSitterLike psLike) {
		
		return sqlSession.delete("petSitterMapper.deleteLike", psLike);
	}
	
	public int selectLikeCount(SqlSessionTemplate sqlSession, int refPno) {
		
		return sqlSession.selectOne("petSitterMapper.selectLikeCount", refPno);
	}
	
//	public ArrayList<PetSitterImg> selectThumbnailList(SqlSessionTemplate sqlSession) {
//		
//		return sqlSession.selectList("petSitterMapper.selectThumbnailList", null, rowBounds);
//	}
}




