package com.itheima.web.controller.login;


import com.itheima.domain.system.Module;
import com.itheima.domain.system.User;
import com.itheima.service.system.ModuleService;
import com.itheima.service.system.UserService;
import com.itheima.web.controller.BaseController;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class LoginController extends BaseController {

    @Autowired
    private UserService userService;

    @Autowired
    private ModuleService moduleService ;
    /**
     * 登录方法
     * Shiro只要登录不成功,就会抛出异常
     * @param email
     * @param password
     * @return
     */
	@RequestMapping("/login")
	public String login(String email,String password) {
        try {
            //1.获得Subject主体
            Subject subject = SecurityUtils.getSubject();
            //2.调用Subject的login方法,此方法需要传入AuthenticationToken,但它是一个接口,所以new一个其实现类UsernamePasswordToken
            UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(email,password);
            //调用Shiro的登录方法的同时,会自动调用Realm域中的认证方法
            subject.login(usernamePasswordToken);
            //3.从安全管理器中获得登录信息,因为"用户"可能是不同类型,所以返回值类型定义为Object,这里我们进行强转
            User loginUser = (User)subject.getPrincipal();
            //4.将用户存储到Session中
            session.setAttribute("loginUser",loginUser);
            //5.查找该用户所具有的权限模块
            List<Module> moduleList = moduleService.findByUid(loginUser.getId());
            session.setAttribute("modules",moduleList);
            //6.登录成功,跳转到主页面
            return "home/main";
        } catch (AuthenticationException e) {
            request.setAttribute("error","用户名或密码错误");
            return "forward:/login.jsp";
        }
    }

    @RequestMapping("/home")
    public String home(){
	    return "home/home";
    }
}
