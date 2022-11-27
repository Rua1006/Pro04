package com.hami.myapp;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.hami.dto.MemberDTO;

public class DTOtest {
	private static final Logger Logger = LoggerFactory.getLogger(LombokTest.class);
	
	@Test
	public void testDTO() {
		MemberDTO dto = new MemberDTO();
		dto.setId("KBS");
		dto.setPw("1234");
		dto.setName("강병수");
		dto.setEmail("kbs@naver.com");
		dto.setPt(10);
		dto.setTel("010-0000-0000");
		dto.setRegdate("2022-11-23");
		
		Logger.info(dto.toString());
		
	}

}
