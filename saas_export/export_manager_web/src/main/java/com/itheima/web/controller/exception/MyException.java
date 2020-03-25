package com.itheima.web.controller.exception;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@Component
public class MyException implements HandlerExceptionResolver {
    @Override
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {

        ModelAndView mv = new ModelAndView();
        //逻辑视图: 跟视图解析器匹配的
        //物理视图: 绝对路径 forward: redirect:
        mv.setViewName("error");
        mv.addObject("errorMsg" , "对不起,您此次操作有误,请联系管理员");
        /* ex.getMessage() 异常信息*/
        mv.addObject("msg" , ex.getMessage());
        return mv;
    }
}
