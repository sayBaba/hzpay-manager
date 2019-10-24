package com.hzpay.manager;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.hzpay.manager.mapper")
@SpringBootApplication
public class HzpayManagerApplication {

    public static void main(String[] args) {
        SpringApplication.run(HzpayManagerApplication.class, args);
    }

}
