package com.loyalty.data;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.loyalty.entity.UsrUser;
import com.loyalty.pojo.svc.User;
import com.loyalty.repository.UserReposity;

@Service("UserDataBase")
public class UserDataBase implements IUserData<User>{
	private UserReposity repo;
	private Logger log;
	private Environment env;
	
	
	public UserDataBase(
			UserReposity repo,
			Environment env){
		this.repo = repo;
		this.env = env;
		this.log =  LoggerFactory.getLogger("com.loyalty.logger");
	}

	@Override
	public boolean verifyLastPassword(String user, String password) {
		UsrUser usr = repo.findById(user).get();
		if(usr != null){
			if(usr.getUsrPassword().equals(password))
				return true;
		}
		else{
			log.error("Error: Not found user {} in database", user);
		}
		return false;
	}

	@Override
	public boolean exists(String user) {
		return repo.existsById(user);
	}

	@Override
	public User retrieveUserByPwd(String userCode, String pwd) {
		UsrUser userRepo = repo.findByUsrCodeAndUsrPassword(userCode, pwd);
		User user = null;
		
		if(userRepo!=null){
			user = new User();
			user.setUserName(userRepo.getUsrCode());
			user.setPassword(userRepo.getUsrPassword());
			user.setResetPwd(userRepo.getUsrResetPwd());
			user.setTries(Integer.parseInt(userRepo.getUsrLoginTries().toString()));
			user.setExpirePwd(userRepo.getUsrPwdUpdDate());
			
			if(userRepo.getUsrStatus()!=null){
				user.setUserStatus(userRepo.getUsrStatus().charAt(0));
			}
		}
		return user;
	}

	@Override
	public boolean addTries(String userCode) {
		try{
			UsrUser user = repo.findById(userCode).get();
			BigDecimal cont = user.getUsrLoginTries();
			cont = cont.add(new BigDecimal(1));
			user.setUsrLoginTries(cont);
			repo.save(user);
			return true;
		}
		catch(Exception ex){
			log.error("Error in update user in database: {}",ex.getMessage(), ex);
		}
		return false;
	}

	@Override
	public boolean update(User input) {
		try{
			UsrUser user = repo.findById(input.getUserName()).get();
			
			user.setUsrStatus(String.valueOf(input.getUserStatus()));
			user.setUsrModifiedDate(new Date());
			user.setUsrModifiedBy(input.getCreatedOrModifyBy());
			user.setUsrLoginTries(new BigDecimal(input.getTries()));
			user.setUsrLastLoginDate(input.getLastLoginDate());
			repo.save(user);
			return true;
		}
		catch(Exception ex){
			log.error("Error in update user in database: {}",ex.getMessage(), ex);
		}
		return false;
	}
	
}
