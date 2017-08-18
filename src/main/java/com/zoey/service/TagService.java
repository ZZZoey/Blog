package com.zoey.service;

import com.zoey.entity.Tag;

import java.util.List;

/**
 * Created by LSY on 2017/8/18.
 */
public interface TagService {

    List<Tag> listTag();

    Integer getTagCount();
}
