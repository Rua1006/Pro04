package com.hami.myapp;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hami.myapp.mapper.TimeMapper;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/**/root-context.xml")
public class MybatisTest {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private TimeMapper timeMapper;
	
	
	@Test
	public void mybatisTest() {
		//logger.info(timeMapper.getClass().getName());
		//logger.info(timeMapper.getTime1());
		System.out.println(timeMapper.getClass().getName());
		
		//fail("Not yet implemented");
	}

}
