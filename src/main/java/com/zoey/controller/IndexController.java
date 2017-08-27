package com.zoey.controller;

import com.zoey.entity.PageBean;
import com.zoey.service.BlogService;
import com.zoey.service.VisitorService;
import com.zoey.util.IpUtil;
import com.zoey.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;

/**
 * Created by LSY on 2017/8/16.
 */
@Controller
public class IndexController {

    private Integer pageSize=9;
    private String tagTargetUrl="tag.html";
    private String filingDateTargetUrl="filingDate.html";
    private String searchTargetUrl="search.html";

    @Autowired
    private BlogService blogService;

    @Autowired
    private VisitorService visitorService;


    @RequestMapping("/index")
    public String goIndex(String page, Model model, HttpServletRequest request){
        String visitorIp= IpUtil.getIpAddress(request);
        if(visitorService.getIpCount(visitorIp)==0){
            visitorService.addVisitor(visitorIp);
            request.getSession().getServletContext().setAttribute("visitCount",visitorService.getTotalCount());
        }
        if(StringUtils.isEmpty(page)){
            page="1";
        }
        HashMap<String,Object> param=new HashMap<String, Object>();
        PageBean pageBean=new PageBean(Integer.parseInt(page),4);
        param.put("start",pageBean.getStart());
        param.put("rows",pageBean.getPageSize());
        model.addAttribute("blogList",blogService.listBlogWithCommentCount(param));
        model.addAttribute("pageNation",blogService.genPageNation(pageBean,"index.html?",param));
        return "index";
    }

    @RequestMapping("/tag")
    public String tag(String page, int tagId, Model model){
        if(StringUtils.isEmpty(page)){
            page="1";
        }
        HashMap<String,Object> param=new HashMap<String, Object>();
        PageBean pageBean=new PageBean(Integer.parseInt(page),pageSize);
        param.put("tagId",tagId);
        param.put("start",pageBean.getStart());
        param.put("rows",pageBean.getPageSize());
        model.addAttribute("blogList",blogService.listBlog(param));
        model.addAttribute("pageNation",blogService.genPageNation(pageBean,tagTargetUrl+"?tagId="+tagId,param));
        return "list";

    }

    @RequestMapping("/filingDate")
    public String filingDate(String page,String createTime, Model model){
        if(StringUtils.isEmpty(page)){
            page="1";
        }
        HashMap<String,Object> param=new HashMap<String, Object>();
        PageBean pageBean=new PageBean(Integer.parseInt(page),pageSize);
        param.put("createTime",createTime);
        param.put("start",pageBean.getStart());
        param.put("rows",pageBean.getPageSize());
        model.addAttribute("blogList",blogService.listBlog(param));
        model.addAttribute("pageNation",blogService.genPageNation(pageBean,filingDateTargetUrl+"?createTime="+createTime,param));
        return "list";

    }

    @RequestMapping("/search")
    public String search(String page,String s_title,Model model){
        if(StringUtils.isEmpty(page)){
            page="1";
        }
        HashMap<String,Object> param=new HashMap<String, Object>();
        PageBean pageBean=new PageBean(Integer.parseInt(page),pageSize);
        param.put("s_title", StringUtil.formatSqlLike(s_title));
        param.put("start",pageBean.getStart());
        param.put("rows",pageBean.getPageSize());
        model.addAttribute("blogList",blogService.listBlog(param));
        model.addAttribute("pageNation",blogService.genPageNation(pageBean,searchTargetUrl+"?s_title="+s_title,param));
        return "list";
    }


}
