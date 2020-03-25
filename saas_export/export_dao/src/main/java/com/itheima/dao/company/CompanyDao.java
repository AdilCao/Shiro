package com.itheima.dao.company;

import com.itheima.domain.company.Company;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CompanyDao {
    //查询所有
    public List<Company> findAll();

    //分页
    public List<Company> findByPage(@Param("startIndex") int startIndex  ,@Param("pageSize") int  pageSize);

    //企业添加
    void save(Company company);

    //根据id查询企业
    Company findById(String id);

    //修改企业数据
    void update(Company company);

    //删除企业数据
    void delete(String id);

    //查询总记录数
    long findCount();


}
