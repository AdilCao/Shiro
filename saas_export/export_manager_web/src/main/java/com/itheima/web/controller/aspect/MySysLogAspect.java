package com.itheima.web.controller.aspect;

import com.itheima.domain.syslog.SysLog;
import com.itheima.domain.system.User;
import com.itheima.service.syslog.SyslogService;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Method;
import java.util.Date;

@Component //当前的类是一个ioc容器的实体类
@Aspect//当前类是一个切面类 = 切点(每一次正在执行的方法)+增强
public class MySysLogAspect {

    @Autowired
    private SyslogService syslogService;

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private HttpSession session;

    //对controller下的每一个方法都进行增强
    @Around("execution(* com.itheima.web.controller.*.*.*(..))")
    public Object around(ProceedingJoinPoint pjp) throws Throwable {
        Object o = null;

        //开始记录日志
        SysLog sysLog = new SysLog();
        //开始封装对象
        User loginUser = (User)session.getAttribute("loginUser");
        if(loginUser!=null){
            //userName;//操作的人
            sysLog.setUserName( loginUser.getUserName() );
            //companyId;//公司
            sysLog.setCompanyName( loginUser.getCompanyName() );
            //companyName;//公司名称
            sysLog.setCompanyId( loginUser.getCompanyId() );
        }
        //time; //操作时间
        sysLog.setTime(new Date());

        //ip; //远程主机 访问人的机器的ip地址  remote远程  addr 地址
        String remoteAddr = request.getRemoteAddr();
        sysLog.setIp(remoteAddr);


        // 获得方法的签名对象
        MethodSignature methodSignature = (MethodSignature)pjp.getSignature();
        //通过签名对象可以获得方法对象
        Method method = methodSignature.getMethod();
        //method;//操作方法 操作方法的英文名称
        sysLog.setMethod(  method.getName() );

        //action;//操作方法的名称  操作方法的中文名称
        boolean flag = method.isAnnotationPresent(RequestMapping.class);
        if(flag){//true 表示有RequestMapping注解
            //获得注解
            RequestMapping annotation = method.getAnnotation(RequestMapping.class);
            //注解获得属性 注解不需要get   属性名称()即可
            String name = annotation.name();
            sysLog.setAction(name);
        }


        //保存数据库
        syslogService.save(sysLog);
        //保存日志
        //放行执行service
        o = pjp.proceed();
        //放行
        return o;
    }


    /**
     *
     *  //对controller下的每一个方法都进行增强
     *     @Around("execution(* com.itheima.web.controller.*.*.*(..))")
     *     public Object around(ProceedingJoinPoint pjp) throws Throwable {
     *         Object o = null;
     *         System.out.println("执行了切面类");
     *         o = pjp.proceed();
     *         //放行
     *         return o;
     *     }
     */
}
