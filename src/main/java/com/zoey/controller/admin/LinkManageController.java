package com.zoey.controller.admin;

import com.zoey.entity.Link;
import com.zoey.entity.PageBean;
import com.zoey.entity.Result;
import com.zoey.service.LinkService;
import com.zoey.util.JsonUtil;
import com.zoey.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/20.
 */

@Controller
@RequestMapping("/admin")
public class LinkManageController {

    @Autowired
    private LinkService linkService;

    @RequestMapping("/link/list")
    public void listLink(Integer page, Integer rows, HttpServletResponse response){
        List<Link> linkList=linkService.listLink();
        int total=linkList.size();
        HashMap<String,Object> result=new HashMap<String, Object>();
        result.put("rows",linkList);
        result.put("total",total);
        ResponseUtil.write(response, JsonUtil.getJsonFromObject(result));
    }

    @RequestMapping("/link/save")
    public void saveLink(Link link,HttpServletResponse response){
        int resultNums=0;
        if(link.getLinkId()==null){
            resultNums=linkService.addLink(link);
        }else {
            resultNums=linkService.updateLink(link);
        }
        if(resultNums>0){
            ResponseUtil.write(response, JsonUtil.getJsonFromObject(Result.ok()));
        }else {
            ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.error()));
        }
    }

    @RequestMapping("/link/delete")
    public void deleteLink(String ids,HttpServletResponse response){
        int resultNums=0;
        for(String linkId:ids.split(",")){
            resultNums+=linkService.deleteLink(Integer.parseInt(linkId));
        }
        if(resultNums>0){
            ResponseUtil.write(response, JsonUtil.getJsonFromObject(Result.ok()));
        }else {
            ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.error()));
        }
    }
}
