package com.zoey.controller;

import com.zoey.entity.PageBean;
import com.zoey.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;

/**
 * Created by LSY on 2017/8/18.
 */
@Controller
public class StudyController {

    @Autowired
    private BlogService blogService;

    private static Integer studyTypeId=1;
    private static String studyTargetUrl="study.html";
    private static Integer pageSize=4;

    @RequestMapping("/study")
    public String study(String page,Model model){
        if(StringUtils.isEmpty(page)){
            page="1";
        }
        HashMap<String,Object> param=new HashMap<String, Object>();
        PageBean pageBean=new PageBean(Integer.parseInt(page),pageSize);
        param.put("typeId",studyTypeId);
        param.put("start",pageBean.getStart());
        param.put("rows",pageBean.getPageSize());
        model.addAttribute("blogList",blogService.listBlog(param));
        model.addAttribute("pageNation", blogService.genPageNation(pageBean,studyTargetUrl+"?",param));
        return "list";
    }

}
