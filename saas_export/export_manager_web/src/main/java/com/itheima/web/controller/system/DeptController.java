package com.itheima.web.controller.system;

import com.github.pagehelper.PageInfo;
import com.itheima.domain.system.Dept;
import com.itheima.service.system.DeptService;
import com.itheima.web.controller.BaseController;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * <Description>
 *
 * @author hzb@itcast.cn
 * @version 1.0
 * @taskId: <br>
 * @createDate 2019/08/20 15:53
 * @see com.itheima.web.controller.system
 */
@Controller
@RequestMapping("/system/dept")
public class DeptController extends BaseController {


    @Autowired
    private DeptService deptService;

    /**
     * 部门查询
     * @param page
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/list", name = "部门查询")
    public String list(@RequestParam(defaultValue = "1") Integer page , @RequestParam(defaultValue = "5")  Integer pageSize){

        //分页
        PageInfo pageInfo = deptService.findAll(page , pageSize, super.companyId);
        //存入request域
        request.setAttribute("page" ,pageInfo);
        return "system/dept/dept-list";
    }

    /***
     * 跳转添加部门页面
     * @return
     */
    @RequestMapping(value = "/toAdd" , name = "跳转添加部门页面")
    public String toAdd(){
        //查询上级部门的名称
        List<Dept> deptList = deptService.findAll(super.companyId);
        request.setAttribute("deptList" , deptList);
        return "system/dept/dept-add";
    }

    /**
     * 保存或修改部门
     * @return
     */
    @RequestMapping(value = "/edit" ,name = "保存或修改部门")
    public String edit(Dept dept){

        //赋值企业数据
        dept.setCompanyId(super.companyId);
        dept.setCompanyName(super.companyName);
        if(StringUtils.isBlank(dept.getId())){
            deptService.save(dept);
        }else{
            deptService.update(dept);
        }

        return "redirect:/system/dept/list.do";
    }

    /**
     * 跳转企业修改页面
     * @return
     */
    @RequestMapping(value = "/toUpdate" , name = "跳转企业修改页面")
    public String toUpdate(String id ){
        //1.根据传入的id查询部门数据
        Dept dept = deptService.findById(id);
        request.setAttribute("dept" , dept);
        //2.查询上级部门
        List<Dept> deptList = deptService.findAll(super.companyId);
        request.setAttribute("deptList" , deptList);
        return "system/dept/dept-update";
    }

    /**
     * 根据id删除部门
     * @param id
     * @return
     */
    @RequestMapping(value = "/delete" , name = "根据id删除部门")
    public String delete(String id ){
        deptService.delete(id);
        return "redirect:/system/dept/list.do";
    }
}
