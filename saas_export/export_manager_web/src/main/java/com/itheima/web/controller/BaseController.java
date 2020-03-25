package com.itheima.web.controller;

import com.itheima.domain.system.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BaseController {
    @Autowired
    protected HttpServletRequest request;
    @Autowired
    protected HttpSession session;
    @Autowired
    protected HttpServletResponse response;//报错不管 idea支持问题

    protected String companyId;// 必须从登陆的用户中得到
    protected String companyName;// 必须从登陆的用户中得到

    /**
     * @ModelAttribute 携带ModelAttribute 这个注解的方法 将会在所有方法之前执行
     */
    @ModelAttribute
    public void before(){
        //System.out.println("xxxxx");
        //1.获得当前登陆的用户
        User loginUser = (User)session.getAttribute("loginUser");
        if(loginUser!=null){
            //2.获得用户所属的公司id
            //3.赋值给成员变量
            companyName=loginUser.getCompanyName();
            companyId=loginUser.getCompanyId();
        }
    }


}
