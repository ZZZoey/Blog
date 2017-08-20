package com.zoey.service;

import com.zoey.entity.Blogger;

/**
 * Created by LSY on 2017/8/19.
 */
public interface BloggerService {

    Blogger login(Blogger blogger);

    int modifyPassword(Blogger blogger);

}
