package com.loyalty;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication
@ImportResource("classpath:spring-config.xml")
public class UsersBaseApplication {

	public static void main(String[] args) {
		try {
			System.setProperty("hostname", InetAddress.getLocalHost().getHostName());
			SpringApplication.run(UsersBaseApplication.class, args);
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} 
	}
}
