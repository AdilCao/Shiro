package com.itheima.web.controller.system;

import com.github.pagehelper.PageInfo;
import com.itheima.domain.system.Module;
import com.itheima.service.system.ModuleService;
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
@RequestMapping("/system/module")
public class ModuleController extends BaseController {


    @Autowired
    private ModuleService moduleService;

    /**
     * 模块查询
     * @param page
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/list", name = "模块查询")
    public String list(@RequestParam(defaultValue = "1") Integer page , @RequestParam(defaultValue = "5")  Integer pageSize){

        //分页查询
        PageInfo pageInfo = moduleService.findAll(page, pageSize);
        request.setAttribute("page" , pageInfo);
        return "system/module/module-list";
    }

    /***
     * 跳转添加模块页面
     * @return
     */
    @RequestMapping(value = "/toAdd" , name = "跳转添加模块页面")
    public String toAdd(){

        //查询上级模块的信息
        List<Module> moduleList = moduleService.findAll();
        request.setAttribute("menus" , moduleList);

        return "system/module/module-add";
    }

    /**
     * 保存或修改模块
     * @return
     */
    @RequestMapping(value = "/edit" ,name = "保存或修改模块")
    public String edit(Module module){

        //保存和修改
        if(StringUtils.isBlank(module.getId())){
            moduleService.save(module);
        }else{
            moduleService.update(module);
        }


        return "redirect:/system/module/list.do";
    }

    /**
     * 跳转模块修改页面
     * @return
     */
    @RequestMapping(value = "/toUpdate" , name = "跳转模块修改页面")
    public String toUpdate(String id ){
        //1.查询模块的信息
        Module module = moduleService.findById(id);
        request.setAttribute("module" , module);
        //2.查询所有模块的信息
        //查询上级模块的信息
        List<Module> moduleList = moduleService.findAll();
        request.setAttribute("menus" , moduleList);

        return "system/module/module-update";
    }

    /**
     * 根据id删除模块
     * @param id
     * @return
     */
    @RequestMapping(value = "/delete" , name = "根据id删除模块")
    public String delete(String id ){
        moduleService.delete(id);
        return "redirect:/system/module/list.do";
    }
}
