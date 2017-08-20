package com.zoey.controller.admin;

import com.zoey.entity.PageBean;
import com.zoey.entity.Result;
import com.zoey.entity.Tag;
import com.zoey.service.BlogService;
import com.zoey.service.TagService;
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
public class TagManageController {

    @Autowired
    private TagService tagService;

    @Autowired
    private BlogService blogService;

    @RequestMapping("/tag/list")
    public void listTag(Integer page, Integer rows, HttpServletResponse response){
        PageBean pageBean=new PageBean(page,rows);
        HashMap<String,Object> param=new HashMap<String, Object>();
        param.put("start",pageBean.getStart());
        param.put("rows",pageBean.getPageSize());
        List<Tag> tagList=tagService.listTag(param);
        int total=tagService.getTagCount();
        HashMap<String,Object> result=new HashMap<String, Object>();
        result.put("rows",tagList);
        result.put("total",total);
        ResponseUtil.write(response, JsonUtil.getJsonFromObject(result));
    }

    @RequestMapping("/tag/save")
    public void saveTag(Tag tag,HttpServletResponse response){
        int resultNums=0;
        if(tag.getTagId()==null){
            resultNums=tagService.addTag(tag);
        }else {
            resultNums=tagService.updateTag(tag);
        }
        if(resultNums>0){
            ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.ok()));
        }else {
            ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.error()));
        }
    }

    @RequestMapping("/tag/delete")
    public void deleteTag(String ids,HttpServletResponse response){
        int resultNums=0;
        for (String tagId:ids.split(",")){
            HashMap<String,Object> param=new HashMap<String, Object>();
            param.put("tagId",tagId);
            int exist=blogService.getBlogCount(param);
            if(exist>0){
                ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.ok("删除失败，该标签下有博文。")));
            }else {
                resultNums+=tagService.deleteTag(Integer.parseInt(tagId));
                if(resultNums>0){
                    ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.ok()));
                }else {
                    ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.error()));
                }
            }
        }
    }
}
