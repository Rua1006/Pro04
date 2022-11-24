package com.hami.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hami.dto.MemberDTO;
import com.hami.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	
	@Autowired
	MemberService memberService;
	
	//member/list.do -> MemberService -> MemberDAO -> MyBatis(memberMapper) -> DB
	//localhost:8093/member/list.do
	@RequestMapping(value="list.do", method = RequestMethod.GET)
	public String memberList(Model model) throws Exception{
		List<MemberDTO> memberList = memberService.memberList();
		model.addAttribute("memberList", memberList);
		return "member/memberList";
	}
	//localhost:8093/member/getMember.do
	@RequestMapping(value="getMember.do", method = RequestMethod.GET)
	public String getMember(HttpServletRequest request, Model model)throws Exception{
		String id = request.getParameter("id");
		MemberDTO dto = memberService.getMember(id);
		model.addAttribute("dto", dto);
		return "member/memberDetail";
	}
	
	/*
	 * @PostMapping(value="addMember.do") public String addMember(HttpServletRequest
	 * request, Model model)throws Exception{ String id =
	 * request.getParameter("id"); String pw = request.getParameter("pw"); String
	 * name = request.getParameter("name"); String email =
	 * request.getParameter("email"); String tel = request.getParameter("tel");
	 * 
	 * }
	 */
}
