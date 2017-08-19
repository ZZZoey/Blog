package com.zoey.service;

import com.zoey.entity.Blog;
import com.zoey.entity.FilingDate;
import com.zoey.entity.PageBean;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/17.
 */
public interface BlogService {

    List<Blog> listBlogWithCommentCount(HashMap<String,Object> param);

    List<Blog> listBlog(HashMap<String,Object> param);

    List<FilingDate> listFilingDate();

    Integer getBlogCount(HashMap<String,Object> param);

    String genPageNation(PageBean pageBean, String targetUrl, HashMap<String,Object> param);

    Blog getBlog(int blogId);
}
