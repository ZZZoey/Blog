package com.zoey.service;

import com.zoey.entity.Visitor;

public interface VisitorService {

    int getIpCount(String visitorIp);

    int addVisitor(String visitorIp);

    int getTotalCount();
}
