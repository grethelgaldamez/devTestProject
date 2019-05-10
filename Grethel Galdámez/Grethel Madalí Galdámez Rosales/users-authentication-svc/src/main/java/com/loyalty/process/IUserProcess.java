package com.loyalty.process;

import com.loyalty.pojo.envelope.Envelope;
import com.loyalty.pojo.envelope.Status;
import com.loyalty.pojo.svc.UserSvc;

public interface IUserProcess {
	public Envelope<Status, UserSvc> validate(String userCode, String pwd);
}
