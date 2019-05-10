package com.loyalty.controller;


import org.junit.Before;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.core.env.Environment;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.loyalty.process.UserProcess;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment=WebEnvironment.RANDOM_PORT)
@ActiveProfiles("testing")

public class UserTest extends Mockito{
	static {
		com.loyalty.Initialize.initializeVariables();
    }
	@Autowired
	private LoginController controller;
	
	@Autowired
	private Environment env;
	
	@Autowired
	private UserProcess process;
	
	private ObjectMapper mapper;
	
	@Before
	public void setUp(){
		mapper = new ObjectMapper();
	}

}
