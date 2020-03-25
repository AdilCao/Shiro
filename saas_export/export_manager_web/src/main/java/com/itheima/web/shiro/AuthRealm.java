package com.itheima.web.shiro;

import com.itheima.domain.system.Module;
import com.itheima.domain.system.User;
import com.itheima.service.system.ModuleService;
import com.itheima.service.system.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.List;

/**
 * @author Adil
 * @date 2020-03-23 20:16:19
 */
public class AuthRealm extends AuthorizingRealm {
    @Autowired
    private UserService userService;
    @Autowired
    private ModuleService moduleService;
    /**
     * 认证
     * 方法执行时机:subject.login,即调用登录方法的时候,自动执行认证方法
     * 根据邮件去数据库中查找对应用户,判断该用户是否存在
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        //强转成AuthenticationToken的实现类,通过实现类获取前端传入的用户名和密码
        UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken) authenticationToken;
        String email = usernamePasswordToken.getUsername();
        //根据邮箱去数据库中查找对应的用户
        User user = userService.findByEmail(email);
        if (user == null) {
            return null;//用户为空,Shiro抛出异常
        }
        //public SimpleAuthenticationInfo(Object principal, Object credentials, String realmName) realmName域名称(唯一标识)只要保证存在唯一性,任意定义
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(user, user.getPassword(), this.getName());
        return authenticationInfo;
    }

    /**
     * 授权
     * 验证登录的用户是否具有某些权限
     * 方法执行时机:当前端访问路径在shiro配置文件中的过滤器链中有定义时执行
     *
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        System.out.println("执行授权方法......");
        //1.获取用户对象
        User user = (User) principalCollection.getPrimaryPrincipal();
        //2.查询用户所具有的模块信息集合
        List<Module> moduleList = moduleService.findByUid(user.getId());
        HashSet<String> perms = new HashSet<>();
        for (Module module : moduleList) {
            perms.add(module.getName());
        }
        //3.构造返回值,并将具有所有模块名称的set集合返回
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        simpleAuthorizationInfo.setStringPermissions(perms);
        return simpleAuthorizationInfo;
    }
}
