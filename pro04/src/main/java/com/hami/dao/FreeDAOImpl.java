package com.hami.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.hami.dto.FreeDTO;

@Repository
public class FreeDAOImpl implements FreeDAO{

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<FreeDTO> freeList() throws Exception {
		return sqlSession.selectList("free.freeList");
	}

	@Transactional
	@Override
	public FreeDTO getFree(int bno) throws Exception {
		sqlSession.update("free.visitCount", bno);
		return sqlSession.selectOne("free.getFree", bno);
	}
	
	
	@Override
	public void freeInsert(FreeDTO dto) throws Exception {
		sqlSession.insert("free.freeInsert", dto);
	}

	@Override
	public void freeDelete(int bno) throws Exception {
		sqlSession.delete("free.freeDelete", bno);		
	}

	@Override
	public void freeEdit(FreeDTO dto) throws Exception {
		sqlSession.update("free.freeEdit", dto);
	}
	
	
}
