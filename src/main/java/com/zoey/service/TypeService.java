package com.zoey.service;

import com.zoey.entity.PageBean;
import com.zoey.entity.Type;

import java.util.List;

/**
 * Created by LSY on 2017/8/19.
 */

public interface TypeService {

    List<Type> listType(PageBean pageBean);

    Integer getTypeCount();

    int addType(Type type);

    int updateType(Type type);

    int deleteType(int typeId);
}
