package com.zoey.controller.admin;

import com.zoey.entity.Comment;
import com.zoey.entity.PageBean;
import com.zoey.entity.Result;
import com.zoey.service.CommentService;
import com.zoey.util.JsonUtil;
import com.zoey.util.ResponseUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/20.
 */

@Controller
@RequestMapping("/admin")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @RequestMapping("/comment/list")
    public void listComment(Integer page, Integer rows, HttpServletResponse response){
        PageBean pageBean=new PageBean(page,rows);
        int total=commentService.getTotalCommentCount(true);
        HashMap<String,Object> param=new HashMap<String, Object>();
        param.put("start",pageBean.getStart());
        param.put("rows",pageBean.getPageSize());
        param.put("commentList",true);
        List<Comment> commentList = commentService.listCommentWithBlog(param);
        HashMap<String,Object> result=new HashMap<String, Object>();
        result.put("rows",commentList);
        result.put("total",total);
        ResponseUtil.write(response, JsonUtil.getJsonFromObject(result));
    }

    @RequestMapping("/message/list")
    public void listMessage(Integer page, Integer rows, HttpServletResponse response){
        PageBean pageBean=new PageBean(page,rows);
        int total=commentService.getTotalCommentCount(false);
        HashMap<String,Object> param=new HashMap<String, Object>();
        param.put("start",pageBean.getStart());
        param.put("rows",pageBean.getPageSize());
        param.put("commentList",false);
        List<Comment> commentList = commentService.listCommentWithBlog(param);
        HashMap<String,Object> result=new HashMap<String, Object>();
        result.put("rows",commentList);
        result.put("total",total);
        ResponseUtil.write(response, JsonUtil.getJsonFromObject(result));
    }

    @RequestMapping("/comment/delete")
    public void deleteComment(String ids,HttpServletResponse response){
        int resultNums=0;
        for(String commentId:ids.split(",")){
            resultNums+=commentService.deleteComment(Integer.parseInt(commentId));
        }
        if(resultNums>0){
            ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.ok()));
        }else {
            ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.error()));
        }
    }
}
