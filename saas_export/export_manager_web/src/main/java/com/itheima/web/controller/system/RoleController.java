package com.itheima.web.controller.system;

import com.github.pagehelper.PageInfo;
import com.itheima.domain.system.Module;
import com.itheima.domain.system.Role;
import com.itheima.service.system.ModuleService;
import com.itheima.service.system.RoleService;
import com.itheima.web.controller.BaseController;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
@RequestMapping("/system/role")
public class RoleController extends BaseController {


    @Autowired
    private RoleService roleService;

    /**
     * 角色查询
     * @param page
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/list", name = "角色查询")
    public String list(@RequestParam(defaultValue = "1") Integer page , @RequestParam(defaultValue = "5")  Integer pageSize){

        //分页
        PageInfo pageInfo = roleService.findAll(page , pageSize, super.companyId);
        //存入request域
        request.setAttribute("page" ,pageInfo);
        return "system/role/role-list";
    }

    /***
     * 跳转添加角色页面
     * @return
     */
    @RequestMapping(value = "/toAdd" , name = "跳转添加角色页面")
    public String toAdd(){

        return "system/role/role-add";
    }

    /**
     * 保存或修改角色
     * @return
     */
    @RequestMapping(value = "/edit" ,name = "保存或修改角色")
    public String edit(Role role){

        //赋值企业数据
        role.setCompanyId(super.companyId);
        role.setCompanyName(super.companyName);
        if(StringUtils.isBlank(role.getId())){
            roleService.save(role);
        }else{
            roleService.update(role);
        }

        return "redirect:/system/role/list.do";
    }

    /**
     * 跳转角色修改页面
     * @return
     */
    @RequestMapping(value = "/toUpdate" , name = "跳转角色修改页面")
    public String toUpdate(String id ){
        //1.根据传入的id查询角色数据
        Role role = roleService.findById(id);
        request.setAttribute("role" , role);

        return "system/role/role-update";
    }

    /**
     * 根据id删除角色
     * @param id
     * @return
     */
    @RequestMapping(value = "/delete" , name = "根据id删除角色")
    public String delete(String id ){
        roleService.delete(id);
        return "redirect:/system/role/list.do";
    }

    /**
     * 跳转角色赋值权限的页面
     * @return
     */
    @RequestMapping(value = "/roleModule" , name = "跳转角色赋值权限的页面")
    public String roleModule(String roleid){
        //System.out.println(roleid);
        //1.根据roleid查询角色的信息
        Role role = roleService.findById(roleid);
        request.setAttribute("role" , role);

        //2.查询模块信息? -> 不行
        return "system/role/role-module";
    }

    @Autowired
    private ModuleService moduleService;
    /**
     * 初始化树结构
     * [
     *  { id:11, pId:1, name:"随意勾选 1-1", open:true , checked : checked},
     *  { id:111, pId:11, name:"随意勾选 1-1-1"},
     * ]
     * @return
     */
    @RequestMapping(value = "/initTree", name = "初始化树结构")
    @ResponseBody //携带该注解的方法 返回值自动转换成json
    public List<Map> initTree(String roleid){
        //List<Map>的数据来源-> 数据库  所有的模块信息
        List<Module> moduleList = moduleService.findAll();

        //根据当前角色的数据 查询当前角色所拥有的模块数据
        List<Module> roleModules =  moduleService.findByRoleId(roleid);

        //准备一个返回值 List<Map>
        List<Map> treeMap = new ArrayList<>();

        //将moduleList数据 转换成  List<Map>
        for (Module module : moduleList) {
            Map map = new HashMap();
            //数据部分 { id:11, pId:1, name:"随意勾选 1-1", open:true , checked : checked}
            map.put("id" , module.getId());
            map.put("pId" , module.getParentId()); //pId  的I 必须是大写的
            map.put("name" , module.getName());

            //[1,2,3,4,5]  包含了  1
            if(roleModules.contains(module)){
                map.put("checked" ,true);
            }

            //判断当前的角色是否具有某些权限 如果有 加上checked属性
            /*for (Module roleModule : roleModules) {//嵌套循环 每一次遍历的数据都进行一次判断
                if(module.getId().equals(roleModule.getId())){//如果遍历的当前id与角色所拥有模块信息一致 加上true
                    map.put("checked" ,true);
                }
            }*/


            //将数据放入map中
            treeMap.add(map);
        }
        return treeMap;
    }


    /**
     * 修改角色的权限数据
     * roleid: 4028a1c34ec2e5c8014ec2ebf8430001
     * moduleIds: 2,201,202,203,204,205,206,207,208,3,301,302
     * @return
     */
    @RequestMapping(value = "/updateRoleModule" ,name = "修改角色的权限数据")
    public String updateRoleModule(String roleid , String moduleIds){

        //1.删除数据 2.增加数据 必须有事务 controller层没有事务 只在service有事务
        //System.out.println(roleid);
        //System.out.println(moduleIds);
        roleService.updateRoleModule(roleid , moduleIds);
        //跳转页面
        return "redirect:/system/role/list.do";
    }
}
