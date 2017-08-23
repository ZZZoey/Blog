package com.zoey.service;

import com.zoey.entity.Tag;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/18.
 */
public interface TagService {

    List<Tag> listTag(HashMap<String,Object> param);

    Integer getTagCount();

    int addTag(Tag tag);

    int updateTag(Tag tag);

    int deleteTag(int tagId);

    Tag getTagByTagName(String tagName);
}
