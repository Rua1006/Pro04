package com.hami.dao;

import java.util.List;

import com.hami.dto.BoardDTO;

public interface BoardDAO {
	public List<BoardDTO> boardList() throws Exception;
	public BoardDTO getBoard(int no) throws Exception;
	public void boardInsert(BoardDTO dto) throws Exception;
	public void boardDelete(int no) throws Exception;
	public void boardEdit(BoardDTO dto) throws Exception;
}
