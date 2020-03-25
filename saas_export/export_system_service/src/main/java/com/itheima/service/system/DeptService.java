package com.itheima.service.system;

import com.github.pagehelper.PageInfo;
import com.itheima.domain.system.Dept;

import java.util.List;

public interface DeptService {
    //分页查询
    PageInfo findAll(Integer page, Integer pageSize , String companyId);

    //查询所有的部门数据
    List<Dept> findAll(String companyId);

    //添加部门信息
    void save(Dept dept);

    //修改部门信息
    void update(Dept dept);

    //根据id查询部门数据
    Dept findById(String id);

    //根据id删除数据
    void delete(String id);
}
