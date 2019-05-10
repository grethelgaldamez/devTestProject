package com.loyalty;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class Initialize {


	public static void initializeVariables(){
		try {
			System.setProperty("hostname", InetAddress.getLocalHost().getHostName());
		} catch (UnknownHostException e) {


		}
	}
	
}