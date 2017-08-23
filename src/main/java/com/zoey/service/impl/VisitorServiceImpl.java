package com.zoey.service.impl;

import com.zoey.dao.VisitorDao;
import com.zoey.entity.Visitor;
import com.zoey.service.VisitorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("visitorService")
public class VisitorServiceImpl implements VisitorService {

    @Autowired
    private VisitorDao visitorDao;

    public int getIpCount(String visitorIp) {
        return visitorDao.getIpCount(visitorIp);
    }

    public int addVisitor(String visitorIp) {
        return visitorDao.addVisitor(visitorIp);
    }

    public int getTotalCount() {
        return visitorDao.getTotalCount();
    }
}
