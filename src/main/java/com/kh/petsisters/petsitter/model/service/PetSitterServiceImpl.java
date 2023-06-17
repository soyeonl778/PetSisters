package com.kh.petsisters.petsitter.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.member.model.vo.Dog;
import com.kh.petsisters.petsitter.model.dao.PetSitterDao;
import com.kh.petsisters.petsitter.model.vo.PetSitter;
import com.kh.petsisters.petsitter.model.vo.PetSitterImg;
import com.kh.petsisters.petsitter.model.vo.PetSitterLike;
import com.kh.petsisters.reservation.model.vo.Review;

@Service
public class PetSitterServiceImpl implements  PetSitterService {

	@Autowired
	private PetSitterDao petSitterDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public PetSitter selectPetSitter(int pno) {
		
		return petSitterDao.selectPetSitter(sqlSession, pno);
	}

	@Override
	public int updatePetSitter(PetSitter p) {
		
		return petSitterDao.updatePetSitter(sqlSession, p);
	}
	
	@Override
	public int selectListCount() {
		
		return petSitterDao.selectListCount(sqlSession);
	}
	
	@Override
	public ArrayList<PetSitter> selectList(PageInfo pi, PetSitter p) {
		
		return petSitterDao.selectList(sqlSession, pi, p);
	}

	@Override
	public ArrayList<Review> selectReviewList(int pno) {
		
		return petSitterDao.selectReviewList(sqlSession, pno);
	}

	@Override
	public ArrayList<Dog> selectDogList(int pno) {
		
		return petSitterDao.selectDogList(sqlSession, pno);
	}

	@Override
	public int updateComment(Review r) {
		
		return petSitterDao.updateComment(sqlSession, r);
	}

	@Override
	public int deleteComment(Review r) {

		return petSitterDao.deleteComment(sqlSession, r);
	}
	
	@Override
	public int insertPetSitterImg(ArrayList<PetSitterImg> newList) {
		
		return petSitterDao.insertPetSitterImg(sqlSession, newList);
	}
	
	@Override
	public ArrayList<PetSitterImg> selectPetSitterImg(int pno) {
		
		return petSitterDao.selectPetSitterImg(sqlSession, pno);
	}

	@Override
	public int deletePetSitterImg(ArrayList<Integer> deleteList) {
		
		return petSitterDao.deletePetSitterImg(sqlSession, deleteList);
	}

	@Override
	public int selectLikeCheck(PetSitterLike psLike) {
		
		return petSitterDao.selectLikeCheck(sqlSession, psLike);
	}

	@Override
	public int insertLike(PetSitterLike psLike) {
		
		return petSitterDao.insertLike(sqlSession, psLike);
	}

	@Override
	public int deleteLike(PetSitterLike psLike) {
		
		return petSitterDao.deleteLike(sqlSession, psLike);
	}

	@Override
	public int selectLikeCount(int refPno) {
		
		return petSitterDao.selectLikeCount(sqlSession, refPno);
	}


}
