package com.itheima.test;

import com.itheima.dao.company.CompanyDao;
import com.itheima.domain.company.Company;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * 1.mybatis能够独立运行
 * 2.mybatis与spring整合
 * 3.加入springmvc
 */
public class TestMyBatis {
  /*  public static void main(String[] args) throws IOException {
        InputStream is = Resources.getResourceAsStream("SqlSessionConfiguraction.xml");
        SqlSessionFactory sqlSessionFactory =  new SqlSessionFactoryBuilder().build(is);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        CompanyDao dao = sqlSession.getMapper(CompanyDao.class);
        List<Company> companyList = dao.findAll();

        for (Company company : companyList) {
            System.out.println(company);
        }

    }*/
  public static void main(String[] args) {
      ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("classpath:spring/applicationContext-dao.xml");
      CompanyDao companyDao = ac.getBean(CompanyDao.class);
      List<Company> companyList = companyDao.findAll();
      for (Company company : companyList) {
          System.out.println(company);
      }
  }
}
