package com.itheima.web.controller.system;

import com.github.pagehelper.PageInfo;
import com.itheima.domain.system.Dept;
import com.itheima.domain.system.Role;
import com.itheima.domain.system.User;
import com.itheima.service.system.DeptService;
import com.itheima.service.system.RoleService;
import com.itheima.service.system.UserService;
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
@RequestMapping("/system/user")
public class UserController extends BaseController {


    @Autowired
    private UserService userService;

    /**
     * 用户查询
     * @param page
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/list", name = "用户查询")
    public String list(@RequestParam(defaultValue = "1") Integer page , @RequestParam(defaultValue = "5")  Integer pageSize){

        //查询分页数据
        PageInfo pageInfo = userService.findAll(page, pageSize, super.companyId);
        request.setAttribute("page" , pageInfo);
        return "system/user/user-list";
    }


    @Autowired
    private DeptService deptService;
    /***
     * 跳转添加用户页面
     * @return
     */
    @RequestMapping(value = "/toAdd" , name = "跳转添加用户页面")
    public String toAdd(){
        //查询所有的部门数据
        List<Dept> deptList = deptService.findAll(super.companyId);
        request.setAttribute("deptList" , deptList);
        return "system/user/user-add";
    }

    /**
     * 保存或修改用户
     * @return
     */
    @RequestMapping(value = "/edit" ,name = "保存或修改用户")
    public String edit(User user){
        //赋值企业数据
        user.setCompanyId( super.companyId );
        user.setCompanyName(super.companyName);
        if(StringUtils.isBlank(user.getId())){
            userService.save(user);
        }else{
            userService.update(user);
        }
        return "redirect:/system/user/list.do";
    }

    /**
     * 跳转企业修改页面
     * @return
     */
    @RequestMapping(value = "/toUpdate" , name = "跳转企业修改页面")
    public String toUpdate(String id ){
        //获得用户数据
        User user = userService.findById(id);
        request.setAttribute("user" , user);

        //获得部门数据
        List<Dept> deptList = deptService.findAll(super.companyId);
        request.setAttribute("deptList" , deptList);
        return "system/user/user-update";
    }

    /**
     * 根据id删除用户
     * @param id
     * @return
     */
    @RequestMapping(value = "/delete" , name = "根据id删除用户")
    public String delete(String id ){
        userService.delete(id);
        return "redirect:/system/user/list.do";
    }

    @Autowired
    private RoleService roleService;
    /**
     * 根据角色id查询角色的数据
     * @param id
     * @return
     */
    @RequestMapping(value = "/roleList" , name = "根据角色id查询角色的数据")
    public String roleList(String id){
        //1.查询当前用户的信息
        User user = userService.findById(id);
        request.setAttribute("user" , user);

        //2.查询出所有的角色列表信息
        List<Role> roleList = roleService.findAll(super.companyId);
        request.setAttribute("roleList" , roleList);

        //3.查询出该用户所有的角色列表信息
        List<Role> userRoleList  = roleService.findByUid( user.getId() );

        String userRoleStr = "";
        //拼凑一个id的字符串
        for (Role role : userRoleList) {
            userRoleStr += role.getId() + ",";
        }

        //当前用户所拥有的角色id 字符串
        request.setAttribute("userRoleStr" , userRoleStr);
        return "system/user/user-role";
    }

    /**
     * 修改用户角色的权限信息
     * @return
     */
    @RequestMapping(value = "/changeRole" , name = "修改用户角色的权限信息")
    public String changeRole(String userid ,String roleIds){// String [] roleIds
        //System.out.println(userid);
        //System.out.println(Arrays.toString(roleIds));
        //System.out.println(roleIds);
        userService.updateUserRole(userid , roleIds);

        return "redirect:/system/user/list.do";
    }

}
