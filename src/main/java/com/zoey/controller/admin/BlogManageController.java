package com.zoey.controller.admin;

import com.zoey.entity.Blog;
import com.zoey.entity.PageBean;
import com.zoey.entity.Result;
import com.zoey.service.BlogService;
import com.zoey.service.CommentService;
import com.zoey.service.TagService;
import com.zoey.service.TypeService;
import com.zoey.util.JsonUtil;
import com.zoey.util.ResponseUtil;
import com.zoey.util.StringUtil;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/21.
 */

@Controller
@RequestMapping("/admin")
public class BlogManageController {

    @Autowired
    private BlogService blogService;

    @Autowired
    private TagService tagService;

    @Autowired
    private TypeService typeService;

    @Autowired
    private CommentService commentService;

    @RequestMapping("/blog/list")
    public void listBlog(Integer page, Integer rows,String title,Integer typeId,HttpServletResponse response){
        if(!StringUtils.isEmpty(title)){
            title=StringUtil.formatSqlLike(title);
        }
        PageBean pageBean=new PageBean(page,rows);
        HashMap<String,Object> param=new HashMap<String, Object>();
        param.put("start",pageBean.getStart());
        param.put("rows",pageBean.getPageSize());
        param.put("s_title",title);
        param.put("typeId",typeId);
        List<Blog> blogList = blogService.listBlog(param);
        HashMap<String,Object> tagParam=new HashMap<String, Object>();
        for (Blog blog : blogList) {
            tagParam.put("blogId",blog.getBlogId());
            blog.setTagList(tagService.listTag(tagParam));
            blog.setType(typeService.getTypeById(blog.getTypeId()));
        }
        int total=blogService.getBlogCount(param);
        HashMap<String,Object> result=new HashMap<String, Object>();
        result.put("rows",blogList);
        result.put("total",total);
        ResponseUtil.write(response, JsonUtil.getJsonFromObject(result));
    }

    @RequestMapping("/blog/delete")
    public void deleteBlog(String ids,HttpServletResponse response){
        int resultNums=0;
        for (String blogId: ids.split(",")) {
            commentService.deleteCommentByBlogId(Integer.parseInt(blogId));
            resultNums+=blogService.deleteBlog(Integer.parseInt(blogId));
        }
        if(resultNums>0){
            ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.ok()));
        }else {
            ResponseUtil.write(response,JsonUtil.getJsonFromObject(Result.error()));
        }
    }

    /*@RequestMapping("/save")
    public String save(Blog blog,HttpServletResponse response)throws Exception{
        int resultTotal=0; // 操作的记录条数
        if(blog.getBlogId()==null){
            resultTotal=blogService.add(blog);
            blogService.addTags();
        }else{
            resultTotal=blogService.update(blog);
        }
        JSONObject result=new JSONObject();
        if(resultTotal>0){
            result.put("success", true);
        }else{
            result.put("success", false);
        }
        ResponseUtil.write(response, result);
        return null;
    }*/

}
