package com.thefoodjournal.myapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.thefoodjournal.myapp.controller", "com.thefoodjournal.myapp.dao", "com.thefoodjournal.myapp.pojo","com.thefoodjournal.myapp.service","com.thefoodjournal.myapp.util"})
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}
