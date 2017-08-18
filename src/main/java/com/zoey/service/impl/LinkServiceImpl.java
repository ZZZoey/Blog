package com.zoey.service.impl;

import com.zoey.dao.LinkDao;
import com.zoey.entity.Link;
import com.zoey.service.LinkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * Created by LSY on 2017/8/17.
 */

@Service("linkService")
public class LinkServiceImpl implements LinkService {

    @Autowired
    private LinkDao linkDao;

    public List<Link> listLink() {

        return linkDao.listLink();
    }
}
