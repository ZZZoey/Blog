package com.zoey.service.impl;

import com.zoey.dao.BlogTagDao;
import com.zoey.entity.BlogTag;
import com.zoey.service.BlogTagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("blogTagService")
public class BlogTagServiceImpl implements BlogTagService {

    @Autowired
    private BlogTagDao blogTagDao;

    public int saveBlogTag(BlogTag blogTag) {
        return blogTagDao.addBlogTag(blogTag);
    }

    public int deleteBlogTagByBlogId(int blogId) {
        return blogTagDao.deleteBlogTagByBlogId(blogId);
    }

    public List<String> listTagsByBlogId(Integer blogId) {
        return blogTagDao.listTagsByBlogId(blogId);
    }
}
