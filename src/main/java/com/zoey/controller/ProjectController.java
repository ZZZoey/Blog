package com.zoey.controller;

import com.zoey.entity.PageBean;
import com.zoey.service.BlogService;
import com.zoey.service.ProjectService;
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
public class ProjectController {

    private Integer pageSize=10;
    private static String targetUrl="project_content.html";


    @Autowired
    private ProjectService projectService;

    @Autowired
    private BlogService blogService;

    @RequestMapping("/project")
    public String project(Model model){
        model.addAttribute("projectList",projectService.listProject(new HashMap<String, Object>()));
        return "project";
    }

    @RequestMapping("/project_content")
    public String projectContent(String page,String projectId,Model model){
        if(StringUtils.isEmpty(page)){
            page="1";
        }
        HashMap<String,Object> param=new HashMap<String, Object>();
        PageBean pageBean=new PageBean(Integer.parseInt(page),pageSize);
        param.put("start",pageBean.getStart());
        param.put("rows",pageBean.getPageSize());
        param.put("projectId",projectId);
        model.addAttribute("blogList",blogService.listBlog(param));
        model.addAttribute("pageNation",blogService.genPageNation(pageBean,targetUrl+"?projectId="+projectId,param));
        return "project_content";
    }
}
