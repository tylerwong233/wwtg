package com.mr.qdp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableCaching
@ComponentScan(basePackages = "com.mr.qdp")
@EnableAutoConfiguration
public class QdpAdminApplication {
	public static void main(String[] args) throws Exception {
		SpringApplication.run(QdpAdminApplication.class, args);
	}

}