package com.itheima.test;

import com.itheima.service.company.CompanyService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestSpringService {
    /**
     *    classpath* : 同时加载其他包下的内容
     *    applicationContext-*.xml 通配符 表示以applicationContext开头即可
     * @param args
     */
    public static void main(String[] args) {
        ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("classpath*:spring/applicationContext-*.xml");
        CompanyService service = ac.getBean(CompanyService.class);
        service.findAll();
    }
}
