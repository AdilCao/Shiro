package com.itheima.service.system.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.itheima.dao.system.UserDao;
import com.itheima.domain.system.User;
import com.itheima.service.system.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

/**
 * <Description>
 *
 * @author hzb@itcast.cn
 * @version 1.0
 * @taskId: <br>
 * @createDate 2019/08/20 16:03
 * @see com.itheima.service.system.impl
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    /**
     * 查询分页用户数据
     * @param page
     * @param pageSize
     * @param companyId
     * @return
     */
    @Override
    public PageInfo findAll(Integer page, Integer pageSize, String companyId) {
        //分页
        PageHelper.startPage(page , pageSize);
        //查询所有
        List list = userDao.findAll(companyId);

        return new PageInfo(list);
    }

    /**
     * 根据企业id查询所有的用户信息
     * @param companyId
     * @return
     */
    @Override
    public List<User> findAll(String companyId) {
        return userDao.findAll(companyId);
    }

    /**
     * 保存用户信息
     * @param user
     */
    @Override
    public void save(User user) {
        user.setId(UUID.randomUUID().toString());
        userDao.save(user);
    }

    /**
     * 修改用户信息
     * @param user
     */
    @Override
    public void update(User user) {
        userDao.update(user);
    }

    /**
     * 根据id查询用户数据
     * @param id
     * @return
     */
    @Override
    public User findById(String id) {
        return  userDao.findById(id);
    }

    /**
     * 根据id删除数据
     * @param id
     */
    @Override
    public void delete(String id) {
        userDao.delete(id);
    }

    /**
     * 修改用户角色的权限信息
     * @param userid
     * @param roleIds
     */
    @Override
    public void updateUserRole(String userid, String roleIds) {
        //1.根据uid先删除原来的所有角色信息
        userDao.deleteUserRole(userid);
        //2.遍历添加数据
        if(!StringUtils.isBlank(roleIds)){
           String[] splitIds = roleIds.split(",");
           for (String roleId : splitIds) {
               userDao.saveUserRole(userid , roleId);
           }
        }
    }

    /**
     * 根据email 查询用户的数据
     * @param email
     * @return
     */
    @Override
    public User findByEmail(String email) {

        return userDao.findByEmail(email);
    }
}
