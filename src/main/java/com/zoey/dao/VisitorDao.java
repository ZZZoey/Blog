package com.zoey.dao;

import com.zoey.entity.Visitor;

/**
 * Created by LSY on 2017/8/17.
 */
public interface VisitorDao {

    int getIpCount(String visitorIp);

    int addVisitor(String visitorIp);

    int getTotalCount();
}
