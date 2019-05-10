package com.loyalty.utils;

public class ResponseMsg {
	public static final String SUCCESS="Success";
	public static final String INPUT_MISSING="An input parameter is missing {0}";
	public static final String NOT_FOUND="Not Found";
	public static final String NO_DATA="Error to call data layer";
	public static final String CON_MINLENGTH="Password must to contain {0} characters minimum";
	public static final String CON_REQ="Password must to contain at least one uppercase, one lowercase and a number";
	public static final String CON_EQUAL="The new password can not be the same as the last password";
	public static final String CON_WRONG="The current password is wrong";
	public static final String CON_NOT_EQUAL="The password must to match with its confirmation";
	public static final String USR_EXISTS="The user exists alredy";
	public static final String USR_NOT_EXISTS="The user does not exists";
	public static final String PARTIAL_SAVE="Partial Save. Created successful, but {0} did not";
	public static final String APPROVERS_EXISTS = "Approvers already exists for this area";
	public static final String ENCRIPT_ERROR = "Error to try to encrypt String";
}
