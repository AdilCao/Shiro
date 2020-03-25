package com.itheima.web.controller.syslog;

import com.github.pagehelper.PageInfo;
import com.itheima.service.syslog.SyslogService;
import com.itheima.web.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * <Description>
 *
 * @author hzb@itcast.cn
 * @version 1.0
 * @taskId: <br>
 * @createDate 2019/08/23 17:50
 * @see com.itheima.web.controller.syslog
 */
@Controller
@RequestMapping("/system/log")
public class SyslogController extends BaseController {

    @Autowired
    private SyslogService syslogService;
    /**
     * 日志查询
     * @param page
     * @param pageSize
     * @return
     */
    @RequestMapping(value = "/list" , name = "日志查询")
    public String list(@RequestParam(defaultValue = "1") Integer page , @RequestParam(defaultValue = "10")  Integer pageSize){
        PageInfo pageInfo = syslogService.findAll(super.companyId , page , pageSize);
        request.setAttribute("page" , pageInfo);
        return "system/log/log-list";
    }
}
