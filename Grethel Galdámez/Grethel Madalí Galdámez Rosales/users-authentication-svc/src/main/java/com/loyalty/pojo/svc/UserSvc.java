package com.loyalty.pojo.svc;

import java.util.List;

public class UserSvc {
	private String username;
	private String password;
	private List<String> roles;

	private Detail details;
	
	public UserSvc() {
		super();
	}

	public UserSvc(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	
	
	public Detail getDetails() {
		return details;
	}

	public void setDetails(Detail details) {
		this.details = details;
	}

	public List<String> getRoles() {
		return roles;
	}

	public void setRoles(List<String> roles) {
		this.roles = roles;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


}
