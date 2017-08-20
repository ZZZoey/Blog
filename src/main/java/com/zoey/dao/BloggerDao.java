package com.zoey.dao;

import com.zoey.entity.Blogger;

/**
 * Created by LSY on 2017/8/19.
 */
public interface BloggerDao {

    Blogger login(Blogger blogger);

    int modifyPassword(Blogger blogger);
}
