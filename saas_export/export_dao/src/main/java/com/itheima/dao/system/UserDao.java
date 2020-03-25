package com.itheima.dao.system;


import com.itheima.domain.system.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface UserDao {

	//根据企业id查询全部
	List<User> findAll(String companyId);

	//根据id查询
    User findById(String userId);

	//根据id删除
	int delete(String userId);

	//保存
	int save(User user);

	//更新
	int update(User user);

	//根据userid删除用户的所有角色信息
    void deleteUserRole(String userid);

    //添加用户的角色信息
	void saveUserRole(@Param("userid") String userid,@Param("roleId") String roleId);

	//查询用户数据
	User findByEmail(String email);

}