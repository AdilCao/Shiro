package com.itheima.service.system.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.itheima.dao.system.RoleDao;
import com.itheima.domain.system.Role;
import com.itheima.service.system.RoleService;
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
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleDao roleDao;

    /**
     * 查询分页角色数据
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
        List list = roleDao.findAll(companyId);

        return new PageInfo(list);
    }

    /**
     * 根据企业id查询所有的角色信息
     * @param companyId
     * @return
     */
    @Override
    public List<Role> findAll(String companyId) {
        return roleDao.findAll(companyId);
    }

    /**
     * 保存角色信息
     * @param role
     */
    @Override
    public void save(Role role) {
        role.setId(UUID.randomUUID().toString());

        roleDao.save(role);
    }

    /**
     * 修改角色信息
     * @param role
     */
    @Override
    public void update(Role role) {
        roleDao.update(role);
    }

    /**
     * 根据id查询角色数据
     * @param id
     * @return
     */
    @Override
    public Role findById(String id) {
        return  roleDao.findById(id);
    }

    /**
     * 根据id删除数据
     * @param id
     */
    @Override
    public void delete(String id) {
        roleDao.delete(id);
    }

    /**
     * 修改角色的权限数据
     * roleid: 4028a1c34ec2e5c8014ec2ebf8430001
     * moduleIds: 2,201,202,203,204,205,206,207,208,3,301,302
     * @param roleid
     * @param moduleIds
     */
    @Override
    public void updateRoleModule(String roleid, String moduleIds) {
        //1.先将数据库原本的数据删除
        roleDao.deleteRoleModuleByRoleId(roleid);
        //2.添加新的权限即可  role_id  module_id
        //2.1 字符串切割
        String[] splitModuleIds = moduleIds.split(",");
        //2.2 遍历循环添加数据
        for (String moduleId : splitModuleIds) {
            roleDao.insertRoleModule(roleid , moduleId);
        }
    }

    /**
     * 根据用户的id查询 角色的信息
     * @param id
     * @return
     */
    @Override
    public List<Role> findByUid(String id) {
        return  roleDao.findByUid(id);
    }
}
