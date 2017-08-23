package com.zoey.service.impl;

import com.zoey.dao.TagDao;
import com.zoey.entity.Tag;
import com.zoey.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/18.
 */

@Service("tagService")
public class TagServiceImpl implements TagService {

    @Autowired
    private TagDao tagDao;

    public List<Tag> listTag(HashMap<String,Object> param) {
        return tagDao.listTag(param);
    }

    public Integer getTagCount() {
        return tagDao.getTagCount();
    }

    public int addTag(Tag tag) {
        return tagDao.addTag(tag);
    }

    public int updateTag(Tag tag) {
        return tagDao.updateTag(tag);
    }

    public int deleteTag(int tagId) {
        return tagDao.deleteTag(tagId);
    }

    public Tag getTagByTagName(String tagName) {
        return tagDao.getTagByTagName(tagName);
    }

}
