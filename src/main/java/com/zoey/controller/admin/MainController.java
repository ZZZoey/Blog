package com.zoey.controller.admin;

import com.zoey.entity.*;
import com.zoey.service.*;
import com.zoey.util.JsonUtil;
import com.zoey.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.support.RequestContextUtils;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/20.
 */

@Controller
@RequestMapping("/admin")
public class MainController {

    @Autowired
    private BloggerService bloggerService;
    @Autowired
    private BlogService blogService;
    @Autowired
    private LinkService linkService;
    @Autowired
    private LogService logService;
    @Autowired
    private TagService tagService;
    @Autowired
    private CommentService commentService;

    @RequestMapping("/blogger/modifyPassword")
    public void modifyPassword(Blogger blogger, HttpServletResponse response){
        int resultNums=bloggerService.modifyPassword(blogger);
        if(resultNums>0){
            ResponseUtil.write(response, JsonUtil.getJsonFromObject(Result.ok()));
        }else {
            ResponseUtil.write(response, JsonUtil.getJsonFromObject(Result.error()));
        }
    }

    @RequestMapping("/system/refreshSystem")
    public void refreshSystem(HttpServletResponse response,HttpServletRequest request){
        ServletContext application= RequestContextUtils.getWebApplicationContext(request).getServletContext();

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

        List<Tag> tagList = tagService.listTag(null);
        application.setAttribute("tagList", JsonUtil.getJsonFromObject(tagList));

        int blogCount=blogService.getBlogCount(new HashMap<String, Object>());
        application.setAttribute("blogCount",blogCount);

        int tagCount=tagService.getTagCount();
        application.setAttribute("tagCount",tagCount);

        int commentCount=commentService.getTotalCommentCount(true);
        application.setAttribute("commentCount",commentCount);

        int messageCount=commentService.getTotalCommentCount(false);
        application.setAttribute("messageCount",messageCount);

        ResponseUtil.write(response, JsonUtil.getJsonFromObject(Result.ok()));
    }

    @RequestMapping("/blogger/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/login.jsp";
    }
}
