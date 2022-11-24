package com.hami.myapp;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.hami.dto.SampleDTO;

public class LombokTest {
	private static final Logger Logger = LoggerFactory.getLogger(LombokTest.class); 
	
	@Test
	public void testLombok() {
		SampleDTO dto = new SampleDTO();
		dto.setName("강병수");
		dto.setAge(30);
		dto.setIq(100);
		
		Logger.info(dto.toString());
	}

}
