package com.zoey.controller;

import com.zoey.entity.Blog;
import com.zoey.entity.Comment;
import com.zoey.service.BlogService;
import com.zoey.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;

/**
 * Created by LSY on 2017/8/19.
 */

@Controller
public class BlogDetailController {

    @Autowired
    private BlogService blogService;

    @Autowired
    private CommentService commentService;

    @RequestMapping("/blogDetail")
    public String getBlog(int blogId, Model model){
        blogService.updateReadNum(blogId);
        Blog blog = blogService.getBlog(blogId);
        HashMap<String,Object> param=new HashMap<String, Object>();
        param.put("blogId",blogId);
        param.put("commentList",true);
        blog.setCommentList(commentService.listComment(param));
        model.addAttribute("blog", blog);
        return "blogDetail";
    }
}
