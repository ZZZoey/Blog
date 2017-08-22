package com.zoey.controller.admin;

import com.zoey.entity.PageBean;
import com.zoey.entity.Result;
import com.zoey.entity.Type;
import com.zoey.service.BlogService;
import com.zoey.service.TypeService;
import com.zoey.util.JsonUtil;
import com.zoey.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/19.
 */

@Controller
@RequestMapping("/admin")
public class BlogTypeManageController {

    @Autowired
    private TypeService typeService;

    @Autowired
    private BlogService blogService;


    @RequestMapping("/blogType/list")
    public void listType(Integer page, Integer rows, HttpServletResponse response){
        PageBean pageBean=new PageBean(page,rows);
        List<Type> typeList=typeService.listType(pageBean);
        Integer total=typeService.getTypeCount();
        HashMap<String,Object> param=new HashMap<String, Object>();
        param.put("rows",typeList);
        param.put("total",total);
        ResponseUtil.write(response, JsonUtil.getJsonFromObject(param));
    }

    @RequestMapping("/blogType/save")
    public void saveType(Type type,HttpServletResponse response){
        int resultNums=0;
        if(type.getTypeId()==null){
            resultNums=typeService.addType(type);
        }else {
            type.setUpdateTime(new Date());
            resultNums=typeService.updateType(type);
        }
        if(resultNums>0){
            ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.ok()));
        }else{
            ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.error()));
        }
    }

    @RequestMapping("/blogType/delete")
    public void deleteType(String ids,HttpServletResponse response){
        int resultNums=0;
        for(String typeId:ids.split(",")){
            HashMap<String,Object> param=new HashMap<String, Object>();
            param.put("typeId",Integer.parseInt(typeId));
            int exist=blogService.getBlogCount(param);
            if(exist>0){
                ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.ok("删除失败，该博客类别下有博文")));
                return;
            }else{
                resultNums+=typeService.deleteType(Integer.parseInt(typeId));
            }
        }
        if(resultNums>0){
            ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.ok()));
        }else{
            ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.error()));
        }

    }

    @RequestMapping("/typeComboList")
    public void tagComboList(HttpServletResponse response){
        List<Type> listType=typeService.typeComboList(new HashMap<String, Object>());
        Type type=new Type();
        type.setName("请选择");
        listType.add(0,type);
        ResponseUtil.write(response,JsonUtil.getJsonFromObject(listType));
    }
}
