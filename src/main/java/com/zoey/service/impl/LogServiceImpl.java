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
    public List<Log> listLog(HashMap<String,Object> param) {
        return logDao.listLog(param);
    }

    public int addLog(Log log) {
        return logDao.addLog(log);
    }

    public int updateLog(Log log) {
        return logDao.updateLog(log);
    }

    public int deleteLog(int logId) {
        return logDao.deleteLog(logId);
    }
}
