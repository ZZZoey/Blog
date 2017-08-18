package com.zoey.service.impl;
/**
 * Created by LSY on 2017/8/17.
 */

import com.zoey.entity.*;
import com.zoey.service.BlogService;
import com.zoey.service.LinkService;
import com.zoey.service.LogService;
import com.zoey.service.TagService;
import com.zoey.util.JsonUtil;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.HashMap;
import java.util.List;

@Component
public class InitComponent implements ServletContextListener,ApplicationContextAware {


    private static ApplicationContext applicationContext;


    public void contextInitialized(ServletContextEvent servletContextEvent) {
        ServletContext application = servletContextEvent.getServletContext();

        BlogService blogService=(BlogService) applicationContext.getBean("blogService");
        LinkService linkService=(LinkService) applicationContext.getBean("linkService");
        LogService logService=(LogService) applicationContext.getBean("logService");
        TagService tagService=(TagService) applicationContext.getBean("tagService");

        HashMap<String,Object> recommendParam=new HashMap<String,Object>();
        recommendParam.put("recommend",true);
        recommendParam.put("start",0);
        recommendParam.put("rows",3);
        List<Blog> recommendBlogList = blogService.listBlog(recommendParam);
        application.setAttribute("recommendBlogList",recommendBlogList);

        HashMap<String,Object> hotParam=new HashMap<String, Object>();
        hotParam.put("readNum",true);
        hotParam.put("start",0);
        hotParam.put("rows",3);
        List<Blog> hotBlogList = blogService.listBlog(hotParam);
        application.setAttribute("hotBlogList",hotBlogList);

        List<FilingDate> filingDateList = blogService.listFilingDate();
        application.setAttribute("filingDateList",filingDateList);

        List<Link> linkList = linkService.listLink();
        application.setAttribute("linkList",linkList);

        List<Log> logList = logService.listLog();
        application.setAttribute("logList",logList);

        List<Tag> tagList = tagService.listTag();
        application.setAttribute("tagList", JsonUtil.getJsonFromObject(tagList));

        int blogCount=blogService.getBlogCount(new HashMap<String, Object>());
        application.setAttribute("blogCount",blogCount);

        int tagCount=tagService.getTagCount();
        application.setAttribute("tagCount",tagCount);

    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }

    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext=applicationContext;
    }
}
