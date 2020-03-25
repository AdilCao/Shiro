package com.itheima.dao.system;


import com.itheima.domain.system.Module;

import java.util.List;

/**
 */
public interface ModuleDao {

    //根据id查询
    Module findById(String moduleId);

    //根据id删除
    int delete(String moduleId);

    //添加用户
    int save(Module module);

    //更新用户
    int update(Module module);

    //查询全部
    List<Module> findAll();

    //根据角色的id查询模块的信息
    List<Module> findByRoleId(String roleid);

    //根据belong查询角色的数据
    List<Module>    findByBelong(String belong);

    //普通用户根据RBAC权限模型 赋值权限数据
    List<Module> findByUid(String uid);
}