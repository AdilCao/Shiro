package com.itheima.service.system.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.itheima.dao.system.DeptDao;
import com.itheima.domain.system.Dept;
import com.itheima.service.system.DeptService;
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
public class DeptServiceImpl implements DeptService {
    @Autowired
    private DeptDao deptDao;

    /**
     * 查询分页部门数据
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
        List list = deptDao.findAll(companyId);

        return new PageInfo(list);
    }

    /**
     * 根据企业id查询所有的部门信息
     * @param companyId
     * @return
     */
    @Override
    public List<Dept> findAll(String companyId) {
        return deptDao.findAll(companyId);
    }

    /**
     * 保存部门信息
     * @param dept
     */
    @Override
    public void save(Dept dept) {
        dept.setId(UUID.randomUUID().toString());
        deptDao.save(dept);
    }

    /**
     * 修改部门信息
     * @param dept
     */
    @Override
    public void update(Dept dept) {
        deptDao.update(dept);
    }

    /**
     * 根据id查询部门数据
     * @param id
     * @return
     */
    @Override
    public Dept findById(String id) {
        return  deptDao.findById(id);
    }

    /**
     * 根据id删除数据
     * @param id
     */
    @Override
    public void delete(String id) {
        deptDao.delete(id);
    }
}
