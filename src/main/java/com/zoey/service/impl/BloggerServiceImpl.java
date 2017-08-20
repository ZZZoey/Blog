package com.zoey.service.impl;

import com.zoey.dao.BloggerDao;
import com.zoey.entity.Blogger;
import com.zoey.service.BloggerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by LSY on 2017/8/19.
 */

@Service("blogerService")
public class BloggerServiceImpl implements BloggerService {

    @Autowired
    private BloggerDao bloggerDao;

    public Blogger login(Blogger blogger) {
        return bloggerDao.login(blogger);
    }

    public int modifyPassword(Blogger blogger) {
        return bloggerDao.modifyPassword(blogger);
    }
}
