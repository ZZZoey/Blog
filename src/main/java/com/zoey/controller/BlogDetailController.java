package com.zoey.controller;

import com.zoey.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by LSY on 2017/8/19.
 */

@Controller
public class BlogDetailController {

    @Autowired
    private BlogService blogService;

    @RequestMapping("/blogDetail")
    public String getBlog(int blogId, Model model){
        model.addAttribute("blog",blogService.getBlog(blogId));
        return "blogDetail";
    }
}
