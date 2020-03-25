package com.itheima.service.system;

import com.github.pagehelper.PageInfo;
import com.itheima.domain.system.Module;

import java.util.List;

public interface ModuleService {
    //分页查询
    PageInfo findAll(Integer page, Integer pageSize );

    //查询所有的模块数据
    List<Module> findAll( );

    //添加模块信息
    void save(Module module);

    //修改模块信息
    void update(Module module);

    //根据id查询模块数据
    Module findById(String id);

    //根据id删除数据
    void delete(String id);

    //根据角色id查询 模块信息
    List<Module> findByRoleId(String roleid);

    //根据用户的id 查询 模块信息
    List<Module> findByUid(String uid);
}
