package com.zoey.service.impl;

import com.zoey.dao.LogDao;
import com.zoey.entity.Log;
import com.zoey.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/17.
 */

@Service("logService")
public class LogServiceImpl implements LogService {

    @Autowired
    private LogDao logDao;
    public List<Log> listLog() {
        return logDao.listLog();
    }
}
