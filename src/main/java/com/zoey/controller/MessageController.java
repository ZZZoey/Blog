package com.zoey.controller;

import com.zoey.entity.PageBean;
import com.zoey.service.CommentService;
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
public class MessageController {

    private Integer pageSize=7;

    @Autowired
    private CommentService commentService;




    @RequestMapping("/message")
    public String comment(String page,Model model){
        if(StringUtils.isEmpty(page)){
            page="1";
        }
        HashMap<String,Object> param=new HashMap<String, Object>();
        PageBean pageBean=new PageBean(Integer.parseInt(page),pageSize);
        param.put("start",pageBean.getStart());
        param.put("rows",pageBean.getPageSize());
        model.addAttribute("commentList",commentService.listComment(param));
        model.addAttribute("pageNation",commentService.genPageNation(pageBean,"message.html?"));
        return "message";
    }
}
