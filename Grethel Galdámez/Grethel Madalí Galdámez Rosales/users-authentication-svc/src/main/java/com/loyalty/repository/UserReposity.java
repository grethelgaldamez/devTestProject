package com.loyalty.repository;

import org.springframework.data.repository.CrudRepository;

import com.loyalty.entity.UsrUser;

public interface UserReposity extends CrudRepository<UsrUser, String>{
	public UsrUser findByUsrCodeAndUsrPassword(String usrCode, String usrPassword);
}

/*
 * ESTO ESTA DE EJEMPLO porque al final ya no lo usé :)
 * 
 * @Query("update LppUsrUser usr set usr.usrPassword = :password where usr.usrCode = :user")
@Modifying
@Transactional
public int updateField(@Param("user") String user, 
		@Param("password") String password);
		
		*/