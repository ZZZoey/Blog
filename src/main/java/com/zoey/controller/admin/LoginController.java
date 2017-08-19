package com.zoey.controller.admin;

import com.zoey.entity.Blogger;
import com.zoey.service.BloggerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by LSY on 2017/8/19.
 */

@Controller
@RequestMapping("/blogger")
public class LoginController {

    @Autowired
    private BloggerService bloggerService;

    @RequestMapping("/login")
    public String login(Blogger blogger, Model model){

        Blogger result= bloggerService.login(blogger);
        if(result==null){
            model.addAttribute("errorInfo","用户名或密码错误！");
            model.addAttribute("blogger", blogger);
            return "login";
        }else {
            model.addAttribute("currentUser",result);
            return "admin/main";
        }

    }
}
