package com.zoey.service.impl;

import com.zoey.dao.TagDao;
import com.zoey.entity.Tag;
import com.zoey.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by LSY on 2017/8/18.
 */

@Service("tagService")
public class TagServiceImpl implements TagService {

    @Autowired
    private TagDao tagDao;

    public List<Tag> listTag(Integer blogId) {
        return tagDao.listTag(blogId);
    }

    public Integer getTagCount() {
        return tagDao.getTagCount();
    }
}
