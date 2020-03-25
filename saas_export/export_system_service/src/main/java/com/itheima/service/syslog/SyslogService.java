package com.itheima.service.syslog;

import com.github.pagehelper.PageInfo;
import com.itheima.domain.syslog.SysLog;

public interface SyslogService {
    //查询全部-分页
    PageInfo findAll(String companyId , Integer page , Integer pageSize);

    //添加
    int save(SysLog log);
}
