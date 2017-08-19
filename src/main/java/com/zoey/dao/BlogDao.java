package com.zoey.dao;

import com.zoey.entity.Blog;
import com.zoey.entity.FilingDate;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/17.
 */
public interface BlogDao {

    List<Blog> listBlog(HashMap<String,Object> param);

    List<FilingDate> listFilingDate();

    Integer getBlogCount(HashMap<String,Object> param);

    Blog getBlog(@Param("blogId") int blogId);

}
