package com.itheima.dao.system;


import com.itheima.domain.system.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface RoleDao {

    //根据id查询
    Role findById(String id);

    //查询全部用户
    List<Role> findAll(String companyId);

	//根据id删除
    int delete(String id);

	//添加
    int save(Role role);

	//更新
    int update(Role role);

    //根据角色id将数据库原本的数据删除
    void deleteRoleModuleByRoleId(String roleid);

    //给角色添加新的权限即可
    void insertRoleModule(@Param("roleid") String roleid, @Param("moduleId") String moduleId);

    //根据用户的id查询 角色的信息
    List<Role> findByUid(String id);
}