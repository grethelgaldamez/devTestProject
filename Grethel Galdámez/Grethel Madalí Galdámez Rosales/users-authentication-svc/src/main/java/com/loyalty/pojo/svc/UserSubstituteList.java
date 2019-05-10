package com.loyalty.pojo.svc;

public class UserSubstituteList {
	private String userCode;
	private String userName;
	private String userLastName;
	
	public UserSubstituteList() {
		super();
	}
	public UserSubstituteList(String userCode, String userName, String userLastName) {
		super();
		this.userCode = userCode;
		this.userName = userName;
		this.userLastName = userLastName;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserLastName() {
		return userLastName;
	}
	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}
	
}
