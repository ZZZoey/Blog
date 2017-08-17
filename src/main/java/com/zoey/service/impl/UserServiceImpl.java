package com.zoey.service.impl;

import com.zoey.dao.UserDao;
import com.zoey.entity.User;
import com.zoey.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by LSY on 2017/8/16.
 */
@Service("userService")
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;

    public User login(User user) {
        return userDao.login(user);
    }

}
