package com.zoey.service.impl;

import com.zoey.dao.BlogDao;
import com.zoey.entity.Blog;
import com.zoey.entity.FilingDate;
import com.zoey.entity.PageBean;
import com.zoey.service.BlogService;
import com.zoey.service.CommentService;
import com.zoey.service.TagService;
import com.zoey.service.TypeService;
import com.zoey.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/17.
 */
@Service("blogService")
public class BlogServiceImpl implements BlogService {

    @Autowired
    private BlogDao blogDao;

    @Autowired
    private CommentService commentService;

    @Autowired
    private TypeService typeService;

    @Autowired
    private TagService tagService;

    public int updateReadNum(int blogId) {
        return blogDao.updateReadNum(blogId);
    }

    public List<Blog> listBlogWithCommentCount(HashMap<String, Object> param) {
        List<Blog> blogList = blogDao.listBlog(param);
        for(Blog blog:blogList){
            int commentNum=commentService.getCommentCount(blog.getBlogId());
            blog.setCommentNum(commentNum);
        }
        return blogList;

    }

    public List<Blog> listBlog(HashMap<String, Object> param) {
        List<Blog> blogList = blogDao.listBlog(param);
        return blogList;

    }


    public List<FilingDate> listFilingDate() {
        return blogDao.listFilingDate();
    }

    public Integer getBlogCount(HashMap<String, Object> param) {
        return blogDao.getBlogCount(param);
    }

    public String genPageNation(PageBean pageBean,String targetUrl,HashMap<String,Object> param) {
        Integer blogCount = blogDao.getBlogCount(param);
        return PageUtil.genPageNation(pageBean,blogCount,targetUrl);
    }

    public Blog getBlog(int blogId) {
        Blog blog = blogDao.getBlog(blogId);
        HashMap<String,Object> param=new HashMap<String, Object>();
        param.put("blogId",blogId);
        blog.setCommentList(commentService.listComment(param));
        blog.setTagList(tagService.listTag(param));
        return blog;
    }

    public int deleteBlog(Integer blogId) {
        return blogDao.deleteBlog(blogId);
    }

    public int addBlog(Blog blog) {
        return blogDao.addBlog(blog);
    }

    public int updateBlog(Blog blog) {
        return blogDao.updateBlog(blog);
    }

}
