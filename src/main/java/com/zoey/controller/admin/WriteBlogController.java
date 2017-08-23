package com.zoey.controller.admin;

import com.zoey.entity.Blog;
import com.zoey.entity.BlogTag;
import com.zoey.entity.Tag;
import com.zoey.service.*;
import com.zoey.util.DateUtil;
import com.zoey.util.ResponseUtil;
import com.zoey.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/21.
 */
@Controller
@RequestMapping("/admin")
public class WriteBlogController {

    @Autowired
    private TypeService typeService;

    @Autowired
    private ProjectService projectService;

    @Autowired
    private TagService tagService;


    @Autowired
    private BlogService blogService;

    @Autowired
    private BlogTagService blogTagService;

    @RequestMapping("/writeBlog")
    public String writeBlog(Integer blogId,Model model){
        if(blogId!=null){
            Blog blog = blogService.getBlog(blogId);
            List<String> tagsList=blogTagService.listTagsByBlogId(blogId);
            StringBuilder tags=new StringBuilder();
            for (String s : tagsList) {
                tags.append(s+",");
            }
            tags.delete(tags.length()-1,tags.length());
            blog.setTags(tags.toString());
            model.addAttribute("blog", blog);
        }

        model.addAttribute("typeComboList",typeService.typeComboList(new HashMap<String, Object>()));
        model.addAttribute("projectComboList",projectService.listProject(new HashMap<String, Object>()));
        return "admin/writeBlog";
    }

    @RequestMapping("/blog/save")
    public String save(Integer blogId,String title, String author, String summary, Integer typeId, Integer projectId, String tags, MultipartFile file, String content, Integer recommend,
                      HttpServletRequest request)throws Exception{
        int resultTotal=0;
        Blog blog=new Blog(blogId,title,summary,author,content,recommend==1?true:false,projectId,typeId);
        //上传添加封面
        String path = request.getSession().getServletContext().getRealPath("/");
        String fileName = file.getOriginalFilename();
        if(!StringUtils.isEmpty(fileName)){
            String imageName= DateUtil.getCurrentDateStr();
            blog.setCoverImage("/images/"+imageName+"."+fileName.split("\\.")[1]);
            String filePath=path+"/images/"+imageName+"."+fileName.split("\\.")[1];
            //把文件上传至path的路径
            File localFile = new File(filePath);
            file.transferTo(localFile);
        }


        if(blog.getBlogId()==null){
            resultTotal=blogService.addBlog(blog);
        }else{
            resultTotal=blogService.updateBlog(blog);
            blogTagService.deleteBlogTagByBlogId(blog.getBlogId());
        }
        //添加tag
        for (String tagName : tags.split(",")) {
            Tag tag=tagService.getTagByTagName(tagName);
            if(tag==null){
                tag=new Tag(tagName);
                tagService.addTag(tag);
            }
            //添加标签
            blogTagService.saveBlogTag(new BlogTag(blog.getBlogId(),tag.getTagId()));
        }

        return "redirect:/admin/blogManage.jsp";

    }

}
