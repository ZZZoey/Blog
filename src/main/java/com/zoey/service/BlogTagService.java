package com.zoey.service;

import com.zoey.entity.BlogTag;

import java.util.List;

public interface BlogTagService {

    int saveBlogTag(BlogTag blogTag);

    int deleteBlogTagByBlogId(int blogId);

    List<String> listTagsByBlogId(Integer blogId);
}
