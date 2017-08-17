package com.zoey.controller;

import com.zoey.entity.User;
import com.zoey.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by LSY on 2017/8/16.
 */
@Controller
public class IndexController {

    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping("/login")
    public String login(User user){
        User result = userService.login(user);
        if(result==null){
            return "error";
        }else{
            return "error";
        }
    }

}
