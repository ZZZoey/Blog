package com.zoey.service.impl;

import com.zoey.dao.BlogDao;
import com.zoey.entity.Blog;
import com.zoey.entity.FilingDate;
import com.zoey.entity.PageBean;
import com.zoey.service.BlogService;
import com.zoey.service.CommentService;
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

    public List<Blog> listBlogWithCommentCount(HashMap<String, Object> param) {
        List<Blog> blogList = blogDao.listBlog(param);
        for(Blog blog:blogList){
            int commentNum=commentService.getCommentCountByBlogId(blog.getBlogId());
            blog.setCommentNum(commentNum);
        }
        return blogList;

    }

    public List<Blog> listBlog(HashMap<String, Object> param) {
        return blogDao.listBlog(param);
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
}
