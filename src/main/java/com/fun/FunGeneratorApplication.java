package com.fun;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * @author U-Fun
 */
@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
@MapperScan("com.fun.project.mapper")
public class FunGeneratorApplication {
    public static void main(String[] args) {
        SpringApplication.run(FunGeneratorApplication.class,args);
    }
}
