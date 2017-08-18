package com.zoey.controller;

import com.zoey.entity.Blog;
import com.zoey.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/16.
 */
@Controller
public class IndexController {

    @Autowired
    private BlogService blogService;

    @RequestMapping("/index")
    public String goIndex(Model model){
        HashMap<String,Object> param=new HashMap<String, Object>();
        param.put("start",0);
        param.put("rows",4);
        List<Blog> blogList = blogService.listBlogWithCommentCount(param);
        model.addAttribute("blogList",blogList);
        return "index";
    }


}
