package com.hami.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hami.dao.FreeDAO;
import com.hami.dto.FreeDTO;

@Service
public class FreeServiceImpl implements FreeService {

	@Autowired
	FreeDAO freeDAO;

	@Override
	public List<FreeDTO> freeList() throws Exception {
		return freeDAO.freeList();
	}

	@Override
	public FreeDTO getFree(int bno) throws Exception {
		return freeDAO.getFree(bno);
	}

	@Override
	public void freeInsert(FreeDTO dto) throws Exception {
		freeDAO.freeInsert(dto);
	}

	@Override
	public void freeDelete(int bno) throws Exception {
		freeDAO.freeDelete(bno);
	}

	@Override
	public void freeEdit(FreeDTO dto) throws Exception {
		freeDAO.freeEdit(dto);
	}
}
