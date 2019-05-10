package com.loyalty.pojo.svc;

public class Detail {

	private String partner;
	private String usertype;
	private boolean resetPwd;
	private boolean reminderPwd; // recordar que ya casi se expira..
	private boolean locked;
	private boolean disabled;
	private boolean wrongPwd;
	private int expires;
	private String name;
	
	public String getPartner() {
		return partner;
	}

	public void setPartner(String partner) {
		this.partner = partner;
	}

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public boolean isResetPwd() {
		return resetPwd;
	}

	public void setResetPwd(boolean resetPwd) {
		this.resetPwd = resetPwd;
	}

	public boolean isReminderPwd() {
		return reminderPwd;
	}

	public void setReminderPwd(boolean reminderPwd) {
		this.reminderPwd = reminderPwd;
	}

	public boolean isLocked() {
		return locked;
	}

	public void setLocked(boolean locked) {
		this.locked = locked;
	}

	public boolean isDisabled() {
		return disabled;
	}

	public void setDisabled(boolean disabled) {
		this.disabled = disabled;
	}

	public boolean isWrongPwd() {
		return wrongPwd;
	}

	public void setWrongPwd(boolean wrongPwd) {
		this.wrongPwd = wrongPwd;
	}

	public int getExpires() {
		return expires;
	}

	public void setExpires(int expires) {
		this.expires = expires;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
