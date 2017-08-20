package com.zoey.service;

import com.zoey.entity.Link;

import java.util.List;

/**
 * Created by LSY on 2017/8/17.
 */
public interface LinkService {

    List<Link> listLink();

    int addLink(Link link);

    int updateLink(Link link);

    int deleteLink(int linkId);

}
