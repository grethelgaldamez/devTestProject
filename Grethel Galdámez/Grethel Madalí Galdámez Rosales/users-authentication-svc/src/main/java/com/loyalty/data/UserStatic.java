package com.loyalty.data;

import java.util.ArrayList;
import java.util.List;

import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.loyalty.pojo.svc.User;



@Service("UserStatic")
public class UserStatic implements IUserData<User>{
	private List<User> users;	
	
	public UserStatic(Environment env){		
		users = new ArrayList<>();

		//inserts de users
		
		/*User user = new User();
		user.setUserName("LIPEREZ");
		user.setPassword("1233");
		user.setUserState('A');
		user.setTries(0);
		
		Calendar pwdUpd = Calendar.getInstance();
		pwdUpd.setTime(new Date());
		pwdUpd.add(Calendar.DAY_OF_YEAR, -150);
	
		user.setExpirePwd(pwdUpd.getTime());
		users.add(user);*/
	
		
	}
	
	@Override
	public boolean verifyLastPassword(String user, String password) {
		if("User12345".equals(password))
			return true;
		else
			return false;
	}

	@Override
	public boolean exists(String user) {
		return users.stream().filter(x->x.getUserName().equals(user)).findFirst().isPresent();
	}

	@Override
	public boolean update(User user) {
		return true;
	}

	@Override
	public User retrieveUserByPwd(String user, String pwd) {
		return users.stream().filter(x -> x.getUserName().equals(user) && x.getPassword().equals(pwd)).findFirst().orElse(null);
	}

	@Override
	public boolean addTries(String user) {
		return true;
	}
	
}
