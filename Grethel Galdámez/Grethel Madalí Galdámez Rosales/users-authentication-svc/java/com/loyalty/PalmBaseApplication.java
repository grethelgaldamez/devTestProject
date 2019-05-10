package com.loyalty;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication
@ImportResource("classpath:spring-config.xml")
public class UsersBaseApplication {

	public static void main(String[] args) {
		SpringApplication.run(UsersBaseApplication.class, args);
	}
}
