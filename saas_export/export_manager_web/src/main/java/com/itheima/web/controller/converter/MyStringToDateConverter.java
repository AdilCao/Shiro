package com.itheima.web.controller.converter;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/*Converter 转换器*/
public class MyStringToDateConverter implements Converter<String, Date> {
    /**
     * 参数: 浏览器传输的日期
     * 返回值: 转换后的日期
     * @param source 源 源数据
     * @return
     */
    @Override
    public Date convert(String source) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        Date date = null;
        try {
            date = dateFormat.parse(source);
        } catch (ParseException e) {
            System.out.println("日期转换异常");
        }
        return date;
    }
}
