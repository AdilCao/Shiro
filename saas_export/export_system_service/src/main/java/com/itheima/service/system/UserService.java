package com.itheima.service.system;

import com.github.pagehelper.PageInfo;
import com.itheima.domain.system.User;

import java.util.List;

public interface UserService {
    //分页查询
    PageInfo findAll(Integer page, Integer pageSize, String companyId);

    //查询所有的用户数据
    List<User> findAll(String companyId);

    //添加用户信息
    void save(User user);

    //修改用户信息
    void update(User user);

    //根据id查询用户数据
    User findById(String id);

    //根据id删除数据
    void delete(String id);


    //修改用户角色的权限信息
    void updateUserRole(String userid, String roleIds);

    //根据email查询用户数据
    User findByEmail(String email);

}
