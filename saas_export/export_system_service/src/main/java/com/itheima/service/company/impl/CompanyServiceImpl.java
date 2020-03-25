package com.itheima.service.company.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.itheima.dao.company.CompanyDao;
import com.itheima.domain.company.Company;
import com.itheima.service.company.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service

public class CompanyServiceImpl implements CompanyService {
    @Autowired
    private CompanyDao companyDao;
    @Override
    public List<Company> findAll() {
        List<Company> companyList = companyDao.findAll();
/*        for (Company company : companyList) {
            System.out.println(company);
        }*/
        return companyList;
    }

    /**
     * 企业申请
     * @param company
     */
    @Override
    public void save(Company company) {
        company.setId(UUID.randomUUID().toString());
        companyDao.save(company);
    }

    /**
     * 根据id查询企业数据
     * @param id
     * @return
     */
    @Override
    public Company findById(String id) {
        return companyDao.findById(id);
    }

    /**
     * 修改企业数据
     * @param company
     */
    @Override
    public void update(Company company) {
        companyDao.update(company);
    }

    /**
     * 根据id删除数据
     * @param id
     */
    @Override
    public void delete(String id) {
        companyDao.delete(id);
    }

    /**
     * mybatis分页
     * @param page
     * @param pageSize
     * @return
     */
    @Override
    public PageInfo findByPage(Integer page, Integer pageSize) {

        //1.分页
        PageHelper.startPage(page,pageSize);

        //2.查询所有-> mybatis会在查询所有的基础上进行分页
        List<Company> list = companyDao.findAll();

        //构建PageInfo返回  PageInfo 里面提供分页中需要的所有属性
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }



    /**
     * 传统分页代码
     * private long total;//总记录数
     * private List rows;//当前页记录
     * @param page
     * @param pageSize
     * @return
     */
  /*  @Override
    public PageResult findByPage(Integer page, Integer pageSize) {
        //4.查询
        //分页数据
        List rows = companyDao.findByPage( (page-1)*pageSize , pageSize  );
        //总记录数
        long total = companyDao.findCount();

        //3.赋值数据
        //1.创建返回值对象
        //PageResult pr = new PageResult(long total, List rows, int page, int size);
        //2.返回
        return new PageResult( total,  rows,  page,  pageSize);
    }
*/
   /* public static void main(String[] args) {
        System.out.println(UUID.randomUUID().toString().length());
    }*/
}
