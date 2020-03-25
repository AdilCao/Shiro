package com.itheima.service.system.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.itheima.dao.system.ModuleDao;
import com.itheima.domain.system.Module;
import com.itheima.domain.system.User;
import com.itheima.service.system.ModuleService;
import com.itheima.service.system.UserService;
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
public class ModuleServiceImpl implements ModuleService {
    @Autowired
    private ModuleDao moduleDao;

    /**
     * 查询分页模块数据
     * @param page
     * @param pageSize

     * @return
     */
    @Override
    public PageInfo findAll(Integer page, Integer pageSize ) {
        //分页
        PageHelper.startPage(page , pageSize);
        //查询所有
        List list = moduleDao.findAll();

        return new PageInfo(list);
    }

    /**
     * 根据查询所有的模块信息
     * @return
     */
    @Override
    public List<Module> findAll() {
        return moduleDao.findAll();
    }

    /**
     * 保存模块信息
     * @param module
     */
    @Override
    public void save(Module module) {
        module.setId(UUID.randomUUID().toString());

        moduleDao.save(module);
    }

    /**
     * 修改模块信息
     * @param module
     */
    @Override
    public void update(Module module) {
        moduleDao.update(module);
    }

    /**
     * 根据id查询模块数据
     * @param id
     * @return
     */
    @Override
    public Module findById(String id) {
        return  moduleDao.findById(id);
    }

    /**
     * 根据id删除数据
     * @param id
     */
    @Override
    public void delete(String id) {
        moduleDao.delete(id);
    }

    /**
     * 根据角色的id查询模块的信息
     * @param roleid
     * @return
     */
    @Override
    public List<Module> findByRoleId(String roleid) {
        return moduleDao.findByRoleId(roleid);
    }

    @Autowired
    private UserService userService;
    /**
     * 根据用户的id 查询 模块信息
     * 用户的dgree字段
     * 0作为内部控制，租户企业不能使用
     *     0-saas管理员
     *     1-企业管理员
     *     2-管理所有下属部门和人员
     *     3-管理本部门
     *     4-普通员工
     *
     *  模块表数据
     *  从属关系
     *   0：sass系统内部菜单
     *   1：租用企业菜单
     *  private String belong;
     *

     * @param uid
     * @return
     */
    @Override
    public List<Module> findByUid(String uid) {
        //登陆的用户数据
        User user = userService.findById(uid);
        List<Module> moduleList = null ;
        //判断用户的角色
        if(user.getDegree() == 0){//saas管理员
            moduleList =  moduleDao.findByBelong("0");
        }else if(user.getDegree() == 1){//企业管理员
            moduleList =  moduleDao.findByBelong("1");
        }else {//普通用户
            moduleList = moduleDao.findByUid(uid);
        }
        return moduleList;
    }
}
