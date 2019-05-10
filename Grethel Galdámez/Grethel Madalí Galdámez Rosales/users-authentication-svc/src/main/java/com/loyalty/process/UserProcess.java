package com.loyalty.process;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.loyalty.data.IUserData;
import com.loyalty.pojo.envelope.Envelope;
import com.loyalty.pojo.envelope.Message;
import com.loyalty.pojo.envelope.Status;
import com.loyalty.pojo.svc.Detail;
import com.loyalty.pojo.svc.User;
import com.loyalty.pojo.svc.UserSvc;
import com.loyalty.utils.ResponseCode;
import com.loyalty.utils.ResponseMsg;
import com.loyalty.utils.SHAHashing;

@Service("UserProcess")
public class UserProcess implements IUserProcess{
	private IUserData<User> data;
	private Environment env;
	private Logger log;

    @Value("${config.settings.minlength-pass}")
	String minlength = "8";
    
    
	public UserProcess(
			@Qualifier("BeanDataUser") IUserData<User> data,
			Environment env,
			SHAHashing sha2
			){
		this.data = data;
		this.env = env;
		
	}
	
	@Override
	public Envelope<Status, UserSvc> validate(String userCod, String pwd) {
		Status s = new Status();
		UserSvc object = new UserSvc();
		Detail details = new Detail();
		
		try{
			String userCode = userCod.toUpperCase();
			//primero ver si el usuario es correcto, porque si la contraseña esta mala, aumentar contador
			if(!data.exists(userCode)){
				s.setCode(ResponseCode.USR_NOT_EXISTS);
				s.setResult(ResponseMsg.USR_NOT_EXISTS);
			}
			else{
				User user = data.retrieveUserByPwd(userCode, pwd);
				if(user != null) {
					object = new UserSvc();
					object.setUsername(userCode);

					details.setResetPwd(user.isResetPwd());
					object.setDetails(details);
					//inactivo
					if('I' == user.getUserStatus()){
						details.setDisabled(true);
					}else{
					
						//bloqueo
						if(user.getTries() >= Integer.parseInt(env.getProperty("config.settings.max-try-pwd"))){
							details.setLocked(true);
						}else {
							user.setTries(0);
							data.update(user);
						}
					}
					
					s.setCode(ResponseCode.SUCCESS);
					s.setResult(ResponseMsg.SUCCESS);
				} else {
					details.setWrongPwd(true);
					object.setDetails(details);
					data.addTries(userCode);
					s.setCode(ResponseCode.SUCCESS);
					s.setResult(ResponseMsg.SUCCESS);
					log.error("Wrong password or error in data layer");
				}
			}
		} catch (Exception e) {
			s.setCode(ResponseCode.INPUT_MISSING);
			s.setResult(ResponseMsg.INPUT_MISSING);
			log.error("Error validate :"+e.getMessage(), e);
		}
		return new Message<>(s, object);
		
	}

}
