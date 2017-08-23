package com.zoey.dao;

import com.zoey.entity.BlogTag;

import java.util.List;

public interface BlogTagDao {

    int addBlogTag(BlogTag blogTag);

    int deleteBlogTagByBlogId(int blogId);

    List<String> listTagsByBlogId(Integer blogId);
}
