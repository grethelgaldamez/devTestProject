package com.loyalty.pojo.svc;

import java.util.Date;

public class User {
	private String userName; //codigo
	private String password;
	private String confPwd; 
	private String createdDate;
	private String createdOrModifyBy; 
	private Date lastLoginDate;
	private boolean resetPwd; 
	private int tries; 
	private Date expirePwd;
	private char userStatus;

	public User() {
		super();
	}

	
	
	public char getUserStatus() {
		return userStatus;
	}



	public void setUserStatus(char usrStatus) {
		this.userStatus = usrStatus;
	}



	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfPwd() {
		return confPwd;
	}

	public void setConfPwd(String confPwd) {
		this.confPwd = confPwd;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public String getCreatedOrModifyBy() {
		return createdOrModifyBy;
	}

	public void setCreatedOrModifyBy(String createdOrModifyBy) {
		this.createdOrModifyBy = createdOrModifyBy;
	}

	public Date getLastLoginDate() {
		return lastLoginDate;
	}

	public void setLastLoginDate(Date lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}

	public boolean isResetPwd() {
		return resetPwd;
	}

	public void setResetPwd(boolean resetPwd) {
		this.resetPwd = resetPwd;
	}

	public int getTries() {
		return tries;
	}

	public void setTries(int tries) {
		this.tries = tries;
	}

	public Date getExpirePwd() {
		return expirePwd;
	}

	public void setExpirePwd(Date expirePwd) {
		this.expirePwd = expirePwd;
	}
	
	
}
