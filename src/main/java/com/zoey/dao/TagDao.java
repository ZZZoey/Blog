package com.zoey.dao;

import com.zoey.entity.Tag;

import java.util.List;

/**
 * Created by LSY on 2017/8/17.
 */
public interface TagDao {

    List<Tag> listTag();

    Integer getTagCount();

}
