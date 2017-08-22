package com.zoey.controller.admin;

import com.zoey.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;

/**
 * Created by LSY on 2017/8/21.
 */
@Controller
@RequestMapping("/admin")
public class WriteBlogController {

    @Autowired
    private TypeService typeService;

    @RequestMapping("/writeBlog")
    public String writeBlog(Model model){
        model.addAttribute("typeComboList",typeService.typeComboList(new HashMap<String, Object>()));
        return "admin/writeBlog";
    }
}
