package com.hami.service;

import java.util.List;

import com.hami.dto.FreeDTO;

public interface FreeService {
	public List<FreeDTO> freeList() throws Exception;
	public FreeDTO getFree(int bno) throws Exception;
	public void freeInsert(FreeDTO dto) throws Exception;
	public void freeDelete(int bno) throws Exception;
	public void freeEdit(FreeDTO dto) throws Exception;
}
