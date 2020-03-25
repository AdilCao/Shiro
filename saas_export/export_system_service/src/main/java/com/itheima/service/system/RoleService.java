package com.itheima.service.system;

import com.github.pagehelper.PageInfo;
import com.itheima.domain.system.Role;

import java.util.List;

public interface RoleService {
    //分页查询
    PageInfo findAll(Integer page, Integer pageSize, String companyId);

    //查询所有的角色数据
    List<Role> findAll(String companyId);

    //添加角色信息
    void save(Role role);

    //修改角色信息
    void update(Role role);

    //根据id查询角色数据
    Role findById(String id);

    //根据id删除数据
    void delete(String id);

    //修改角色 的权限数据
    void updateRoleModule(String roleid, String moduleIds);

    //根据用户的id查询 角色的信息
    List<Role> findByUid(String id);
}
