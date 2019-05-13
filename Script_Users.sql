create schema usersAuth;



create table usersAuth.usr_user(
	usr_code varchar(25) NOT null unique,
	usr_password varchar(64) NOT NULL,
	usr_status varchar(1) NOT NULL,		
	usr_pwd_upd_date date NULL,			
	usr_login_tries	numeric	NULL default 0,	
	usr_reset_pwd bool NULL,			
	usr_last_login_date	date NULL,			
	usr_created_by	varchar(25)	NOT	NULL default USER,
	usr_created_date timestamp	NOT	NULL default NOW(),
	usr_modified_by	varchar(25)	NULL,			
	usr_modified_date timestamp NULL,			
	CONSTRAINT	usr_user_pk	PRIMARY	KEY	(usr_code)	
)WITH (
	OIDS=FALSE
);
COMMENT ON TABLE usersAuth.usr_user IS 'Authentication users table';
COMMENT ON COLUMN usersAuth.usr_user.usr_code IS 'User ID';
COMMENT ON COLUMN usersAuth.usr_user.usr_password IS 'User password';
COMMENT ON COLUMN usersAuth.usr_user.usr_status IS 'User status';
COMMENT ON COLUMN usersAuth.usr_user.usr_pwd_upd_date IS 'Last password update (to check the expire date of password)';
COMMENT ON COLUMN usersAuth.usr_user.usr_login_tries IS 'Number of failed tries login';
COMMENT ON COLUMN usersAuth.usr_user.usr_reset_pwd IS 'Flag to determinate to change password at login';
COMMENT ON COLUMN usersAuth.usr_user.usr_last_login_date IS 'User last login date';
COMMENT ON COLUMN usersAuth.usr_user.usr_created_by IS 'User that created this record';
COMMENT ON COLUMN usersAuth.usr_user.usr_created_date IS 'Date when this record was created';
COMMENT ON COLUMN usersAuth.usr_user.usr_modified_by IS 'User that modified this record';
COMMENT ON COLUMN usersAuth.usr_user.usr_modified_date IS 'Date when this record was modified';
commit;

INSERT INTO usersAuth.usr_user(usr_code,  usr_password, usr_status, usr_pwd_upd_date, usr_login_tries, usr_reset_pwd, usr_last_login_date, usr_created_by, usr_created_date, usr_modified_by, usr_modified_date) VALUES('GGALDAMEZ','e1fee46ce5a883571c0b8d30f067086adc91080179d4b49d6346fc998309b833','A','10-MAY-2019  08:25:40 AM',0,'N','10-MAY-2019  08:35:40 AM','GGALDAMEZ','10-MAY-2019  08:20:40 AM',NULL,NULL);
INSERT INTO usersAuth.usr_user(usr_code,  usr_password, usr_status, usr_pwd_upd_date, usr_login_tries, usr_reset_pwd, usr_last_login_date, usr_created_by, usr_created_date, usr_modified_by, usr_modified_date) VALUES('LPMENDEZ','2a7719def886b3a6c24bb2e280da955805372778c0da395a2f05bf4f18495416','A','10-MAY-2019  08:25:40 AM',0,'N','10-MAY-2019  08:35:40 AM','GGALDAMEZ','10-MAY-2019  08:20:40 AM',NULL,NULL);
INSERT INTO usersAuth.usr_user(usr_code,  usr_password, usr_status, usr_pwd_upd_date, usr_login_tries, usr_reset_pwd, usr_last_login_date, usr_created_by, usr_created_date, usr_modified_by, usr_modified_date) VALUES('NGUARDADO','7376ad5d86b2f9736af990744eb3994a1adeb610e87ab9bc181b33511ea683d8','A','10-MAY-2019  08:25:40 AM',0,'N','10-MAY-2019  08:35:40 AM','GGALDAMEZ','10-MAY-2019  08:20:40 AM',NULL,NULL);
INSERT INTO usersAuth.usr_user(usr_code,  usr_password, usr_status, usr_pwd_upd_date, usr_login_tries, usr_reset_pwd, usr_last_login_date, usr_created_by, usr_created_date, usr_modified_by, usr_modified_date) VALUES('JREGALADO','e39787ce34dcd732b75777b9e97c03ee1adb9140e924e1b07aa168aea7755f8e','A','10-MAY-2019  08:25:40 AM',0,'N','10-MAY-2019  08:35:40 AM','GGALDAMEZ','10-MAY-2019  08:20:40 AM',NULL,NULL);
INSERT INTO usersAuth.usr_user(usr_code,  usr_password, usr_status, usr_pwd_upd_date, usr_login_tries, usr_reset_pwd, usr_last_login_date, usr_created_by, usr_created_date, usr_modified_by, usr_modified_date) VALUES('AANDRADE','ed3a11a1eabef5e2fdbaca0b63b895ea23d33ee64b6ceb1a8412981539e25544','A','10-MAY-2019  08:25:40 AM',0,'N','10-MAY-2019  08:35:40 AM','GGALDAMEZ','10-MAY-2019  08:20:40 AM',NULL,NULL);
INSERT INTO usersAuth.usr_user(usr_code,  usr_password, usr_status, usr_pwd_upd_date, usr_login_tries, usr_reset_pwd, usr_last_login_date, usr_created_by, usr_created_date, usr_modified_by, usr_modified_date) VALUES('CROBLES','3c48367e1570618026c30688226c911d2a0d7b89af24c4a14604abb8f4c31106','A','10-MAY-2019  08:25:40 AM',0,'N','10-MAY-2019  08:35:40 AM','GGALDAMEZ','10-MAY-2019  08:20:40 AM',NULL,NULL);
INSERT INTO usersAuth.usr_user(usr_code,  usr_password, usr_status, usr_pwd_upd_date, usr_login_tries, usr_reset_pwd, usr_last_login_date, usr_created_by, usr_created_date, usr_modified_by, usr_modified_date) VALUES('KPOLIO','e14fe7211f93d5cdb445c4384a12afa65d4f6e3bf6a3cb0e269f46969601cfe6','A','10-MAY-2019  08:25:40 AM',0,'N','10-MAY-2019  08:35:40 AM','GGALDAMEZ','10-MAY-2019  08:20:40 AM',NULL,NULL);
INSERT INTO usersAuth.usr_user(usr_code,  usr_password, usr_status, usr_pwd_upd_date, usr_login_tries, usr_reset_pwd, usr_last_login_date, usr_created_by, usr_created_date, usr_modified_by, usr_modified_date) VALUES('ACRUZ','151fe0a09f4f0ae3700a7c447f6f151ba89187e435d55d4338a58dce8f8d45e3','A','10-MAY-2019  08:25:40 AM',0,'N','10-MAY-2019  08:35:40 AM','GGALDAMEZ','10-MAY-2019  08:20:40 AM',NULL,NULL);
INSERT INTO usersAuth.usr_user(usr_code,  usr_password, usr_status, usr_pwd_upd_date, usr_login_tries, usr_reset_pwd, usr_last_login_date, usr_created_by, usr_created_date, usr_modified_by, usr_modified_date) VALUES('JCORDERO','8684b21a0c7f8f1a3eb2402dc9d94c43472a3426a6272bde708c13a203a57f41','A','10-MAY-2019  08:25:40 AM',0,'N','10-MAY-2019  08:35:40 AM','GGALDAMEZ','10-MAY-2019  08:20:40 AM',NULL,NULL);
INSERT INTO usersAuth.usr_user(usr_code,  usr_password, usr_status, usr_pwd_upd_date, usr_login_tries, usr_reset_pwd, usr_last_login_date, usr_created_by, usr_created_date, usr_modified_by, usr_modified_date) VALUES('JVALENCIA','e4bf0f0ee606108e78b52e24a5b4962351f6d6726b39ad049a835ea35554e854','A','10-MAY-2019  08:25:40 AM',0,'N','10-MAY-2019  08:35:40 AM','GGALDAMEZ','10-MAY-2019  08:20:40 AM',NULL,NULL);
INSERT INTO usersAuth.usr_user(usr_code,  usr_password, usr_status, usr_pwd_upd_date, usr_login_tries, usr_reset_pwd, usr_last_login_date, usr_created_by, usr_created_date, usr_modified_by, usr_modified_date) VALUES('BLOCKED','c5a2fddb6523888dd1300c556d8e0feccc0c8e9294ffea7037a940317c1ad732','A','10-MAY-2019  08:25:40 AM',5,'N','10-MAY-2019  08:35:40 AM','GGALDAMEZ','10-MAY-2019  08:20:40 AM',NULL,NULL);
INSERT INTO usersAuth.usr_user(usr_code,  usr_password, usr_status, usr_pwd_upd_date, usr_login_tries, usr_reset_pwd, usr_last_login_date, usr_created_by, usr_created_date, usr_modified_by, usr_modified_date) VALUES('ONETOGO','acc6a1d9b2f65de9d2af7387c916241d0c1d8b9a53e7b7cc7e40716d3c368623','A','10-MAY-2019  08:25:40 AM',4,'N','10-MAY-2019  08:35:40 AM','GGALDAMEZ','10-MAY-2019  08:20:40 AM',NULL,NULL);
commit;


--**********************************************************************************************************************************************
drop table usersAuth.prd_product cascade;

create table usersAuth.prd_product(
	prd_codusr varchar(25) NOT NULL,
	prd_code varchar(25) NOT null UNIQUE,
	prd_category varchar(1) NOT NULL, --C, cuenta. T, tarjeta. P, préstamo. D, débito
	prd_total_limit numeric NULL,		
	prd_available_debt numeric NULL,			
	prd_interest_rate numeric NULL,	
	prd_interest_amount numeric NULL,			
	prd_monthly_cut	numeric NULL,			
	prd_created_by	varchar(25)	NOT	NULL default USER,
	prd_created_date timestamp	NOT	NULL default NOW(),
	prd_modified_by	varchar(25)	NULL,			
	prd_modified_date timestamp NULL,			
	CONSTRAINT	prd_product_pk	PRIMARY	KEY	(prd_codusr, prd_code),
	CONSTRAINT prd_product_usersAuth_usr_user_fk FOREIGN KEY (prd_codusr) REFERENCES usersAuth.usr_user(usr_code)
)WITH (
	OIDS=FALSE
);
COMMENT ON TABLE usersAuth.prd_product IS 'Product details table';
COMMENT ON COLUMN usersAuth.prd_product.prd_code IS 'Product code';
COMMENT ON COLUMN usersAuth.prd_product.prd_codusr IS 'User ID';
COMMENT ON COLUMN usersAuth.prd_product.prd_category IS 'Product category (C, T, P, D)';
COMMENT ON COLUMN usersAuth.prd_product.prd_total_limit IS 'Credit card limit or total debt amount';
COMMENT ON COLUMN usersAuth.prd_product.prd_available_debt IS 'Credit card available amount or actual debt amount';
COMMENT ON COLUMN usersAuth.prd_product.prd_interest_rate IS 'Product interest rate';
COMMENT ON COLUMN usersAuth.prd_product.prd_interest_amount IS 'Product interest amount';
COMMENT ON COLUMN usersAuth.prd_product.prd_monthly_cut IS 'Credit card monthly cut';
COMMENT ON COLUMN usersAuth.prd_product.prd_created_by IS 'User that create this record';
COMMENT ON COLUMN usersAuth.prd_product.prd_created_date IS 'Date when this record was created';
COMMENT ON COLUMN usersAuth.prd_product.prd_modified_by IS 'User that modified this record';
COMMENT ON COLUMN usersAuth.prd_product.prd_modified_date IS 'Date when this record was modified';
commit;

insert into usersAuth.prd_product(prd_code,prd_codusr,prd_category,prd_total_limit,prd_available_debt,prd_interest_rate,prd_interest_amount,prd_monthly_cut,prd_created_by,prd_created_date,prd_modified_by,prd_modified_date) values('CB001234','GGALDAMEZ','C',NULL,150,NULL,NULL,NULL,'GGALDAMEZ','2019-05-11 18:20:40',NULL,NULL);
insert into usersAuth.prd_product(prd_code,prd_codusr,prd_category,prd_total_limit,prd_available_debt,prd_interest_rate,prd_interest_amount,prd_monthly_cut,prd_created_by,prd_created_date,prd_modified_by,prd_modified_date) values('TC123098','GGALDAMEZ','T',500,200,3.5,45,12,'GGALDAMEZ','2019-05-11 18:20:41',NULL,NULL);
insert into usersAuth.prd_product(prd_code,prd_codusr,prd_category,prd_total_limit,prd_available_debt,prd_interest_rate,prd_interest_amount,prd_monthly_cut,prd_created_by,prd_created_date,prd_modified_by,prd_modified_date) values('TD998800','GGALDAMEZ','D',50,25,0.21,1.25,NULL,'GGALDAMEZ','2019-05-11 18:20:42',NULL,NULL);
insert into usersAuth.prd_product(prd_code,prd_codusr,prd_category,prd_total_limit,prd_available_debt,prd_interest_rate,prd_interest_amount,prd_monthly_cut,prd_created_by,prd_created_date,prd_modified_by,prd_modified_date) values('PR100022','GGALDAMEZ','P',5000,5000,12.54,125.67,NULL,'GGALDAMEZ','2019-05-11 18:20:43',NULL,NULL);
insert into usersAuth.prd_product(prd_code,prd_codusr,prd_category,prd_total_limit,prd_available_debt,prd_interest_rate,prd_interest_amount,prd_monthly_cut,prd_created_by,prd_created_date,prd_modified_by,prd_modified_date) values('TC234500','GGALDAMEZ','T',3000,2000,3.25,34,4,'GGALDAMEZ','2019-05-11 18:20:44',NULL,NULL);
insert into usersAuth.prd_product(prd_code,prd_codusr,prd_category,prd_total_limit,prd_available_debt,prd_interest_rate,prd_interest_amount,prd_monthly_cut,prd_created_by,prd_created_date,prd_modified_by,prd_modified_date) values('TC191933','GGALDAMEZ','T',1500,1300,9.78,4.78,8,'GGALDAMEZ','2019-05-11 18:20:45',NULL,NULL);
insert into usersAuth.prd_product(prd_code,prd_codusr,prd_category,prd_total_limit,prd_available_debt,prd_interest_rate,prd_interest_amount,prd_monthly_cut,prd_created_by,prd_created_date,prd_modified_by,prd_modified_date) values('TC997700','LPMENDEZ','T',1500,1400,3.45,7.89,19,'GGALDAMEZ','2019-05-11 18:20:46',NULL,NULL);
insert into usersAuth.prd_product(prd_code,prd_codusr,prd_category,prd_total_limit,prd_available_debt,prd_interest_rate,prd_interest_amount,prd_monthly_cut,prd_created_by,prd_created_date,prd_modified_by,prd_modified_date) values('TC001122','KPOLIO','T',2500,2000,9.5,34.67,12,'GGALDAMEZ','2019-05-11 18:20:47',NULL,NULL);
insert into usersAuth.prd_product(prd_code,prd_codusr,prd_category,prd_total_limit,prd_available_debt,prd_interest_rate,prd_interest_amount,prd_monthly_cut,prd_created_by,prd_created_date,prd_modified_by,prd_modified_date) values('TD456789','LPMENDEZ','D',900,800,1.1,12,NULL,'GGALDAMEZ','2019-05-11 18:20:48',NULL,NULL);
insert into usersAuth.prd_product(prd_code,prd_codusr,prd_category,prd_total_limit,prd_available_debt,prd_interest_rate,prd_interest_amount,prd_monthly_cut,prd_created_by,prd_created_date,prd_modified_by,prd_modified_date) values('CB000012','GGALDAMEZ','C',NULL,150,NULL,NULL,NULL,'GGALDAMEZ','2019-05-11 18:20:49',NULL,NULL);
insert into usersAuth.prd_product(prd_code,prd_codusr,prd_category,prd_total_limit,prd_available_debt,prd_interest_rate,prd_interest_amount,prd_monthly_cut,prd_created_by,prd_created_date,prd_modified_by,prd_modified_date) values('CB000022','LPMENDEZ','C',NULL,60,NULL,NULL,NULL,'GGALDAMEZ','2019-05-11 18:20:50',NULL,NULL);
insert into usersAuth.prd_product(prd_code,prd_codusr,prd_category,prd_total_limit,prd_available_debt,prd_interest_rate,prd_interest_amount,prd_monthly_cut,prd_created_by,prd_created_date,prd_modified_by,prd_modified_date) values('CB000034','KPOLIO','C',NULL,255,NULL,NULL,NULL,'GGALDAMEZ','2019-05-11 18:20:51',NULL,NULL);
insert into usersAuth.prd_product(prd_code,prd_codusr,prd_category,prd_total_limit,prd_available_debt,prd_interest_rate,prd_interest_amount,prd_monthly_cut,prd_created_by,prd_created_date,prd_modified_by,prd_modified_date) values('CB000123','CROBLES','C',NULL,2800,NULL,NULL,NULL,'GGALDAMEZ','2019-05-11 18:20:52',NULL,NULL);
commit;




--**********************************************************************************************************************************************

create table usersAuth.tra_transaction(
	tra_product_id varchar(25) NOT NULL,
	tra_codusr varchar(25) NOT NULL,
	tra_code varchar(25) NOT null UNIQUE,
	tra_recipient_code varchar(25) NULL,
	tra_description varchar(64) NULL,
	tra_amount numeric NOT NULL,
	tra_created_date timestamp NOT NULL default NOW(),		
	constraint tra_transaction_pk PRIMARY KEY (tra_code, tra_product_id, tra_codusr),
	CONSTRAINT tra_transaction_usersAuth_prd_product_fk FOREIGN KEY (tra_codusr, tra_product_id) REFERENCES usersAuth.prd_product(prd_codusr, prd_code),
	CONSTRAINT tra_transaction_usersAuth_rec_recipient_fk FOREIGN KEY (tra_codusr, tra_recipient_code) REFERENCES usersAuth.rec_recipient(rec_usrcode, rec_code)
)WITH (
	OIDS=FALSE
);
COMMENT ON TABLE usersAuth.tra_transaction IS 'Transactions table';
COMMENT ON COLUMN usersAuth.tra_transaction.tra_code IS 'Transaction code';
COMMENT ON COLUMN usersAuth.tra_transaction.tra_product_id IS 'Product ID';
COMMENT ON COLUMN usersAuth.tra_transaction.tra_codusr IS 'User ID';
COMMENT ON COLUMN usersAuth.tra_transaction.tra_recipient_code IS 'Recipient ID';
COMMENT ON COLUMN usersAuth.tra_transaction.tra_description IS 'Transaction description';
COMMENT ON COLUMN usersAuth.tra_transaction.tra_amount IS 'Transaction amount';
COMMENT ON COLUMN usersAuth.tra_transaction.tra_created_date IS 'Date when this record was created';
commit;




--**********************************************************************************************************************************************

create table usersAuth.rec_recipient(
	rec_usrcode varchar(25) NOT NULL,
	rec_code varchar(25) NOT null UNIQUE,
	rec_name varchar(25) not NULL,
	rec_email varchar(25) not NULL,
	rec_status varchar(1) not null,
	rec_account_type varchar(1) not NULL,
	rec_created_by	varchar(25)	NOT	NULL default USER,
	rec_created_date timestamp NOT NULL default NOW(),		
	rec_modified_by	varchar(25)	NULL,			
	rec_modified_date timestamp NULL,	
	CONSTRAINT	rec_recipient_pk	PRIMARY	KEY	(rec_code, rec_usrcode),
	CONSTRAINT rec_recipient_usersAuth_tra_transaction_fk FOREIGN KEY (rec_usrcode) REFERENCES usersAuth.usr_user(usr_code)
)WITH (
	OIDS=FALSE
);
COMMENT ON TABLE usersAuth.rec_recipient IS 'Recipients table';
COMMENT ON COLUMN usersAuth.rec_recipient.rec_code IS 'Recipient code';
COMMENT ON COLUMN usersAuth.rec_recipient.rec_usrcode IS 'User ID';
COMMENT ON COLUMN usersAuth.rec_recipient.rec_name IS 'Recipient owner description';
COMMENT ON COLUMN usersAuth.rec_recipient.rec_email IS 'Recipient owner email';
COMMENT ON COLUMN usersAuth.rec_recipient.rec_status IS 'Recipient status (A, I)';
COMMENT ON COLUMN usersAuth.rec_recipient.rec_account_type IS 'Recipient account type';
COMMENT ON COLUMN usersAuth.rec_recipient.rec_created_by IS 'User that create this record';
COMMENT ON COLUMN usersAuth.rec_recipient.rec_created_date IS 'Date when this record was created';
COMMENT ON COLUMN usersAuth.rec_recipient.rec_modified_by IS 'User that modified this record';
COMMENT ON COLUMN usersAuth.rec_recipient.rec_modified_date IS 'Date when this record was modified';
commit;


select * from usersAuth.tra_transaction;
