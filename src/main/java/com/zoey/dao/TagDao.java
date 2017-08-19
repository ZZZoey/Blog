package com.zoey.dao;

import com.zoey.entity.Tag;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by LSY on 2017/8/17.
 */
public interface TagDao {

    List<Tag> listTag(@Param("blogId") Integer blogId);

    Integer getTagCount();

}
