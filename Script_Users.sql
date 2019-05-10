create schema usersAuth;

create table usersAuth.usr_user(
	usr_code varchar(25) NOT NULL,
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
COMMENT ON COLUMN usersAuth.usr_user.usr_created_by IS 'User that create this record';
COMMENT ON COLUMN usersAuth.usr_user.usr_created_date IS 'Date when this record was created';
COMMENT ON COLUMN usersAuth.usr_user.usr_modified_by IS 'User that modify this record';
COMMENT ON COLUMN usersAuth.usr_user.usr_modified_date IS 'Date when this record was modified';
commit;
