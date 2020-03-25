package com.itheima.web.shiro;

import com.itheima.utils.Encrypt;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.CredentialsMatcher;

/**
 * @author Adil
 * @date 2020-03-23 20:16:43
 */
public class CustomCredentialsMatcher implements CredentialsMatcher {
    /**
     * 密码比较器
     * 方法执行时机:当认证方法,通过用户名在数据库中成功查找到用户后执行
     * @param authenticationToken 浏览器中的用户名和密码
     * @param authenticationInfo 数据库中的用户名和密码
     * @return
     */
    @Override
    public boolean doCredentialsMatch(AuthenticationToken authenticationToken, AuthenticationInfo authenticationInfo) {
        //1.获取浏览器传入的密码(明文)
        UsernamePasswordToken usernamePasswordToken= (UsernamePasswordToken)authenticationToken;
        String password = new String(usernamePasswordToken.getPassword());
        //2.获取数据库中的密码(密文)
        String dbPassword = (String) authenticationInfo.getCredentials();
        //3.将明文进行加密后,再与密文进行比较(这里是md5加盐加密)
        String email = usernamePasswordToken.getUsername();
        String md5Password = Encrypt.md5(password, email);
        //如果相同返回true,登录成功,如果不同返回false,抛出异常
        return md5Password.equals(dbPassword);
    }
}
