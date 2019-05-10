package com.loyalty.controller;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.loyalty.pojo.envelope.Envelope;
import com.loyalty.pojo.envelope.Status;
import com.loyalty.pojo.svc.UserSvc;
import com.loyalty.process.IUserProcess;

@RestController
public class LoginController {
	private IUserProcess process;
	
	public LoginController(@Qualifier("BeanProcessUser") IUserProcess process){
		this.process = process;
	}

	@PostMapping("${config.endpoints.user.validate}")
	public Envelope<Status, UserSvc> validateUser(@RequestBody UserSvc user){
		return process.validate(user.getUsername(), user.getPassword());
	}

}
