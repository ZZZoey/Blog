package com.zoey.service;

import com.zoey.entity.Log;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/17.
 */
public interface LogService {

    List<Log> listLog(HashMap<String,Object> param);

    int addLog(Log log);

    int updateLog(Log log);

    int deleteLog(int logId);
}
