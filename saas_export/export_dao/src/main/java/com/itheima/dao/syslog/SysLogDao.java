package com.itheima.dao.syslog;


import com.itheima.domain.syslog.SysLog;

import java.util.List;

public interface SysLogDao {
    //查询全部
    List<SysLog> findAll(String companyId);

    //添加
    int save(SysLog log);
}