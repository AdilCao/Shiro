package com.itheima.service.syslog.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.itheima.dao.syslog.SysLogDao;
import com.itheima.domain.syslog.SysLog;
import com.itheima.service.syslog.SyslogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

/**
 * <Description>
 *
 * @author hzb@itcast.cn
 * @version 1.0
 * @taskId: <br>
 * @createDate 2019/08/23 17:48
 * @see com.itheima.service.syslog.impl
 */
@Service
public class SyslogServiceImpl implements SyslogService {
    @Autowired
    private SysLogDao sysLogDao ;
    @Override
    public PageInfo findAll(String companyId, Integer page, Integer pageSize) {
        PageHelper.startPage( page , pageSize);
        List<SysLog> list = sysLogDao.findAll(companyId);
        return new PageInfo(list);
    }

    @Override
    public int save(SysLog log) {
        log.setId(UUID.randomUUID().toString());
        return sysLogDao.save(log);
    }
}
