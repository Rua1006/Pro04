package com.hami.service;

import java.util.List;

import com.hami.dto.BoardDTO;

public interface BoardService {
	public List<BoardDTO> boardList() throws Exception;
	public BoardDTO getBoard(int no) throws Exception;
	public void boardInsert(BoardDTO dto) throws Exception;
	public void boardDelete(int no) throws Exception;
	public void boardEdit(BoardDTO dto) throws Exception;
}
