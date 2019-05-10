package com.loyalty.data;

import com.loyalty.pojo.svc.User;

public interface IUserData<T> {
	public boolean verifyLastPassword(String user, String password);	
	public boolean exists(String user);
	public boolean addTries(String user);
	public T retrieveUserByPwd(String user, String pwd);
	boolean update(User input);
}
