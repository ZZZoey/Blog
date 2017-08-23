package com.zoey.controller.admin;

import com.zoey.entity.Log;
import com.zoey.entity.PageBean;
import com.zoey.entity.Result;
import com.zoey.service.LogService;
import com.zoey.util.JsonUtil;
import com.zoey.util.ResponseUtil;
import com.zoey.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class LogController {

    @Autowired
    private LogService logService;

    @RequestMapping("/log/list")
    public void listLog(Integer page,Integer rows,HttpServletResponse response){
        PageBean pageBean=new PageBean(page,rows);
        HashMap<String,Object> param=new HashMap<String, Object>();
        param.put("start",pageBean.getStart());
        param.put("rows",pageBean.getPageSize());
        List<Log> logList=logService.listLog(param);
        int total=logList.size();
        HashMap<String,Object> result=new HashMap<String, Object>();
        result.put("rows",logList);
        result.put("total",total);
        ResponseUtil.write(response,JsonUtil.getJsonFromObject(result));
    }

    @RequestMapping("/log/save")
    public void saveLog(Log log, HttpServletResponse response){
        int resultNums=0;
        if (log.getLogId()==null){
            resultNums=logService.addLog(log);
        }else {
            resultNums=logService.updateLog(log);
        }
        if(resultNums>0){
            ResponseUtil.write(response, JsonUtil.getJsonFromObject(Result.ok()));
        }else {
            ResponseUtil.write(response, JsonUtil.getJsonFromObject(Result.error()));
        }
    }

    @RequestMapping("/log/delete")
    public void deleteLog(String ids,HttpServletResponse response){
        int resultNums=0;
        for(String logId : ids.split(",")){
            resultNums+=logService.deleteLog(Integer.parseInt(logId));
        }
        if(resultNums>0){
            ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.ok()));
        }else {
            ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.error()));
        }
    }
}
