package com.hami.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hami.dao.MemberDAO;
import com.hami.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO memberDAO; 
	
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDAO.memberList();
	}

	@Override
	public MemberDTO getMember(String id) throws Exception {
		return memberDAO.getMember(id);
	}

	@Override
	public void memberInsert(MemberDTO dto) throws Exception {
		memberDAO.memberInsert(dto);
		
	}
	

}
