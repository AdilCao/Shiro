package com.itheima.dao.system;

import com.itheima.domain.system.Dept;

import java.util.List;

public interface DeptDao {
    /*查询所有*/
    List<Dept> findAll(String companyId);
    /*根据id查询一个部门*/
    Dept findById(String id);

    /*部门保存*/
    void save(Dept dept);

    /*部门修改*/
    void update(Dept dept);

    /*删除*/
    void delete(String id);
}
